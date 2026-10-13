# Rate Limiting

Adafruit IO imposes a rate limit on all data modification APIs to prevent excessive load on the service. If a user performs too many data create, update, or delete actions in a short period of time then the system will start rejecting requests.

If you have a free Adafruit IO Account, the rate limit is **30 data points per minute**.

If you have [upgraded to an Adafruit IO Plus account](https://io.adafruit.com/plus), the base rate limit is  **60 data points per minute**.

***If you exceed this limit***, HTTP requests are rejected with a `429 Too Many Requests` response and a notice will be sent to the `{username}/throttle` MQTT topic. You can subscribe to the topic if you wish to know when the Adafruit IO rate limit has been exceeded for your user account. This limit applies to all **Data record modification** actions over the HTTP and MQTT APIs, so if you have multiple devices or clients publishing data, be sure to delay their updates enough that the total rate is below your account limit.

**One data record modification** is any action that creates, updates, or deletes a single Data record. When you send several records in one request (a group or batch create), each record counts as one action, and if there is not enough room left in your limit the whole request is rejected with `429` and no data is saved.

**A best practice is to only save or modify data within the hot part of your code loop.** You want to handle authentication and any other API requests (creating/getting feeds, etc) before you start your main code loop where you save data.

Repeatedly exceeding limits over MQTT can lead to a temporary ban. See the MQTT _Rate Limiting_ page for details.

We have general API throttles to ensure the API isn't being improperly used either by accident or for nefarious purposes. This throttle level is higher than any data rate limit throttles, but you may run into it if your code isn't optimized. One example would be if in the main loop of your code you are not only sending data, but also authenticating, retrieving all feeds, or anything else that doesn't involve saving or modifying data to a feed. In that scenario, you would be hitting the API 3x more times than necessary, and could get throttled, even if you're saving data within your allotted rate limit.

## HTTP Request Limits

Separately from the data rate, each API user (identified by IP address and API key) is limited to **300 HTTP requests per minute** across the API. Some endpoints have stricter limits:

Endpoint | Limit
-------- | -----
Feed sharing (`/feeds/{feed_key}/shares`) and coupon checks | 10 requests per minute
`POST` to tokens, feedback, and social reports | 2 requests per minute per IP address

Requests over a limit receive a `429 Too Many Requests` response. For the overall and per-endpoint request limits the body is plain text (`Retry later`); for data rate limits it is JSON (see _Errors_). Wait a minute and retry.

## Plan Limits

 | Free | IO+
-- | ---- | ---
Feeds | 10 | Effectively unlimited
Dashboards | 5 | Effectively unlimited
Groups | 5 | Effectively unlimited
WipperSnapper devices | 2 | Effectively unlimited
Data rate | 30 data points per minute | 60 data points per minute
Data storage | 30 days | 60 days

IO+ users can purchase boosts for a higher data rate and longer storage.

Storage is counted from the time data is uploaded, not from a record's `created_at` value, so records uploaded with a `created_at` in the past are kept for the full storage period from upload.

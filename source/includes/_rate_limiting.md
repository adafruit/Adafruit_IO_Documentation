# Rate Limiting

Adafruit IO imposes a rate limit on all data modification APIs to prevent excessive load on the service. If a user performs too many data create, update, or delete actions in a short period of time then the system will start rejecting requests.

If you have a free Adafruit IO Account, the rate limit is **30 data points per minute**.

If you have [upgraded to an Adafruit IO Plus account](https://io.adafruit.com/plus), the base rate limit is  **60 data points per minute**.

***If you exceed this limit***, a notice will be sent to the `{username}/throttle` MQTT topic. You can subscribe to the topic if you wish to know when the Adafruit IO rate limit has been exceeded for your user account. This limit applies to all **Data record modification** actions over the HTTP and MQTT APIs, so if you have multiple devices or clients publishing data, be sure to delay their updates enough that the total rate is below your account limit.

**One data record modification** is any action that creates, updates, or deletes a single Data record.

**A best practice is to only save or modify data within the hot part of your code loop.** You want to handle authentication and any other API requests (creating/getting feeds, etc) before you start your main code loop where you save data.

We have general API throttles to ensure the API isn't being improperly used either by accident or for nefarious purposes. This throttle level is higher than any data rate limit throttles, but you may run into it if your code isn't optimized. One example would be if in the main loop of your code you are not only sending data, but also authenticating, retrieving all feeds, or anything else that doesn't involve saving or modifying data to a feed. In that scenario, you would be hitting the API 3x more times than necessary, and could get throttled, even if you're saving data within your allotted rate limit.

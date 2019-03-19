# Rate Limiting

Adafruit IO imposes a rate limit on all data modification APIs to prevent excessive load on the service. If a user performs too many data create, update, or delete actions in a short period of time then the system will start rejecting requests.

If you have a free Adafruit IO Account, the rate limit is **30 data points per minute**.

If you have an [upgraded Adafruit IO Plus account](https://io.adafruit.com/plus), the base rate limit is  **60 data points per minute**.

If you exceed this limit, a notice will be sent to the `{username}/throttle` MQTT topic. You can subscribe to the topic if you wish to know when the Adafruit IO rate limit has been exceeded for your user account. This limit applies to all actions over the HTTP and MQTT APIs, so if you have multiple devices or clients publishing data, be sure to delay their updates enough that the total rate is below your account limit.

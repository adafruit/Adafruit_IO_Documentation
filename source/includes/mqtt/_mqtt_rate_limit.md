# Rate Limit

Adafruit IO's MQTT server imposes a rate limit to prevent excessive load on the service.  If a user performs too many publish actions in a short period of time then some of the publish requests might be rejected.

If you have a **free Adafruit IO Account, the rate limit is 30 data points per minute**.

If you have an [upgraded Adafruit IO Plus account](https://io.adafruit.com/plus), the rate limit is  _60_ data points per minute.


If you exceed this limit, a notice will be sent to the `your-adafruit-io-username/throttle` topic. You can subscribe to the topic if you wish to know when the Adafruit IO rate limit has been exceeded for your user account.

This limit applies to all connections so _if you have multiple devices or clients publishing data_, be sure to delay their updates enough that the total rate is below 2 requests/second.
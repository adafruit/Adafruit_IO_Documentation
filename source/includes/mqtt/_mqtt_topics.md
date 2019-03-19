# MQTT Topics

Adafruit IO's MQTT API exposes feed data using special topics.  You can publish a new value for a feed to its topic, or you can subscribe to a feed's topic to be notified when the feed has a new value.

## MQTT Feed Topic Format
`Your-Adafruit-IO-Username`/**feeds**/`Feed-Key`

## MQTT Group Topic Format
`Your-Adafruit-IO-Username`/**groups**/`Feed-Key`

## Small Feed Names
_Using an embedded system and need to conserve space?_ Use the `/f/` or `/g/` topic formats:

* `Your-Adafruit-IO-Username`/**g**/`Feed-Key`

* `Your-Adafruit-IO-Username`/**f**/`Feed-Key`

## Using a MQTT Wildcard
You can also subscribe to the parent 'feeds' path to be notified when any owned feed changes using MQTT's `#` wildcard character.  For example, the user could subscribe to either:

* `Your-Adafruit-IO-Username`/**feeds**/`#`
* `Your-Adafruit-IO-Username`/**f**/`#`

Once subscribed to the path above any change to a feed owned by `Your-Adafruit-IO-Username` will be sent to the MQTT client.  The topic will specify the feed that was updated, and the payload will have the new value.

*Be aware the MQTT server sends feed updates on all possible paths for a specific feed*. For example, subscribing to `IO-Username/f/#` and publishing to `IO-Username/f/photocell-one` would produce messages from: `IO-Username/f/photocell-one`, `IO-Username/f/photocell-one/json`, and `IO-Username/f/photocell-one/csv`; each referring to the same updated value.  To reduce noise,_ make sure to grab the specific topic of the feed_ `/` format you're interested in and change your subscription to that.

If you'd like to avoid the formatted feeds ("/json" and "/csv" topics) _but still see all the feeds you're publishing to_, you can use MQTT's + wildcard in place of #. In this case, subscribing to `IO-Username/f/**+**` would produce output on `IO-Username/f/photocell-one`, but _not_ `IO-Username/f/photocell-one/json`.


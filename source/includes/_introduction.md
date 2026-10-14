# Adafruit IO HTTP API

The Adafruit IO HTTP API provides access to your Adafruit IO data from any programming language or hardware environment that can speak HTTP. The easiest way to get started is with an [Adafruit Learning Guide](https://learn.adafruit.com/series/adafruit-io-basics) and a simple Internet of Things capable device like the [Feather Huzzah](https://www.adafruit.com/product/2821) or a more complicated one like the [PyPortal](https://www.adafruit.com/product/4116).

## API Versions

Adafruit IO has more than one version of its HTTP API. A request is routed to a version by its path or by its `Accept` header:

* **v2** is selected by the `/api/v2/` path prefix, or by sending `Accept: application/vnd.adafruit.io.v2`.
* **v1** is selected by the `/api/v1/` path prefix, or by sending `Accept: application/vnd.adafruit.io.v1`.
* A request with no version in the path or header (for example `/api/{username}/feeds`) is handled by v1, which is the default.

**v2 is the documented and supported API, and everything in these docs uses it.** v1 and unversioned paths still work so older clients keep running, but they are deprecated and are not documented here. Always use `https://io.adafruit.com/api/v2/` for new projects.

## About the API Docs

This API documentation is hosted on GitHub Pages and is available [on GitHub](https://github.com/adafruit/Adafruit_IO_Documentation).

**Spotted something incorrect or broken?** [Click here to file an issue on the repository](https://github.com/adafruit/Adafruit_IO_Documentation/issues/new)

For questions or comments [visit the Adafruit IO Feedback page](https://io.adafruit.com/feedback) or the [#help-with-adafruit-io channel on the Adafruit Discord server](https://discord.gg/adafruit).

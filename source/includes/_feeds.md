# Feeds
The feeds endpoint allows you to view and interact with 
Adafruit IO Feeds.

## All feeds for current user

```shell
$ curl -H "X-AIO-Key: {io_key}" https://io.adafruit.com/api/v2/{io_username}/feeds/
```

```python
# Adafruit IO Python
feeds = aio.feeds()

# Not implemented in Adafruit IO CircuitPython
```

```cpp
Not implemented in Adafruit IO Arduino.
```

> Response Sample:

```json
[
  {
    "id": 0,
    "name": "string",
    "key": "string",
    "group": {
      "property1": {
        "id": 0,
        "name": "string",
        "description": "string",
        "created_at": "string",
        "updated_at": "string"
      },
      "property2": {
        "id": 0,
        "name": "string",
        "description": "string",
        "created_at": "string",
        "updated_at": "string"
      }
    },
    "groups": [
      {
        "id": 0,
        "name": "string",
        "description": "string",
        "created_at": "string",
        "updated_at": "string"
      }
    ],
    "description": "string",
    "details": {
      "shared_with": [
        {}
      ],
      "data": {
        "first": {
          "property1": {
            "id": "string",
            "value": "string",
            "feed_id": 0,
            "group_id": 0,
            "expiration": "string",
            "lat": 0,
            "lon": 0,
            "ele": 0,
            "completed_at": "string",
            "created_at": "string",
            "updated_at": "string",
            "created_epoch": 0
          },
          "property2": {
            "id": "string",
            "value": "string",
            "feed_id": 0,
            "group_id": 0,
            "expiration": "string",
            "lat": 0,
            "lon": 0,
            "ele": 0,
            "completed_at": "string",
            "created_at": "string",
            "updated_at": "string",
            "created_epoch": 0
          }
        },
        "last": {
          "property1": {
            "id": "string",
            "value": "string",
            "feed_id": 0,
            "group_id": 0,
            "expiration": "string",
            "lat": 0,
            "lon": 0,
            "ele": 0,
            "completed_at": "string",
            "created_at": "string",
            "updated_at": "string",
            "created_epoch": 0
          },
          "property2": {
            "id": "string",
            "value": "string",
            "feed_id": 0,
            "group_id": 0,
            "expiration": "string",
            "lat": 0,
            "lon": 0,
            "ele": 0,
            "completed_at": "string",
            "created_at": "string",
            "updated_at": "string",
            "created_epoch": 0
          }
        },
        "count": 0
      }
    },
    "unit_type": "string",
    "unit_symbol": "string",
    "history": true,
    "visibility": "private",
    "license": "string",
    "enabled": true,
    "last_value": "string",
    "status": "string",
    "status_notify": true,
    "status_timeout": 0,
    "created_at": "string",
    "updated_at": "string"
  }
]
```

The Feeds endpoint returns information about the user's feeds. The response includes the latest value of each feed, and other metadata about each feed.

### HTTP Request

`POST https://io.adafruit.com/api/v2/{username}/feeds`


### Path Parameters

Parameter |   Type  |  Required | Description
--------- | ------- | --------- | -----------
username | string | Yes | a valid username string

## Create new feed

```shell
$ curl -H "X-AIO-Key: {io_key}" https://io.adafruit.com/api/v2/{io_username}/feeds/{feed_name}
```

```cpp
AdafruitIO_Feed *newFeed = io.feed("newfeed");
```

```python
# Adafruit IO Python
new_feed = Feed(name="newfeed")
aio.create_feed(new_feed)

# Adafruit IO CircuitPython
new_feed = io.create_new_feed('newfeed')
```

> Response Sample:

```json
[
 {
  "id": 0,
  "name": "string",
  "key": "string",
  "group": {
    "property1": {
      "id": 0,
      "name": "string",
      "description": "string",
      "created_at": "string",
      "updated_at": "string"
    },
    "property2": {
      "id": 0,
      "name": "string",
      "description": "string",
      "created_at": "string",
      "updated_at": "string"
    }
  },
  "groups": [
    {
      "id": 0,
      "name": "string",
      "description": "string",
      "created_at": "string",
      "updated_at": "string"
    }
  ],
  "description": "string",
  "details": {
    "shared_with": [
      {}
    ],
    "data": {
      "first": {
        "property1": {
          "id": "string",
          "value": "string",
          "feed_id": 0,
          "group_id": 0,
          "expiration": "string",
          "lat": 0,
          "lon": 0,
          "ele": 0,
          "completed_at": "string",
          "created_at": "string",
          "updated_at": "string",
          "created_epoch": 0
        },
        "property2": {
          "id": "string",
          "value": "string",
          "feed_id": 0,
          "group_id": 0,
          "expiration": "string",
          "lat": 0,
          "lon": 0,
          "ele": 0,
          "completed_at": "string",
          "created_at": "string",
          "updated_at": "string",
          "created_epoch": 0
        }
      },
      "last": {
        "property1": {
          "id": "string",
          "value": "string",
          "feed_id": 0,
          "group_id": 0,
          "expiration": "string",
          "lat": 0,
          "lon": 0,
          "ele": 0,
          "completed_at": "string",
          "created_at": "string",
          "updated_at": "string",
          "created_epoch": 0
        },
        "property2": {
          "id": "string",
          "value": "string",
          "feed_id": 0,
          "group_id": 0,
          "expiration": "string",
          "lat": 0,
          "lon": 0,
          "ele": 0,
          "completed_at": "string",
          "created_at": "string",
          "updated_at": "string",
          "created_epoch": 0
        }
      },
      "count": 0
    }
  },
  "unit_type": "string",
  "unit_symbol": "string",
  "history": true,
  "visibility": "private",
  "license": "string",
  "enabled": true,
  "last_value": "string",
  "status": "string",
  "status_notify": true,
  "status_timeout": 0,
  "created_at": "string",
  "updated_at": "string"
  }
]
```

This endpoint creates a new Adafruit IO Feed.

### HTTP Request

`POST https://io.adafruit.com/api/v2/{username}/feeds`


### Path Parameters

Parameter |   Type  |  Required | Description
--------- | ------- | --------- | -----------
username | string | Yes | a valid username string

### Query Parameters
Parameter |   Type  |
--------- | ------- |
group_key | string |

### Request Body
Parameter |   Type  |
--------- | ------- |
name | string
key | string
description | string
license | string

## Get feed by feed key

```shell
$ curl -H "X-AIO-Key: {io_key}" https://io.adafruit.com/api/v2/{username}/feeds/{feed_key}
```

```cpp
AdafruitIO_Feed *newFeed = io.feed("FEED_KEY");
```

```python
# Adafruit IO Python
new_feed = aio.feeds('feedkey')

# Adafruit IO CircuitPython
new_feed = io.get_feed('feedkey')
```

> Response Sample:

```json
[
 {
  "id": 0,
  "name": "string",
  "key": "string",
  "group": {
    "property1": {
      "id": 0,
      "name": "string",
      "description": "string",
      "created_at": "string",
      "updated_at": "string"
    },
    "property2": {
      "id": 0,
      "name": "string",
      "description": "string",
      "created_at": "string",
      "updated_at": "string"
    }
  },
  "groups": [
    {
      "id": 0,
      "name": "string",
      "description": "string",
      "created_at": "string",
      "updated_at": "string"
    }
  ],
  "description": "string",
  "details": {
    "shared_with": [
      {}
    ],
    "data": {
      "first": {
        "property1": {
          "id": "string",
          "value": "string",
          "feed_id": 0,
          "group_id": 0,
          "expiration": "string",
          "lat": 0,
          "lon": 0,
          "ele": 0,
          "completed_at": "string",
          "created_at": "string",
          "updated_at": "string",
          "created_epoch": 0
        },
        "property2": {
          "id": "string",
          "value": "string",
          "feed_id": 0,
          "group_id": 0,
          "expiration": "string",
          "lat": 0,
          "lon": 0,
          "ele": 0,
          "completed_at": "string",
          "created_at": "string",
          "updated_at": "string",
          "created_epoch": 0
        }
      },
      "last": {
        "property1": {
          "id": "string",
          "value": "string",
          "feed_id": 0,
          "group_id": 0,
          "expiration": "string",
          "lat": 0,
          "lon": 0,
          "ele": 0,
          "completed_at": "string",
          "created_at": "string",
          "updated_at": "string",
          "created_epoch": 0
        },
        "property2": {
          "id": "string",
          "value": "string",
          "feed_id": 0,
          "group_id": 0,
          "expiration": "string",
          "lat": 0,
          "lon": 0,
          "ele": 0,
          "completed_at": "string",
          "created_at": "string",
          "updated_at": "string",
          "created_epoch": 0
        }
      },
      "count": 0
    }
  },
  "unit_type": "string",
  "unit_symbol": "string",
  "history": true,
  "visibility": "private",
  "license": "string",
  "enabled": true,
  "last_value": "string",
  "status": "string",
  "status_notify": true,
  "status_timeout": 0,
  "created_at": "string",
  "updated_at": "string"
}
]
```

Returns feed based on the feed key

### HTTP Request

`POST https://io.adafruit.com/api/v2/{username}/feeds/{feed_key}`

### Path Parameters

Parameter |   Type  |  Required | Description
--------- | ------- | --------- | -----------
username | string | Yes | a valid username string
feed_key | string | Yes | a valid feed key
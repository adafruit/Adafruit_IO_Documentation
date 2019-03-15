# Feeds
The feeds endpoint allows you to view and interact with 
Adafruit IO Feeds.

## All feeds for current user

The Feeds endpoint returns information about the user's feeds. The response includes the latest value of each feed, and other metadata about each feed.


### HTTP Request

`GET http://example.com/api/kittens`

### Query Parameters

Parameter |   Type  |  Required | Description
--------- | ------- | --------- | -----------
username | string | Yes | a valid username string

```shell
$ curl -H "X-AIO-Key: {io_key}" https://io.adafruit.com/api/v2/{io_username}/feeds
```

```arduino
Not implemented in Adafruit IO Arduino.
```

```CircuitPython
Not implemented in Adafruit IO CircuitPython.
```

```python
feeds = aio.feeds()
print(feeds)
```

```ruby

```

```javascript

```

```go

```

> JSON response example:

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
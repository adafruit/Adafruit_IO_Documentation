# Data
The data endpoint allows you to view and interact with 
Adafruit IO data.

## Get all data for the given feed

```shell
$ curl -H "X-AIO-Key: {io_key}" https://io.adafruit.com/api/v2/{username}/feeds/{feed_key}/data
```

```cpp
// Not implemented in Adafruit IO Arduino
```

```python
# Not implemented in Adafruit IO Python

# Not implemented in Adafruit IO CircuitPython
```

> Response Sample:

```json
[
  {
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
]
```

### HTTP Request

`GET /{username}/feeds/{feed_key}/data`

### Path Parameters

Parameter |   Type  |  Required | Description
--------- | ------- | --------- | -----------
username  | string  |   Yes     | a valid username string
feed_key  | string  |   Yes     | a valid feed key

### Query Parameters

Parameter   |       Type          | Description 
---------   |  -----------------  | -----------
start_time  |  string <date-time> | Start time for filtering, returns records created after given time.
key         |  string <date-time> | End time for filtering, returns records created before give time.
description |       integer       | Limit the number of records returned.
include     |       string        | List of Data record fields to include in response as comma separated list. Acceptable values are: `value`, `lat`, `lon`, `ele`, `id`, and `created_at`.

## Create new Data

```shell
$ curl -H "X-AIO-Key: {io_key}" https://io.adafruit.com/api/v2/{username}/feeds/{feed_key}/data
```

```cpp
// Create new data record on feed `feedName` with value 42
feedName->save(42);

// Create new data record on feed `feedName with value 42, and location metadata
feedName->save(42, latValue, lonValue, eleValue);
```

```python
# Adafruit IO Python
metadata = {'lat': 40.726190,
            'lon': -74.005334,
            'ele': -6,
            'created_at': None}
io.send_data(location_feed.key, data_value, metadata)

# Adafruit IO CircuitPython
metadata = {'lat': 40.726190,
            'lon': -74.005334,
            'ele': -6,
            'created_at': None}
io.send_data(location_feed['key'], data_value, metadata)
```

> Response Sample:

```json
[
  {
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
]
```

Create new data records on the given feed.

NOTE: when feed history is on, data `value` size is limited to 1KB, when feed history is turned off data value size is limited to 100KB.

### HTTP Request

`POST /{username}/feeds/{feed_key}/data`

### Path Parameters

Parameter |   Type  |  Required | Description
--------- | ------- | --------- | -----------
username  | string  |   Yes     | a valid username string
feed_key  | string  |   Yes     | a valid feed key

### Request Body
Data record including a `value` field (required) and optionally including: `lat`, `lon`,`ele` (latitude, longitude, and elevation values), and `created_at` (a date/time string).

Parameter   |   Type  
---------   | ------- 
value       | string  
created_at  | string `<dateTime>`
lat         | string 
lon         | string 
ele         | string
epoch       | number 

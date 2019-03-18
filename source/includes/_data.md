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
# Send new data with a value of 42
$ curl -F 'value=42' -H "X-AIO-Key: {io_key}" https://io.adafruit.com/api/v2/{username}/feeds/{feed_key}/data

# Send new data with a value of 42 and include optional location metadata
curl -H "Content-Type: application/json" -d '{"value": 42, "lat": 23.1, "lon": "-73.3"}'  -H "X-AIO-Key: {io_key}" https://io.adafruit.com/api/v2/{username}/feeds/{feed_key}/data
```

```cpp
// Send data to Feed `feedName` with value of 42
feedName->save(42);

// Send data to Feed `feedName` with value 42 and include optional location metadata
feedName->save(42, latValue, lonValue, eleValue);
```

```python
# Adafruit IO Python

# Send data to feed feed_name with a value of 42
io.send_data(location_feed.key, '42')

# Send data to feed `feed_name` with a value of 42 and include optional location metadata
metadata = {'lat': 40.726190,
            'lon': -74.005334,
            'ele': -6,
            'created_at': None}
io.send_data(feed_name.key, data_value, metadata)

# Adafruit IO CircuitPython
# Send data to feed feed_name with a value of 42
io.send_data(location_feed['key'], '42')

# Send data to feed `feed_name` with a value of 42 and include optional location metadata
metadata = {'lat': 40.726190,
            'lon': -74.005334,
            'ele': -6,
            'created_at': None}
io.send_data(feed_name['key'], data_value, metadata)
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

## Chart data for current feed

```shell
$ curl -H "X-AIO-Key: {io_key}" https://io.adafruit.com/api/v2/{username}/feeds/{feed_key}/data/chart
```

> Response Sample:

```json
[
  {
    "feed": {
      "id": 0,
      "key": "string",
      "name": "string"
    },
    "parameters": {},
    "columns": [
      "string"
    ],
    "data": [
      [
        "string"
      ]
    ]
  }
]
```
The Chart API is what we use on io.adafruit.com to populate charts over varying timespans with a consistent number of data points. The maximum number of points returned is 480. This API works by aggregating slices of time into a single value by averaging.

All time-based parameters are optional, if none are given it will default to 1 hour at the finest-grained resolution possible.

### HTTP Request

`GET /{username}/feeds/{feed_key}/data/chart`

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
resolution  |    integer <int32>  | A resolution size in minutes. By giving a resolution value you will get back grouped data points aggregated over resolution-sized intervals. NOTE: time span is preferred over resolution, so if you request a span of time that includes more than max limit points you may get a larger resolution than you requested. Valid resolutions are 1, 5, 10, 30, 60, and 120.
hours     |    integer <int32>     | The number of hours the chart should cover.

## Create multiple new Data records

```shell
$ curl -H "X-AIO-Key: {io_key}" https://io.adafruit.com/api/v2/{username}/feeds/{feed_key}/data/batch
```

```cpp
// Not implemented in Adafruit IO Arduino
```

```python
# Adafruit IO Python
data_list = [Data(value=50), Data(value=33)]
aio.send_batch_data(feed_name.key, data_list)

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

### Request Body
A collection of data records including `value` (required) and optionally including: `lat`, `lon`, `ele` (latitude, longitude, and elevation values), and `created_at` (a date/time string).

Parameter   |   Type  
---------   | ------- 
value       | string  
created_at  | string `<dateTime>`
lat         | string 
lon         | string 
ele         | string
epoch       | number 

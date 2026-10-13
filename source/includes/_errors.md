# Errors

The Adafruit IO API uses the following error codes:

Error Code | Meaning
---------- | -------
400 | Bad Request -- Your request is invalid or was in the wrong format.
401 | Unauthorized -- Your API key is wrong or you're trying to view a resource you don't own.
403 | Forbidden -- This action is not permitted.
404 | Not Found -- The specified record could not be found.
422 | Unprocessable Entity -- You've sent data we can't accept/understand (for example, a missing value field or a failed validation), or you requested a format that we don't serve.
429 | Too Many Requests -- You're sending or requesting data too quickly! Slow down! See _Rate Limiting_.
500 | Internal Server Error -- We had a problem with our server. Try again later.
503 | Service Unavailable -- We're temporarily offline for maintenance. Please try again later.

Most validation failures return `422`, but some endpoints (such as Actions) return `400` instead, so check for both.

## Error Response Body

Error responses are JSON, and the `error` field comes in two forms. Clients should handle both.

A string, used by most errors:

```json
{
  "error": "request failed - cannot process request"
}
```

An array of messages, used by some create and update failures, along with the status code:

```json
{
  "error": ["Name can't be blank"],
  "status": 400
}
```

A `429` caused by the overall HTTP request limit is plain text (`Retry later`) rather than JSON.

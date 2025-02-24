# Errors

The Adafruit IO API uses the following error codes:

Error Code | Meaning
---------- | -------
400 | Bad Request -- Your request is invalid or was in the wrong format.
401 | Unauthorized -- Your API key is wrong or you're trying to view a resource you don't own.
403 | Forbidden -- This action is not permitted.
404 | Not Found -- The specified record could not be found.
406 | Not Acceptable -- You requested a format that we don't serve.
422 | Unprocessable Entity -- You've sent data we can't accept/understand. Is the value field (string/number) missing?
429 | Too Many Requests -- You're sending or requesting data too quickly! Slow down!
500 | Internal Server Error -- We had a problem with our server. Try again later.
503 | Service Unavailable -- We're temporarily offline for maintenance. Please try again later.

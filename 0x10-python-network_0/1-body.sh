#!/bin/bash
# Send a GET request to a URL and display the response body if the status code is 200
curl -s -w "%{http_code}\n" $1 | (read body; read code; if [ "$code" = "200" ]; then echo "$body"; fi)

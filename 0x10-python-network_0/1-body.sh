#!/bin/bash
#Write a Bash script that takes in a URL, sends a GET request to the URL, and displays the body of the response

response=$(curl -s -w "%{http_code}\n" $1)
status_code=$(echo "$response" | tail -n 1)
body=$(echo "$response" | sed '$ d')

if [ "$status_code" = "200" ]; then
    echo "$body"
fi

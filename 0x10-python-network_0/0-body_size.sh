#!/bin/bash
# This script sends a request to a given URL and displays the size of the body of the response in bytes
curl -s -o /dev/null -w %{size_download} $1

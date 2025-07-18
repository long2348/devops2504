#!/bin/bash
#
# writing a simple curl to the endpoint and get the response code of command and print it out to screen
# example curl  google-123.com
# with dynamic url
#

status_code=$(curl -s -w "%{http_code}" "https://$1")

echo "URL: $1"
echo "HTTP Status request: $status_code"
# shellcheck disable=SC2320
echo "status code $?"

# curl ${1} > /dev/null 2>&1
# echo "status code $?"

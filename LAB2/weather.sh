#!/usr/bin/bash
CITY=$1

echo "<HTML><BODY>"

date
curl -s https://wttr.in/${CITY}?format=j1 | jq '.["current_condition"][0] | .temp_C,.humidity'

echo "</BODY></HTML>"
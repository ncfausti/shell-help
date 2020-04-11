# This example is for logging in to piazza.com with username and password specified in --data-urlencode
curl -X POST "https://piazza.com/class" --data-urlencode "remember=true" \
--data-urlencode "email=<REPLACE WITH EMAIL>"     \
--data-urlencode "password=<REPLACE WITH PASSWORD>"     \
--cookie "cookies.txt"     --cookie-jar "cookies.txt"     \
--location     --verbose     > "login_log.html"

# add for subsequent requests use --cookie and --cookie-har from last request
curl "https://piazza.com/class" \
    --cookie "cookies.txt" \
    --cookie-jar "cookies.txt" \
    --head

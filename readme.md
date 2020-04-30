# notifyd

## Install

~~~
docker-compose up
~~~

## How to use API

~~~bash
curl -s -XPOST -d '{"message":"API test", "token": "abc"}' localhost:5050 >/dev/null
~~~

helper function
~~~bash
message () {
    echo "$1"
    curl -XPOST -sd '{"message": "'"$CONTAINER_NAME"': '"$1"'"}' localhost:5050 >/dev/null
    if [ $? -ne 0 ]; then
        echo "$CONTAINER_NAME: failed to send message to discordbot" >&2
    fi
}

message "operation finished"
~~~

## Environment variables example

put below variables to `.env`

~~~
DISCORD_TOKEN=
~~~

## Commands

### hi

just return 'hi'


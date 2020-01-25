# notifyd

## How to use API

~~~bash
curl -XPOST -d '{"message":"hello, discordbot"}' http://discordbot/ >/dev/null
~~~

helper function
~~~bash
message () {
    echo "$1"
    curl -XPOST -sd '{"message": "'"$CONTAINER_NAME"': '"$1"'"}' http://discordbot >/dev/null
    if [ $? -ne 0 ]; then
        echo "$CONTAINER_NAME: failed to send message to discordbot"
    fi
}

message "operation finished"
~~~

## Environment variables example

put below variables to `.env`

~~~
DISCORD_TOKEN=
DISCORD_CHANNEL_NAME=general
~~~

## Commands

### hi

just return 'hi'


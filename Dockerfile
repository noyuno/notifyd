from python:3-alpine

run apk update && \
    apk add --virtual=deps alpine-sdk && \
    pip install git+https://github.com/Rapptz/discord.py.git schedule requests && \
    apk del deps
cmd python3 -u /opt/discordbot/main.py

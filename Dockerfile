from python:3-alpine

copy . /opt/notifyd
run cp /opt/notifyd/resolv.conf /etc/reolv.conf && \
    apk update && \
    apk add --virtual=deps alpine-sdk && \
    pip install git+https://github.com/Rapptz/discord.py.git schedule requests && \
    apk del deps
cmd python3 -u /opt/notifyd/main.py

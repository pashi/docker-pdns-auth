#!/bin/sh

test -f /app/pdns.conf && cp /app/pdns.conf /etc/pdns/pdns.conf
exec /usr/sbin/pdns_server

#!/usr/bin/env bash

set -eux

go install github.com/caddyserver/xcaddy/cmd/xcaddy@latest

export GOOS=linux
export GOARCH=amd64
xcaddy build v2.4.0 \
    --with github.com/hijiki51/caddy-cloudflare
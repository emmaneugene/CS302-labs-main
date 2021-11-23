#! /usr/bin/env sh
set -eu

envsubst '${games_service_url_internal} ${orders_service_url_internal} ${place_order_service_url_internal} ${api_gateway_key}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

exec "$@"

#!/usr/bin/env bash

if [ -z "$1" ]; then
  echo Connection name is required as first argument
  exit 1
fi

CONNECTION_NAME="$1"

CONNECTED_ICON=security-high-symbolic
DISCONNECTED_ICON=security-medium-symbolic

if nmcli --fields GENERAL.STATE con show "${CONNECTION_NAME}" | grep --quiet activated; then
  ICON=${CONNECTED_ICON}
else
  ICON=${DISCONNECTED_ICON}
fi

echo "${CONNECTION_NAME} | iconName=${ICON}"
echo "---"
echo "Connect | iconName=${CONNECTED_ICON} bash='nmcli connection up \"${CONNECTION_NAME}\"' terminal=false refresh=true"
echo "Disconnect | iconName=${DISCONNECTED_ICON} bash='nmcli connection down \"${CONNECTION_NAME}\"' terminal=false refresh=true"

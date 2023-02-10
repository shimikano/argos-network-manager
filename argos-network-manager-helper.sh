#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

if [ -z "${1-}" ]; then # substitute with empty string if not set
  echo Connection name is required as first argument
  exit 1
fi

CONNECTION_NAME="$1"

if [ -z "${2-}" ]; then # substitute with empty string if not set
  LABEL="$CONNECTION_NAME" # use the connection name if empty
else
  LABEL="$2"
fi

CONNECTED_ICON=security-high-symbolic
DISCONNECTED_ICON=security-medium-symbolic

if nmcli --fields GENERAL.STATE con show "${CONNECTION_NAME}" | grep --quiet activated; then
  ICON=${CONNECTED_ICON}
else
  ICON=${DISCONNECTED_ICON}
fi

echo "${LABEL} | iconName=${ICON}"
echo "---"
echo "Connect | iconName=${CONNECTED_ICON} bash='nmcli connection up \"${CONNECTION_NAME}\"' terminal=false refresh=true"
echo "Disconnect | iconName=${DISCONNECTED_ICON} bash='nmcli connection down \"${CONNECTION_NAME}\"' terminal=false refresh=true"

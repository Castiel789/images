#!/bin/bash
cd /home/container &&
MODIFIED_STARTUP=$(eval echo "$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g')")
echo "/home/container/$: ${MODIFIED_STARTUP}"

cd /home/container/Bot &&
${MODIFIED_STARTUP}
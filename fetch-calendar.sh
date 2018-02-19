#! /bin/bash

if [ -z "${CALENDAR_PATH}" ]; then
  CALENDAR_PATH="/users/arvid.warnecke@otto.de/calendar/"
fi

# start davmail in background
./davmail.sh davmail.properties &
sleep 2

# fetch calendar
curl \
  -f \
  -u "${USERNAME}:${PASSWORD}" \
  -H "Accept: text/calendar" \
  http://localhost:1080${CALENDAR_PATH} \
  > "${OUTPUT_DIR}/${OUTPUT_FILE}"


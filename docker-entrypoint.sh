#!/bin/sh
CMD_PREFIX=
if [ ! -z "${YT_DL}" ]; then
  CMD_PREFIX="/usr/bin/youtube-dl"
fi

/bin/sh --login -c "${CMD_PREFIX} ${YT_DL_OPTS} $*"

if [ ! -z "${EXEC_SHELL}" ]; then
  exec /bin/sh
fi
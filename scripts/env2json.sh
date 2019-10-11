#!/bin/bash

INCLUDE_ENV_PATTERN=${1:-.*}

printenv | grep -E "${INCLUDE_ENV_PATTERN}"| sed -E 's/(.+)=(.+)/"\1":"\2"/' | awk  -v ORS=, 'BEGIN {printf "{"} {printf (NR > 1 ? "," : "") $1}END {printf "}"}'



#!/bin/sh

set -u
set -e

rm -f "${TARGET_DIR}/etc/init.d/S99snapclient" "${TARGET_DIR}/usr/bin/snapserver"

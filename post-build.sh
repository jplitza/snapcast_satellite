#!/bin/sh

set -u
set -e

rm -f \
    "${TARGET_DIR}/etc/init.d/S99snapclient" \
    "${TARGET_DIR}/etc/init.d/S20urandom" \
    "${TARGET_DIR}/usr/bin/snapserver"

for f in "${TARGET_DIR}/etc/init.d/"S*; do
    if [ "${f%.sh}" != "$f" ]; then
        # already has .sh extension
        continue
    fi
    mv "$f" "${f}.sh"
done

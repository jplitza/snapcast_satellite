#!/bin/sh

case "$1" in
  start)
        amixer sset PCM,0 100%
        ;;
esac

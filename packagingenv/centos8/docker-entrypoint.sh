#!/bin/bash

operation="${1:-build}"

case "$operation" in
pull)
  ;;
build)
  rpmbuild -bb rpm/st2chatops.spec
  cp ../*.rpm $ARTIFACT_DIR
  ;;
*)
  [ $# -gt 0 ] && exec "$@"
  ;;
esac

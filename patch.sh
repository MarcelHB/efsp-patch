#!/bin/sh

set -e

for patch in patches/*; do
  if [ -f "$patch" ]; then
    echo "Applying $patch ..."
    patch -p1 -d efsp < "$patch"
  fi
done


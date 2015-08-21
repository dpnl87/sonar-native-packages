#!/bin/sh

# Requires:
#   app-arch/createrepo

set -e

if [ -z "$1" ]; then
  echo "Usage: $0 <version>"
  exit 1
fi

VER=$1

echo "Building RPM package"
rm -v rpm/SOURCES/*.zip || true
cp -v /usr/distfiles/sonarqube-${VER}.zip rpm/SOURCES/
rpm/build.sh ${VER}

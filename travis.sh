#!/bin/bash

set -euo pipefail

cd deb

wget http://downloads.sonarsource.com/sonarqube/sonarqube-5.1.2.zip --output-document=sonar-5.1.2.zip

mkdir tmp
./build.sh 5.1.2

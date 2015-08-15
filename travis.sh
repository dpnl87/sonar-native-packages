#!/bin/bash

set -euo pipefail

cd rpm

wget http://downloads.sonarsource.com/sonarqube/sonarqube-5.1.2.zip --output-document=SOURCES/sonar-5.1.2.zip

./build.sh 5.1.2

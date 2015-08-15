#!/bin/bash

set -euo pipefail

wget http://downloads.sonarsource.com/sonarqube/sonarqube-5.1.2.zip --output-document=sonarqube-5.1.2.zip

cp sonarqube-5.1.2.zip rpm/SOURCES/
cd rpm
./build.sh 5.1.2

cd ..

cp sonarqube-5.1.2.zip deb/
cd deb
mkdir tmp
./build.sh 5.1.2

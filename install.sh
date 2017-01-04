#!/bin/sh
mkdir $OPENGROK_INSTANCE_BASE
mkdir $OPENGROK_INSTANCE_BASE/data
mkdir $OPENGROK_INSTANCE_BASE/etc

wget https://github.com/OpenGrok/OpenGrok/files/631110/opengrok-0.13-rc5.zip
unzip -p opengrok-*.zip | tar zxvf -
rm opengrok-*.zip
mv opengrok-* opengrok
cd /opengrok/bin
./OpenGrok deploy

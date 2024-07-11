#!/usr/bin/env bash

echo n | cordova build &&
cp /project/platforms/android/app/build/outputs/apk/debug/app-debug.apk /project/bin

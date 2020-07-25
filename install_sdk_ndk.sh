#!/bin/bash

set -e
set -x

mkdir -p -v /root/android-sdk/cmdline-tools
cd /root/android-sdk/cmdline-tools
curl -fsSLO "https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip"
unzip -q sdk-tools-linux-*.zip
rm sdk-tools-linux-*.zip
mv tools latest
mkdir -p -v /root/.android
echo "count=0" > /root/.android/repositories.cfg
yes | /root/android-sdk/cmdline-tools/latest/bin/sdkmanager --licenses
yes | /root/android-sdk/cmdline-tools/latest/bin/sdkmanager "tools" "platform-tools" "build-tools;${ANDROID_BUILD_TOOLS_VERSION}" "ndk;${ANDROID_NDK_VERSION}" "platforms;android-${ANDROID_PLATFORM_VERSION}" "cmake;${CMAKE_VERSION}"
yes | /root/android-sdk/cmdline-tools/latest/bin/sdkmanager --licenses # once again just in case...
keytool -keyalg RSA -genkeypair -alias androiddebugkey -keypass android -keystore debug.keystore -storepass android -dname "CN=Android Debug,O=Android,C=US" -validity 9999
mv debug.keystore /root/android-sdk/debug.keystore

#!/bin/bash

# Check if the required arguments were provided
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 <unity_version> <android_api_level>"
    exit 1
fi

UNITY_VERSION=$1
ANDROID_API_LEVEL=$2

# Change directory to the location of the sdkmanager
cd /Applications/Unity/Hub/Editor/$UNITY_VERSION/PlaybackEngines/AndroidPlayer/SDK/cmdline-tools/2.1/bin

# Check if the directory exists
if [ ! -d "$(pwd)" ]; then
    echo "Error: Directory not found. Please check the Unity version."
    exit 1
fi

# Install the desired Android platform
./sdkmanager "platforms;android-$ANDROID_API_LEVEL"

#!/bin/bash
# <bitbar.title>Xcode Version</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Florian Hirschmann</bitbar.author>
# <bitbar.author.github>hirschfl</bitbar.author.github>
# <bitbar.desc>Shows the Xcode version that is currently selected with xcode-select.</bitbar.desc>
# <bitbar.dependencies>xcodebuild</bitbar.dependencies>
version=$(xcodebuild -version | head -1 | awk '{print $2}')
build=$(xcodebuild -version | grep -i "build version" | awk '{print $3}')
echo "🛠${version} (${build})"

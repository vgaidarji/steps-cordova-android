#!/bin/bash

THIS_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# load bash utils
source "${THIS_SCRIPT_DIR}/bash_utils/formatted_output.sh"

# locations of various tools
GIT=git
CURL=curl

tool_not_found() {
  echo "Could not find $1 tool, please check settings"
  exit 1
}

verify_tools() {
	# Check 'curl' tool
	${CURL} --help >/dev/null
	if [ $? -ne 0 ]; then
    tool_not_found ${CURL}
		#echo "Could not find curl tool, please check settings"
		#exit 1
	fi

  # Check 'git' tool
  ${GIT} --help >/dev/null
  if [ $? -ne 0 ]; then
    tool_not_found ${GIT}
  fi
}

#verify_settings() {
	#if [ -z "${api_key}" ]; then
	#	echo "Please update API_KEY with your private API key, as noted in the Settings page"
	#	exit 1
	#fi
#}

install_node() {
  
}

# before even going on, make sure all tools work
verify_tools
#verify_settings

# install node.js
install_node

# check node installed

# install cordova
#npm install -g cordova

# install cordova platforms
#
# $ cordova platform add ios
# $ cordova platform add amazon-fireos
# $ cordova platform add android
# $ cordova platform add blackberry10
# $ cordova platform add firefoxos


# print installed cordova platforms
#cordova platforms ls

# execute cordova task

# copy artifact (*.apk, *.ipa) to bitrise directory

#!/bin/sh

#
# Easy download/install/onboard script for the OMSAgent for Linux
#


# Values to be updated upon each new release
GITHUB_RELEASE="https://github.com/Microsoft/OMS-Agent-for-Linux/releases/download/OMSAgent_v1.11.0-9/"
BUNDLE_X64="omsagent-1.11.0-9.universal.x64.sh"
BUNDLE_X86="omsagent-1.11.0-9.universal.x86.sh"

# Download, install, and onboard OMSAgent for Linux, depending on architecture of machine
if [ $(uname -m) = 'x86_64' ]; then
    # x64 architecture
    sh ./${BUNDLE_X64} --install
else
    # x86 architecture
    sh ./${BUNDLE_X64} --install
fi

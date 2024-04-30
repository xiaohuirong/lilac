#!/bin/bash
set -e
_APPDIR="/usr/lib/@appname@"
_RUNNAME="${_APPDIR}/@runname@"
_OPTIONS="@options@"
export PATH="${_APPDIR}:${PATH}"
export LD_LIBRARY_PATH="${_APPDIR}/swiftshader:${_APPDIR}/lib:${LD_LIBRARY_PATH}"
export ELECTRON_IS_DEV=0
export ELECTRON_FORCE_IS_PACKAGED=true
export NODE_ENV=production
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
_FLAGS_FILE="${XDG_CONFIG_HOME}/@appname@-flags.conf"
if [ -r "${_FLAGS_FILE}" ]; then
    _USER_FLAGS="$(cat "${_FLAGS_FILE}")"
fi
cd "${_APPDIR}"
if [[ $EUID -ne 0 ]] || [[ $ELECTRON_RUN_AS_NODE ]]; then
    exec electron@electronversion@ "${_RUNNAME}" "${_OPTIONS}" "${_USER_FLAGS}" "$@" || exit $?
else
    exec electron@electronversion@ "${_RUNNAME}" "${_OPTIONS}" --no-sandbox "${_USER_FLAGS}" "$@" || exit $?
fi
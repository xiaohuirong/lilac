#!/bin/bash
work_dir=/opt/wine-game/eldenring/Game
save_dir=${HOME}/.local/share/wine-game/eldenring
wine_dir=${HOME}/.wine
default_save=${HOME}/.wine/drive_c/users/$(whoami)/AppData/Roaming/EldenRing

cd "${work_dir}"

if [ ! -d "$save_dir" ]; then
	mkdir -p "$save_dir"
fi

if [ ! -d "$wine_dir/drive_c/windows/system32" ]; then
	mkdir -p "$wine_dir/drive_c/windows/system32"
fi

if [ ! -d "$default_save" ]; then
	mkdir -p "$default_save"
fi

#if [ -f "$save_dir/user.reg" ]; then
#    rm "$save_dir/user.reg"
#fi
#
#if [ ! -f "$wine_dir/user.reg" ]; then
#    touch "$save_dir/user.reg"
#else
#    cp "$wine_dir/user.reg" "$save_dir/user.reg"
#fi

export VKD3D_SHADER_CACHE_PATH=$default_save

bwrap --ro-bind / / \
    --bind /tmp /tmp \
    --bind ${HOME}/.wine ${HOME}/.wine \
    --dev-bind /dev /dev \
    \
    --bind /usr/share/dxvk/x64/dxgi.dll ${HOME}/.wine/drive_c/windows/system32/dxgi.dll\
    --bind /usr/share/vkd3d-proton/x64/d3d12core.dll ${HOME}/.wine/drive_c/windows/system32/d3d12core.dll\
    --bind /usr/share/vkd3d-proton/x64/d3d12.dll ${HOME}/.wine/drive_c/windows/system32/d3d12.dll\
    \
    --bind "$save_dir" "$default_save" \
    --bind "$work_dir/user.reg" "$wine_dir/user.reg" \
    \
    wine64 eldenring.exe
#wine64 reg add 'HKEY_CURRENT_USER\Software\Wine\DllOverrides' /v dxgi /d native /f && \
#wine64 reg add 'HKEY_CURRENT_USER\Software\Wine\DllOverrides' /v d3d12core /d native /f && \
#wine64 reg add 'HKEY_CURRENT_USER\Software\Wine\DllOverrides' /v d3d12 /d native /f && \

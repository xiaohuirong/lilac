#!/bin/bash

tml_dir="/opt/gog/terraria/game/tModLoader"

cd "$tml_dir"

LaunchLogs="$HOME/.local/share/Terraria/tModLoader/tModLoader-Logs/"
if [ ! -d "$LaunchLogs" ]; then
	mkdir -p "$LaunchLogs"
fi

SteamDir="$HOME/.local/share/Terraria/tModLoader/steamapps"
if [ ! -d "$SteamDir" ]; then
	mkdir -p "$SteamDir"
fi

NativeLog="$LaunchLogs/Natives.log"
if [ -f "$NativeLog" ]; then
	rm "$NativeLog"
fi
touch "$NativeLog"

appid="$LaunchLogs/steam_appid.txt"
if [ -f "$appid" ]; then
    rm "$appid"
fi
touch "$appid"

library_dir="$tml_dir/Libraries/Native/Linux"
export LD_LIBRARY_PATH="$library_dir"

if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    export SDL_VIDEODRIVER=wayland
    export SDL_DYNAMIC_API="/usr/lib/libSDL2-2.0.so"
else 
    export SDL_VIDEODRIVER=x11
fi

exec bwrap --bind / / \
    --dev-bind /dev /dev \
    --bind $LaunchLogs $tml_dir/tModLoader-Logs \
    --bind $appid $tml_dir/steam_appid.txt \
    --bind $SteamDir $tml_dir/steamapps \
    /usr/bin/dotnet tModLoader.dll "$@" 2> "$NativeLog"

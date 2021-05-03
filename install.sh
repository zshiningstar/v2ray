#!/bin/sh

pwd=`pwd`
exe=${pwd}/Qv2ray.v2.6.3.AppImage
icon=${pwd}/icon.jpg
newline="\n"

output="v2ray.desktop"

if [ -f "$output" ]; then
	rm "$output"
fi

echo "[Desktop Entry]" >> "$output"
echo "Type=Application" >> "$output"
echo "Exec=bash -i -c ${exe}" >> "$output"
echo "Name=v2ray" >> "$output"
echo "GenericName=V2RAY" >> "$output"
echo "Icon=${icon}" >> "$output"
echo "Terminal=false" >> "$output"
echo "Categories=Development" >> "$output"

chmod a+x "$output"

if [ -f "~/桌面/$output" ]; then
	rm "~/桌面/$output"
fi

cp "$pwd/$output" ~/桌面/$output

echo "generate desktop shortcut ok."

#!/bin/sh

echo "[WARNING] Excecuting this script is very long and may fail do to npm security policies"
echo "Publishing all packages in font-packages folder"

for I in `ls font-packages/` ; do cd font-packages/$I ; npm publish ; cd - ; sleep 3 ; done


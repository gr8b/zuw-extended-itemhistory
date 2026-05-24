#!/usr/bin/env bash

read -p "Enter release version: " version

zip -r "zuw-extended-item-history-${version}.zip" \
    Widget.php \
    manifest.json \
    views \
    includes \
    assets \
    actions

echo "Done: zuw-extended-item-history-${version}.zip"

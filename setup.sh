#!/bin/bash

IMPORT_PWD="$PWD"/pulse
EXPORT_PWD=/data/data/com.termux/files/usr/etc/pulse

LIST_IMPORT=$(ls "$IMPORT_PWD")
LIST_EXPORT=$(ls "$EXPORT_PWD")

for list_import in $LIST_IMPORT; do
    for list_export in $LIST_EXPORT; do
        if [ "$list_import" = "$list_export" ]; then
            echo "$IMPORT_PWD/$list_import > " "$EXPORT_PWD/$list_export"
            cat "$IMPORT_PWD/$list_import" > "$EXPORT_PWD/$list_export"
        fi
    done
done
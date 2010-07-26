#!/bin/sh

# path
ROOT=`dirname $0`
LINUX="$ROOT/Contents/Linux"
RESOURCES="$ROOT/Contents/Resources"

# icon
gvfs-set-attribute \
	"$0" \
	"metadata::custom-icon" \
	"file://$RESOURCES/Squeak.png" \
		2> /dev/null

# execute
exec "$LINUX/squeakvm" \
	-plugins "$LINUX" \
	-encoding latin1 \
	-vm-display-X11 \
	"$RESOURCES/Squeak.image"
#!/bin/sh

VOLUME_MUTE="󰖁"
VOLUME_LOW="󰕿"
VOLUME_MID="󰖀"
VOLUME_HIGH="󰕾"

SOUND_LEVEL=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '/%/ { print $5 }' | awk -F"%" 'BEGIN{tot=0; i=0} {i++; tot+=$1} END{printf("%s\n", tot/i) }')
MUTED=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print ($2=="yes" ? 1 : 0)}')

# SOUND_LEVEL=$(amixer -M get Master | awk -F"[][]" '/%/ { print $2 }' | awk -F"%" 'BEGIN{tot=0; i=0} {i++; tot+=$1} END{printf("%s\n", tot/i) }')
# MUTED=$(amixer get Master | awk ' /%/{print ($NF=="[off]" ? 1 : 0); exit;}')

ICON=$VOLUME_MUTE
if [ "$MUTED" = "1" ]
then
    ICON="$VOLUME_MUTE"
    SOUND_LEVEL="0"
else
    if [ "$SOUND_LEVEL" -lt 34 ]
    then
        ICON="$VOLUME_LOW"
    elif [ "$SOUND_LEVEL" -lt 67 ]
    then
        ICON="$VOLUME_MID"
    else
        ICON="$VOLUME_HIGH"
    fi
fi

echo "$ICON" "$SOUND_LEVEL" | awk '{ printf(" %s %s%% \n", $1, $2) }'

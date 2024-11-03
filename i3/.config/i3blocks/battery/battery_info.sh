#!/bin/sh

# If ACPI was not installed, this probably is a battery-less computer.
ACPI_RES=$(acpi -b)
ACPI_CODE=$?
if [ $ACPI_CODE -eq 0 ]
then
    # Get essential information. Due to som bug with some versions of acpi it is
    # worth filtering the ACPI result from all lines containing "unavailable".
    BAT_LEVEL_ALL=$(echo "$ACPI_RES" | grep -v "unavailable" | grep -E -o "[0-9][0-9]?[0-9]?%")
    BAT_LEVEL=$(echo "$BAT_LEVEL_ALL" | awk -F"%" 'BEGIN{tot=0;i=0} {i++; tot+=$1} END{printf("%d\n", tot/i)}')
    IS_CHARGING=$(echo "$ACPI_RES" | grep -v "unavailable" | awk '{ printf("%s\n", substr($3, 0, length($3)-1) ) }')

    ICON=󰁹

    # Change the font color, depending on the situation.
    if [ "$IS_CHARGING" = "Charging" ]
    then
        ICON=󰂄
    else
        if [ "$BAT_LEVEL" -ge 95 ]
        then
            ICON=󰁹
        elif [ "$BAT_LEVEL" -ge 90 ] 
        then
            ICON=󰂁
        elif [ "$BAT_LEVEL" -ge 80 ] 
        then
            ICON=󰂀
        elif [ "$BAT_LEVEL" -ge 70 ] 
        then
            ICON=󰂀
        elif [ "$BAT_LEVEL" -ge 60 ] 
        then
            ICON=󰁿
        elif [ "$BAT_LEVEL" -ge 50 ] 
        then
            ICON=󰁾
        elif [ "$BAT_LEVEL" -ge 40 ] 
        then
            ICON=󰁽
        elif [ "$BAT_LEVEL" -ge 30 ] 
        then
            ICON=󰁼
        elif [ "$BAT_LEVEL" -ge 20 ] 
        then
            ICON=󰁻
        elif [ "$BAT_LEVEL" -ge 15 ] 
        then
            ICON=󰁺
        elif [ "$BAT_LEVEL" -ge 10 ] 
        then
            ICON=󰂃
        fi
    fi

    echo "$ICON" "$BAT_LEVEL" | awk '{ printf(" %s %3s% \n", $1, $2) }'
fi

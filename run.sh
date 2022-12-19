#!/bin/bash

# Create a variable for outputting our final result
result=""

# Output the value of headsetcontrol -bc to a variable
headset=$(headsetcontrol -bc)

# If the variable is -2, then the headset is off, so we set the result to "Off"

if [ "$headset" = "-2" ]; then
    result="Off"
fi

# If the variable is -1, then the headset is charging, so we set the result to "Charging"

if [ "$headset" = "-1" ]; then
    result="Charging"
fi

# Otherwise, the headset is on battery, so we set the result to the value of headset + "%"

if [ "$headset" != "-1" ] && [ "$headset" != "-2" ]; then
    result="$headset%"
fi

# Output the result to the terminal
echo $result
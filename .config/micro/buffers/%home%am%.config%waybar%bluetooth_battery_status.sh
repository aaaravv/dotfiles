I˙SerializedBuffer˙ EventHandler˙ Cursor˙ ModTime˙   8˙EventHandler˙ 	UndoStack˙ 	RedoStack˙   '˙TEStack˙ Top˙ Size   *˙Element˙ Value˙ Next˙   B˙	TextEvent˙ C˙ 	EventType Deltas˙ Time˙   Z˙Cursor˙ Loc˙ LastVisualX CurSelection˙ OrigSelection˙ Num   ˙Loc˙ X Y   ˙[2]buffer.Loc˙ ˙  ˙[]buffer.Delta˙ ˙  0˙Delta˙ Text
 Start˙ End˙   ˙Time˙   ţÎ˙    ,  /      Ůk"JEJ     .  m      ŮkW@J          0  o       ŮkĹcJ " "" " " 2  d  "     Ůj5×žJ $ $$ $ $ 4  u" $     Ů]0t,>J & && & & 6  l$ &     Ů](:*UJ ( (( ( ( 8  e& (     Ů] ŽčJ * ** * * :  s( *     Ů]?NńJ ( (( ( ( 8  s( *     ŮZÇ=üJ & && & & 6  e& (     ŮZJ $ $$ $ $ 4  l$ &     ŮZ¸vEJ " "" " " 2  u" $     ŮZęJ          0  d  "     ŮZNbJ     .  o       ŮY÷ëjJ          0  d       ŮYúäpJ " "" " " 2  o  "     ŮX4šúŻJ          0  o  "     ŮXOŚJ     .  d       ŮX ß9ńJ     ,  m      ŮW2¤1J     .  s      ŮWťřJ          0  r       ŮW 6
J " "" " " 2  c  "     ŮV1(ÍJ       ţ#!/bin/bash

SCRIPTS_DIR=~/src/scripts

get_battery_status() {
    device_uuid=$1
    device_uuid_slug=$(echo "$device_uuid" | sed 's/:/_/g')
    device_upower_path=$(upower -e | grep "$device_uuid_slug")
    if [[ "$?" != 0 ]]; then
        return 1
    fi

    upower_out=$(upower -i "$device_upower_path")
    percentage=$(echo "$upower_out" | grep 'percentage:' | grep -oe '[0-9]*%')
    if [[ "$?" != 0 ]]; then
        return 1
    fi

    echo $percentage
}

# prepare devices to process
connected_devices=$1
if [[ "$connected_devices" == "" ]]; then
    connected_devices=$($SCRIPTS_DIR/connected_bluetooth_devices.sh)
fi
if [[ "$connected_devices" == "" ]]; then
    echo "no bluetooth devices connected" >&2
    exit 1
fi

n=0
declare -A device_batteries
for device in ${connected_devices//\\n/ }; do
    device_battery_percentage=$(get_battery_status "$device")
    if [[ $? != 0 ]]; then
        continue
    fi

    n=$((n+1))
    device_batteries[$device]=$device_battery_percentage
    # echo "$device: $device_battery_percentage"
done

if [[ $n -eq 0 ]]; then
    echo "cannot get battery status for any specified bluetooth device" >&2
    exit 1
fi

# TODO: do something else?
for device in ${!device_batteries[*]}; do
    echo "$device ${device_batteries[$device]}"
done h     Ů~ä
ßz¨J                        .       ŮdŰÔWJ 
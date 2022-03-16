I��SerializedBuffer�� EventHandler�� Cursor�� ModTime��   8��EventHandler�� 	UndoStack�� 	RedoStack��   '��TEStack�� Top�� Size   *��Element�� Value�� Next��   B��	TextEvent�� C�� 	EventType Deltas�� Time��   Z��Cursor�� Loc�� LastVisualX CurSelection�� OrigSelection�� Num   ��Loc�� X Y   ��[2]buffer.Loc�� ��  ��[]buffer.Delta�� ��  0��Delta�� Text
 Start�� End��   ��Time��   ����    :  
&      ٕ�!L0J     <  
      ٕ� ; ÇJ 
    >  
 
     ٕ� 1w�J   6 6 @  7device1="6C:0D:E1:88:ED:93"
device2="00:1E:7C:92:E6:FC" 6     ٕ�(m�J       �r#!/bin/sh

#!/usr/bin/env bash
device1="6C:0D:E1:88:ED:93"
device2="00:1E:7C:92:E6:FC"


if [ "$1" == "-help" ]; then
    echo -e "This script attempts to connect or disconnects to paired Bluetooth device."
    exit 0;
fi

menu="$(bluetoothctl paired-devices | grep '' | cut -d' ' -f3-)"
echo -e "${menu}\n" &&  echo -n 'Enter device number 1, 2 or 3 to choose: '
read to_connect

case "$to_connect" in 
	"1") device="00:1E:7C:92:E6:FC";;
	"2") device="22:22:0B:89:FF:30";;
	"3") device="6C:0D:E1:88:ED:93";;
esac


if bluetoothctl info "$device" | grep 'Connected: yes' -q; then
  bluetoothctl disconnect "$device" && info="$(bluetoothctl info ${device} | grep Name | cut -d' ' -f2-)" && notify-send "Disconnected from ${info}!"
else
  bluetoothctl connect "$device" && info="$(bluetoothctl info ${device} | grep Name | cut -d' ' -f2-)" && notify-send "Connected to $info!"
fi




 @     ٕ�;�J   <    ��#!/bin/sh

#!/usr/bin/env bash
device1="6C:0D:E1:88:ED:93"
device2="00:1E:7C:92:E6:FC"


if [ "$1" == "-help" ]; then
    echo -e "This script attempts to connect or disconnects to paired Bluetooth device."
    exit 0;
fi


if bluetoothctl info "$device1" | grep 'Connected: yes' -q; then
  bluetoothctl disconnect "$device1" && info="$(bluetoothctl info ${device1} | grep Name | cut -d' ' -f2-)" && notify-send "Disconnected from ${info}!"
else
  bluetoothctl connect "$device1" && info="$(bluetoothctl info ${device1} | grep Name | cut -d' ' -f2-)" && notify-send "Connected to $info!"
fi


if bluetoothctl info "$device2" | grep 'Connected: yes' -q; then
  bluetoothctl disconnect "$device2" && info="$(bluetoothctl info $device2 | grep Name | cut -d' ' -f2-)" && notify-send "Disconnected from $info!"
  
else
  bluetoothctl connect "$device2" && info="$(bluetoothctl info ${device2} | grep Name | cut -d' ' -f2-)" && notify-send "Connected to $info!"
fi




 <     ٕ�;�J          &    ٕ�'���J 
IÿSerializedBufferÿ EventHandlerÿ Cursorÿ ModTimeÿ   8ÿEventHandlerÿ 	UndoStackÿ 	RedoStackÿ   'ÿTEStackÿ Topÿ Size   *ÿElementÿ Valueÿ Nextÿ   Bÿ	TextEventÿ Cÿ 	EventType Deltasÿ Timeÿ   ZÿCursorÿ Locÿ LastVisualX CurSelectionÿ OrigSelectionÿ Num   ÿLocÿ X Y   ÿ[2]buffer.Locÿ ÿ  ÿ[]buffer.Deltaÿ ÿ  0ÿDeltaÿ Text
 Startÿ Endÿ   ÿTimeÿ   þñÿX XX X X Ff  rX Z     Ù43ëhJ V VV V V Ff  aV X     Ù+±É%J T TT T T Ff  bT V     Ù(8ýJ R RR R R Ff  yR T     ÙkíFJ P PP P P Ff  aP R     Ù@J N NN N N Ff  wN P     Ù4ËygJ L LL L L Ff  /L N     Ù/cJ J JJ J J Ff  gJ L     Ù!0¢VJ H HH H H Ff  iH J     Ù¬Ó­J F FF F F Ff  fF H     Ù;UJ D DD D D Ff  nD F     Ù5\J B BB B B Ff  oB D     Ù+õ*	J @ @@ @ @ Ff  c@ B     Ù%õÞJ > >> > > Ff  .> @     ÙÁJ < << < < Ff  /< >     Ù²=&J > >> > > Ff  ?< >     Ù	¿1J < << < < Ff  ?< >     Ùo¡QJ : :: : : Ff  E: <     Ù	ÆJ 8 88 8 8 Ff  M8 :     Ù }ÑJ 6 66 6 6 Ff  O6 8     Ù1«ë/J 4 44 4 4 Ff  H4 6     Ù, àFJ 2 22 2 2 Ff  $2 4     Ù$²&J 4 42 2 2 Ff  s2 4     Ù9®ªJ 6 62 2 2 Ff  c4 6     Ù,+bËJ 8 82 2 2 Ff  r6 8     Ù%ÁJ : :2 2 2 Ff  i8 :     Ù¥J < <2 2 2 Ff  p: <     Ù´÷´J > >2 2 2 Ff  t< >     Ùu93J @ @2 2 2 Ff  s> @     Ùw(J 4 44 4 4 Ff  $2 4     Ù |ÇJ 6 66 6 6 Ff  H4 6     Ù'sr@J 8 88 8 8 Ff  O6 8     Ù¢J : :: : : Ff  M8 :     Ù¼9_J < << < < Ff  E: <     ÙÈù·J > >> > > Ff  /< >     Ù)UJ @ @@ @ @ Ff  s> @     Ù9D¦J B BB B B Ff  r@ B     Ù0ÀuñJ D DB B B Ff  cB D     Ù(L%J F FB B B Ff  /D F     Ù`J    0 F  þt#!/bin/bash

ICON_BLUETOOTH="ï"
ICON_BATTERY_FULL="ï"
ICON_BATTERY_THREE_QUARTERS="ï"
ICON_BATTERY_HALF="ï"
ICON_BATTERY_QUARTER="ï"
ICON_BATTERY_EMPTY="ï"
BLUETOOTH_BATTERY_STATUS=$HOME/src/scripts/bluetooth_battery_status.sh

tooltip=""

statuses="$($BLUETOOTH_BATTERY_STATUS)"
if [[ $? != 0 ]]; then
    exit 1
fi


n=0
sum=0
IFS=$'\n'
for status in $statuses; do
    uuid=$(echo "$status" | cut -d' ' -f1)
    name=$(bluetoothctl info "$uuid" | grep -oe 'Name: .*' | awk 'match($0, "Name: (.*)", m){print m[1]}')
    percent=$(echo "$status" | cut -d' ' -f2 | grep -oe '[0-9]*')

    tooltip="$tooltip$name: $percent%\n"

    n=$((n+1))
    sum=$((sum+percent))
done
IFS=' '

avg=$((sum / n))

ICON_BATTERY="ï·"
if [[ $avg -ge 90 ]]; then
    ICON_BATTERY=$ICON_BATTERY_FULL
elif [[ $avg -ge 75 ]]; then
    ICON_BATTERY=$ICON_BATTERY_THREE_QUARTERS
elif [[ $avg -ge 50 ]]; then
    ICON_BATTERY=$ICON_BATTERY_HALF
elif [[ $avg -ge 25 ]]; then
    ICON_BATTERY=$ICON_BATTERY_QUARTER
else
    ICON_BATTERY=$ICON_BATTERY_EMPTY
fi

tooltip=${tooltip%\\n}

echo "{\"text\": \"$ICON_BLUETOOTH $ICON_BATTERY\", \"tooltip\": \"$to ÿd     Ù÷2ëäÿJ  0  0 F  %
bluetooth-battery-waybar-module.sh 
      Ù÷2ëJ       $
bluetooth-battery-waybar-module.sh  F     Ùì IðkJ                                           T   Z    Ù!µ©	J 
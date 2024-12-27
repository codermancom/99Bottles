#!/bin/sh

TOTAL_BEERS=99
REMAINING_BEERS=$TOTAL_BEERS

getBottleString() {
  if [[ $1 -eq 1 ]]; then
    echo "bottle"
  else 
    echo "bottles"
  fi
}

echo "[Start Song]"

while [[ $REMAINING_BEERS -gt 0 ]]
do
  BOTTLE_STR=$(getBottleString $REMAINING_BEERS)
  BOTTLE_STR_REMAIN=$(getBottleString $((REMAINING_BEERS - 1)))
  SONG_LINE="$REMAINING_BEERS $BOTTLE_STR of beer on the wall, $REMAINING_BEERS $BOTTLE_STR of beer.\
  Take one down and pass it around, $((REMAINING_BEERS - 1)) $BOTTLE_STR_REMAIN of beer on the wall."
  echo $SONG_LINE
  REMAINING_BEERS=$((REMAINING_BEERS - 1))
done

echo "[End Song]"
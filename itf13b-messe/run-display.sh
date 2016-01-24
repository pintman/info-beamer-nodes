#/bin/sh

# set clock
python analogclock/set_clock.py

while true;
do
  nc localhost 4444 < 1_willkommen.txt;
  sleep 30;
  nc localhost 4444 < 2_projekte.txt;
  sleep 30;
done


#/bin/sh

# wait time (in seconds) between slides
TIME=30

# set clock
python analogclock/set_clock.py

while true;
do  
  for f in 1_willkommen.txt Projekte-*;
  do
	nc localhost 4444 < $f;
	cat $f
	sleep $TIME;
  done
done


install:
	cd scripts && make config && make pacman && make system && make aur && make user

update:
	cd scripts && ./update.sh

clean:
	cd scripts && sudo ./clean.sh

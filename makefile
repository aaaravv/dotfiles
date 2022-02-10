install:
	cd scripts && sudo ./configure-system.sh && ./configure-user.sh && sudo ./install-official-packages.sh && ./install-aur-packages.sh

update: 
	cd scripts && ./update.sh

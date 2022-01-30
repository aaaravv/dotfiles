install-packages:
	cd scripts && sudo ./install-official-packages.sh && ./install-aur-packages.sh

configure:
	cd scripts && sudo ./configure-system.sh && ./configure-user.sh

update: 
	cd scripts && ./update.sh
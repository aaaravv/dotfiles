# Exec Sway
if [ "$(tty)" = "/dev/tty1" ]; then
  exec sway
fi

# Display Manager 
XDG_SESSION_TYPE=wayland
XDG_CURRENT_DESKTOP=sway
QT_QPA_PLATFORM=wayland
QT_QPA_PLATFORM=wayland-egl

### Init Starship
eval "$(starship init zsh)"

# Source Plugins & other files
source ~/.config/zsh/plugins/zsh-auto/zsh-autosuggestions.plugin.zsh
source ~/.config/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source ~/.config/zsh/plugins/z/z.sh
source ~/.config/zsh/plugins/sudo/sudo.plugin.zsh
source ~/.config/zsh/plugins/bgnotify/bgnotify.plugin.zsh

source ~/.config/zsh/functions
source ~/.config/zsh/settings.zsh


### ALIASES ###

# To edit configs files
alias zshc="$EDITOR ~/.zshrc"
alias swayc="$EDITOR ~/.config/sway/config"
alias wayc="$EDITOR ~/.config/waybar/config"

# Get back to last dir
alias .='cd -'

# Make a directory
alias md='mkdir'

alias devar="unset var"

# ls - list directory
alias l.='lsd -l -d .*'     # list dot files
alias ls='lsd -l'    		# default listing with colors
alias la='lsd -l -a'		# list all files and dirs 	    	


# pacman and yay
#--confirm turn off interactive prompt (yes/no)
alias pi='sudo pacman -S'							     # install a package with [name]
alias yi='yay -S'									     # install a package with [name] (aur)
alias rem='sudo pacman -R'							     # remove a package with [name]
alias pacup='sudo pacman -Syyu'                          # update only standard pkgs
alias aurup='yay -Sua --noconfirm'                       # update only AUR pkgs (yay)
alias update='yay -Syu --noconfirm'                      # update standard pkgs and AUR pkgs (yay)
alias unlock='sudo rm /var/lib/pacman/db.lck'            # remove pacman lock
alias srch='yay -Ssy'									 # search for a package in AUR
alias clean='sudo pacman -R $(pacman -Qdtq)'      		 # clean dependencies
alias cleanup='sudo pacman -Qdtq | sudo pacman -Rs -'    # remove orphaned packages


# Colorize grep output
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'
alias crm='rm -rf -i'

# Clear console
alias clr='clear'

# Exec Vs-Code
alias vc='code .'

# Micro editor
alias e='micro'

# git
alias gau='git add -u'
alias gaa='git add .'
alias gb='git branch'
alias gbd='git branh -D'
alias gbrd='git push origin :' 
alias gco='git checkout'
alias gc='git clone'
alias gcm='git commit -m'
alias gd='git diff'
alias gf='git fetch'
alias gm='git merge'
alias gmnf='git merge --no-commit --no-ff'
alias gpl='git pull origin'
alias gp='git push origin'
alias gr='git restore'
alias grao='git remote add origin'
alias grs='git restore --staged'
alias gs='git status'

# Network (nmcli)
alias wcon='nmcli device wifi connect'	# connect to wifi with ssid
alias wl='nmcli device wifi list'     	# list wifi devices
alias ws='nmcli device status'       	# current network status

#add new fonts
alias ufc='sudo fc-cache -fv'

## Scripts
alias bt='~/.scripts/btconnect.sh'		# bluetooth script to connect to paired-devices
alias scc='~/.scripts/theme-switcher.sh' # switches between various color schemes

## RANDOM COLOR SCRIPT ##
# Install it from the Arch User Repository: shell-color-scripts
colorscript random		               

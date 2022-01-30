# Exec Sway
if [ "$(tty)" = "/dev/tty1" ]; then
  exec sway
fi

### EXPORT
export TERM="alacritty"                                 # getting proper colors
export ALTERNATE_EDITOR="code"                          # for Visual Studio Code
export EDITOR="micro"              		        		# for micro terminal editor
export ZSH="$HOME/.oh-my-zsh"	                        # Path to oh-my-zsh installation.
export MICRO_TRUECOLOR=1					


# ZSH History
export HISTFILE=~/.zsh_history
export HISTFILESIZE=1000
export HISTSIZE=1000
export SAVEHIST=1000
export HISTTIMEFORMAT="[%F %T] " 						#

# Display Manager 
XDG_SESSION_TYPE=wayland
XDG_CURRENT_DESKTOP=sway


# Shell env options
setopt autocd
setopt APPEND_HISTORY 
setopt INC_APPEND_HISTORY 
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt EXTENDED_HISTORY
setopt COMPLETE_IN_WORD 
setopt ALWAYS_TO_END            
setopt PROMPT_SUBST
unsetopt MENU_COMPLETE
setopt AUTO_MENU


### Init Starship
eval "$(starship init zsh)"

### "bat" as manpager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"


### Plugins
plugins=(vscode sudo bgnotify zsh-autosuggestions z zsh-syntax-highlighting )

# Source Plugins
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/z/z.sh
source ~/.config/zsh/vscode/vscode.plugin.zsh
source ~/.config/zsh/sudo/sudo.plugin.zsh
source ~/.config/zsh/bgnotify/bgnotify.plugin.zsh


### ARCHIVE EXTRACTION
# usage: ex <file>
ex ()
{
  if [ -f "$1" ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}


### ALIASES ###

# navigation
up () {
  local d=""
  local limit="$1"

  # Default to limit of 1
  if [ -z "$limit" ] || [ "$limit" -le 0 ]; then
    limit=1
  fi

  for ((i=1;i<=limit;i++)); do
    d="../$d"
  done

  # perform cd. Show error if cd fails
  if ! cd "$d"; then
    echo "Couldn't go up $limit dirs.";
  fi
}


# To edit configs files
alias zshc="micro ~/.zshrc"
alias swayc="micro ~/.config/sway/config"
alias wayc="micro ~/.config/waybar/config"


# Make a directory
alias md='mkdir'

	
# ls - list directory
alias l.='ls -l -d .* --color=always'                               # list dot files
alias ls='ls -l --color=always --group-directories-first'    		# default listing with colors
alias la='ls -l -a --color=always --group-directories-first'		# list all files and dirs 	    	


# pacman and yay
#--confirm turn off interactive prompt (yes/no)
alias pi='sudo pacman -S'							     # install a package with [name]
alias yi='yay -S'									     # install a package with [name] (aur)
alias rem='sudo pacman -R'							     # remove a package with [name]
alias pacup='sudo pacman -Syyu'                          # update only standard pkgs
alias aurup='yay -Sua --noconfirm'                       # update only AUR pkgs (yay)
alias update='yay -Syu --noconfirm'                      # update standard pkgs and AUR pkgs (yay)
alias unlock='sudo rm /var/lib/pacman/db.lck'            # remove pacman lock
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


# Clear console
alias clr='clear'


# Exec Vs-Code
alias cde='code .'


# git
alias gau='git add -u'
alias gaa='git add .'
alias gb='git branch'
alias gbd='git branh -D'
alias gbrd='git push origin:' 
alias gco='git checkout'
alias gc='git clone'
alias gcm='git commit -m'
alias gd='git diff'
alias gf='git fetch'
alias gm='git merge'
alias gmnf='git merge --no-ff'
alias gpl='git pull origin'
alias gp='git push origin'
alias gr='git restore'
alias grao='git remote add origin'
alias grs='git restore --staged'
alias gs='git status'

# Network (nmcli)
alias wc='nmcli device wifi connect'  # connect to wifi with ssid
alias wl='nmcli device wifi list'     # list wifi devices
alias ws='nmcli device status'        # current network status

# Proton-VPN

	alias \
		connect='protonvpn-cli connect' \
		disconnect='protonvpn-cli disconnect'


### RANDOM COLOR SCRIPT ###
# Install it from the Arch User Repository: shell-color-scripts
colorscript random		               # adds a right amount of bling to your console :)


### Starship config ( for gnome )

#Set terminal title
# function set_win_title(){
#     echo -ne "\033]0; aarav-console@1aM \007"
       
# }
# precmd_functions+=(set_win_title) 

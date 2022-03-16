### EXPORTS 
# XDG base directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}
export ANDROID_SDK_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/android"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/shell/inputrc"
export LESSHISTFILE="-"
export MPLAYER_HOME="$XDG_CONFIG_HOME"/mplayer 
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export _Z_DATA="${XDG_DATA_HOME:-$HOME/.local/share}/z"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"

### "bat" as manpager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# ZSH History
export HISTFILE="$XDG_CONFIG_HOME/zsh/history"
export HISTFILESIZE=1000
export HISTSIZE=1000
export SAVEHIST=1000
export HISTTIMEFORMAT="[%F %T] " 

export TERM="alacritty"
export VCODE="code"
export EDITOR="micro"
export MICRO_TRUECOLOR=1
export VIDEO="mpv"

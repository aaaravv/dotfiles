### Profiles ###
#!/bin/sh
# profile - runs on login
#           read by login shell
#           set environment variables here

### EXPORTS 
# XDG base directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

### "bat" as manpager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# zsh config dir
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"

# ZSH History
export HISTFILE=~/.zsh_history
export HISTFILESIZE=1000
export HISTSIZE=1000
export SAVEHIST=1000
export HISTTIMEFORMAT="[%F %T] " 

export TERM="alacritty"                                 # getting proper colors
export VCODE="code"                          			# for Visual Studio Code
export EDITOR="micro"              		        		# for micro terminal editor
export MICRO_TRUECOLOR=1					

# initialize completions
autoload -Uz compinit && compinit -i
zstyle ':completion:*' menu select
zmodload zsh/complist

# tab complete hidden files
_comp_options+=(globdots)

# man zshcompsys for matcher-list
# match case insensitively
# allow partial completion before ., _ or -
# allow completing on the left side of the written text
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# better history
setopt extendedhistory histignorespace histsavenodups histignorealldups

# better completion
setopt alwaystoend completeinword

# better cd
setopt autocd autopushd pushdignoredups pushdminus

# other useful options (see man zshoptions)
setopt interactivecomments

# disable highlighting pasted text
zle_highlight=('paste:none')

# this speeds up pasting with autosuggestions
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

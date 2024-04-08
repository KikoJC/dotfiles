# Admin
alias grubup="sudo update-grub"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias rmpkg="sudo pacman -Rdd"
alias big="expac -H M '%m\t%n' | sort -h | nl"              # Sort installed packages according to size in MB (expac must be installed)
alias gitpkg='pacman -Q | grep -i "\-git" | wc -l'			# List amount of -git packages
alias hw='hwinfo --short'                                   # Hardware Info

#Utilities
alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias wget='wget -c '
alias grep='grep --color=auto'
alias fgrep='grep -F --color=auto'
alias egrep='grep -E --color=auto'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias conf="config_navigation"
# alias conf='cd "$(find $XDG_CONFIG_HOME/ -mindepth 1 -maxdepth 1 -type d | fzf)"'
alias tmuxconf='"$EDITOR" "$XDG_CONFIG_HOME"/tmux/tmux.conf'
alias gtzk='cd $HOME/nextcloud/writing && zk graph -f json -i'
alias gtart='cd $HOME/nextcloud/writing/articles'

# Replace ls with eza
alias ls='eza -al --color=always --group-directories-first --icons' # preferred listing
alias la='eza -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first --icons'  # long format
alias lt='eza -aT --color=always --group-directories-first --icons' # tree listing
alias l.='eza -ald --color=always --group-directories-first --icons .*' # show only dotfiles
alias ip='ip -color'

# Get fastest mirrors 
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist" 
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist" 
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist" 
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist" 

# Help people new to Arch
# alias pacdiff='sudo -H DIFFPROG=meld pacdiff'
alias tb='nc termbin.com 9999'

# Replace yay with paru if installed
[ ! -x /usr/bin/yay ] && [ -x /usr/bin/paru ] && alias yay='paru'

# Personal preference aliases
## Neovim Configuration switcher
alias nvkick="NVIM_APPNAME=nvKickstartv2 nvim"
alias nvtest="NVIM_APPNAME=nvTesting nvim"
alias nvs='nvims'

# Command line programs
alias binds='IFS=$'\''\n'\'' print -c -- $(bindkey | grep -v -e '\''\^\[\['\'' -e '\''\^\[O[A-H]"'\'' | sed -e '\''s/^"//g'\'' -e '\''s/" / /g'\'') unset IFS'
alias cat='bat'
alias ccd='wl-copy "$(pwd)"'
alias fm='xplr'
alias lg='lazygit'
alias man='batman'
alias nv='nvim'
alias wiki='wiki-tui'
alias yt='ytfzf'
alias zreload='. $ZDOTDIR/.zshrc'


# Git

# TODO: I'm sure I wanted to know what these things did so I could use them in my "super
# useful next-gen automagic AI replacement plugin". Or something. Still, I thought they
# would be useful, so read the pertinent manuals/things/whatever.
# Also, move to scripts. It probably belongs in there.
#
#  ls -l | fzf --preview="echo user={3} when={-4..-2}; cat {-1}" --header-lines=1
#  find $XDG_CONFIG_HOME/ -mindepth 1 -maxdepth 3 -type d,f | fzf --preview="echo user={3}
# when={-4..-2}; cat {-1}" --header-lines=1

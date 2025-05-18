alias conf="config_navigation"
alias tmuxconf='"${EDITOR}" "{$XDG_CONFIG_HOME}"/tmux/tmux.conf'
alias gtzk='cd $HOME/nextcloud/writing && zk graph -f json -i'
alias gtart='cd $HOME/nextcloud/writing/articles'

# Personal preference aliases
## Neovim Configuration switcher
alias nvkick="NVIM_APPNAME=nvKickstartv2 nvim"
alias nvtest="NVIM_APPNAME=nvTesting nvim"
alias nvs='nvims'

# Command line programs
alias binds='IFS=$'\''\n'\'' print -c -- $(bindkey | grep -v -e '\''\^\[\['\'' -e '\''\^\[O[A-H]"'\'' | sed -e '\''s/^"//g'\'' -e '\''s/" / /g'\'') unset IFS'
alias cat='bat'
alias fm='yazi'
alias lg='lazygit'
eval "$(batman --export-env)"
alias man='batman'
alias nv='nvim'
alias wiki='wiki-tui'
alias youtube='ytfzf'
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

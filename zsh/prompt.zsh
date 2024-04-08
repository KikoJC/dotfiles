setopt prompt_subst

autoload -Uz add-zsh-hook
autoload -Uz vcs_info
autoload -Uz promptinit
promptinit

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
zstyle ':vcs_info:git:*' formats       '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

add-zsh-hook precmd vcs_info
export PS1='%~ ${vcs_info_msg_0_}> '

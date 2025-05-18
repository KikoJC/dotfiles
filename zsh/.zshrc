# https://apple.stackexchange.com/questions/388622/zsh-zprofile-zshrc-zlogin-what-goes-where

# Set "${PATH}" if ~/.local/bin exist
if [ -d "${HOME}/.local/bin" ]; then
    PATH="${HOME}/.local/bin:${PATH}"
fi

if [ -d "${HOME}/.local/bin/scripts" ]; then
    PATH="${HOME}/.local/bin/scripts:${PATH}"
fi

if [ -d "${HOME}/Applications" ]; then
    PATH="${HOME}/Applications:${PATH}"
fi

# Prompt
source "${ZDOTDIR}"/prompt.zsh

precmd_functions+=(set_win_title)

## Plugins section: Enable fish style features
# Use syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Use autosuggestion
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Use history substring search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# Use fzf
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
eval "$(fzf --zsh)"

# Better vim mode for zsh
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
# Change to Zsh's default readkey engine
ZVM_READKEY_ENGINE=$ZVM_READKEY_ENGINE_ZLE

# Arch Linux command-not-found support, you must have package pkgfile installed
# https://wiki.archlinux.org/index.php/Pkgfile#.22Command_not_found.22_hook
[[ -e /usr/share/doc/pkgfile/command-not-found.zsh ]] && source /usr/share/doc/pkgfile/command-not-found.zsh

# Advanced command-not-found hook
[[ -e /usr/share/doc/find-the-command/ftc.zsh ]] && source /usr/share/doc/find-the-command/ftc.zsh


## Options section
setopt append_history                                            # Immediately append history instead of overwriting
setopt autocd                                                    # if only directory path is entered, cd there.
setopt auto_cd
setopt auto_pushd
setopt correct                                                   # Auto correct mistakes
setopt extendedglob                                              # Extended globbing. Allows using regular expressions with *
setopt histignorealldups                                         # If a new command is a duplicate, remove the older one
setopt inc_append_history
setopt interactive_comments                                      # Allow inline comments.
setopt nobeep                                                    # No beep
setopt nocaseglob                                                # Case insensitive globbing
setopt nocheckjobs                                               # Don't warn about running processes when exiting
setopt numericglobsort                                           # Sort filenames numerically when it makes sense
setopt pushdminus
setopt pushd_ignore_dups
setopt rcexpandparam                                             # Array expension with parameters

# Completion.
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' rehash true                              # automatically find new executables in path 
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' menu select
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*:descriptions' format '%U%F{cyan}%d%f%u'

# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.cache/zcache

# automatically load bash completion functions
autoload -U +X bashcompinit && bashcompinit

# Custom configuration
source "${ZDOTDIR}"/.zshenv
source "${ZDOTDIR}"/myfunctions.zsh
source "${ZDOTDIR}"/aliases.zsh
source "${ZDOTDIR}"/garuda-aliases.zsh
source "${ZDOTDIR}"/keybindings.zsh
source "${ZDOTDIR}"/zoxide.zsh
source "${XDG_CONFIG_HOME}"/fzf/fzf.conf


[ -f "/home/kiko/.ghcup/env" ] && . "/home/kiko/.ghcup/env" # ghcup-env

# Unbind keys
bindkey -r "^O"

# Ctrl + h/l behave like arrows in insert mode
bindkey -M viins "^h" backward-char
bindkey -M viins "^l" forward-char

# Start tmux "Main" session
bindkey -sM viins "^Ot" tse.sh

# Change tM viinso config dir
bindkey -sM viins "^Oc" config_navigation
bindkey -sM viins "^Om" master_navigation
bindkey -sM viins "^Ow" html-finb.sh

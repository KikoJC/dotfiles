# Unbind keys
bindkey -r "^O"

# Ctrl + h/l behave like arrows in insert mode
bindkey -M viins "^h" backward-char
bindkey -M viins "^l" forward-char

# Start tmux "Main" session
bindkey -s "^Ot" tse.sh

# Change to config dir
bindkey -s "^Oc" config_navigation
bindkey -s "^Om" master_navigation
bindkey -s "^Ow" html-finb.sh

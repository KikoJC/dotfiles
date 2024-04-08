nvims() {
    local fzf_opts=(--prompt=" Config  " --height=~50% --layout=reverse --border --exit-0)
    local items=("default" "nvKickstartv2" "nvJupyter" "nvQuarto" "nvTesting")
    local config=$(printf "%s\n" "${items[@]}" | fzf ${fzf_opts[*]})
    if [ -z $config ]; then
        echo "Nothing selected"
        return 0
    elif [ $config == "default" ]; then
        config=""
    fi
    NVIM_APPNAME=$config nvim $@
    zle reset-prompt
}

# Start tmux "Main" session
# https://catonmat.net/bash-one-liners-explained-part-three
starttmux() {
    [ -x "$(command -v tmux)" ] && \
    [ -z "${TMUX}" ] &&  \
    command tmux new-session -A -s Main
}

# Python venv wrapper
lsvenv() {
  ls -1 $VIRTUAL_ENV
}

venv() {
    VIRTUAL_ENV="$HOME/pyvenvs"
    if [ $# -eq 0 ]
        then
            echo "Please provide venv name"
        else
            source "$VIRTUAL_ENV/$1/bin/activate"
    fi
}

mkvenv() {
  if [ $# -eq 0 ]
    then
      echo "Please provide venv name"
    else
      python3 -m venv $VIRTUAL_ENV/$1
  fi
}

rmvenv() {
  if [ $# -eq 0 ]
    then
      echo "Please provide venv name"
    else
      rm -r $VIRTUAL_ENV/$1
  fi
}

# Change to specific dir from anywhere.
config_navigation() {
    if [ -z "$XDG_CONFIG_HOME" ]; then
        local -r config_dir=("$HOME"/.config)
    else
        local -r config_dir=("$XDG_CONFIG_HOME")
    fi

    local -r dir_list=$(find "${config_dir[@]}" -mindepth 1 -maxdepth 2 -type d)
    local -r dir_selected="$(printf "%s" "${dir_list[@]}" | fzf)"

    if [ -z "$dir_selected" ]; then
        return 0
    fi

    cd "$dir_selected"
}

master_navigation() {
    if [ -d "~/master" ]; then
        return 0
    else
        local -r dir=(~/master)
    fi

    local -r dir_list=$(find "${dir[@]}" -mindepth 1 -maxdepth 2 -type d)
    local -r dir_selected="$(printf "%s" "${dir_list[@]}" | fzf)"

    if [ -z "$dir_selected" ]; then
        return 0
    fi

    cd "$dir_selected"
}

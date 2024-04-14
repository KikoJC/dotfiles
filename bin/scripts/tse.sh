#!/usr/bin/env bash

# Tmux session manager.
#
# We want this to be simple.
# 1. Get a list of the cli-apps/dirs that we want to launch/cd into.
# 2. Based on what we choose, either cd to dir or launch the program in a new tmux session.
# 3. Bask in the awesomeness that is using a tool that you've made.

# "Settings" lol
declare -a TSE_BASE_DIRS=(~/master ~/master/** ~/master/config)
declare -a TSE_FZF_OPTS=(--prompt=" Dirs and programs  " --height=~50% --layout=reverse --border --exit-0)
declare -a TSE_PROGRAM_LIST=(ncspot xplr btop youtube)

# Items to choose
declare -a TSE_DIR_LIST
declare TSE_SESSION_EXIST
TSE_DIR_LIST=("$(find "${TSE_BASE_DIRS[@]}" -mindepth 1 -maxdepth 1 -type d)")
TSE_SESSION_EXIST=$(pgrep tmux)

# Getting the name and type of the item selected
tse_sesh_name_type() {
    local -r item_sel=$(printf "%s\n%s\n" "${TSE_PROGRAM_LIST[@]}" "${TSE_DIR_LIST[@]}" | fzf "${TSE_FZF_OPTS[@]}")
    local -r is_cmd=$(printf "%s\n" "${TSE_PROGRAM_LIST[@]}" | grep ^"${item_sel}"$)
    local -r is_dir=$(printf "%s\n" "${TSE_DIR_LIST[@]}" | grep ^"${item_sel}"$)

    if [[ -z "${item_sel}" ]]; then
        echo "No item selected."
        return 0
    fi

    if [[ "${item_sel}" == "${is_dir}" ]]; then
        local -r tse_type=dir
        local -r session_name=$(basename "${item_sel}")
    elif [[ "${item_sel}" == "${is_cmd}" ]]; then
        local -r tse_type=cmd
        local -r session_name="${item_sel}"-app
    fi

    tse_actions
}

# Action to perform depending on choice and state of tmux
tse_actions() {
    if [[ -z "${TMUX}" ]] && [[ -z "${TSE_SESSION_EXIST}" ]]; then
        if [[ "${tse_type}" == "dir" ]]; then
            tmux new-session -s "${session_name}" -c "${item_sel}"
            exit 0
        elif [[ "${tse_type}" == "cmd" ]]; then
            tmux new-session -s "${session_name}" "${item_sel}"
            exit 0
        fi
        tmux attach-session -t "${session_name}"
    fi

    if [[ -z "${TMUX}" ]] && [[ -n "${TSE_SESSION_EXIST}" ]]; then
        if ! tmux has-session -t "${session_name}" 2>/dev/null; then
            if [[ "${tse_type}" == "dir" ]]; then
                tmux new-session -ds "${session_name}" -c "${item_sel}"
                exit 0
            elif [[ "${tse_type}" == "cmd" ]]; then
                tmux new-session -ds "${session_name}" "${item_sel}"
                exit 0
            fi
        fi
        tmux attach-session -t "${session_name}"
    fi

    if ! tmux has-session -t "${session_name}" 2>/dev/null; then
        if [[ "${tse_type}" == "dir" ]]; then
            tmux new-session -ds "${session_name}" -c "${item_sel}"
        elif [[ "${tse_type}" == "cmd" ]]; then
            tmux new-session -ds "${session_name}" "${item_sel}"
        fi
    tmux switch-client -t "${session_name}"
    fi

    tmux switch-client -t "${session_name}"
}

tse_sesh_name_type

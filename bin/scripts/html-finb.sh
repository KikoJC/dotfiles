#!/usr/bin/env bash

# Fetch list of html files in current directory.
open_html_in_browser() {
    local -r SAS_BROWSER=wyeb
    local file_list=($(printf "%s\n" "${PWD}"/*.html))

    if [ "${#}" -eq 0 ]; then
        if [ -f "${file_list}" ]; then
            local file_selected=$(printf "%s\n" "$(basename -a "${file_list[@]}")" | bemenu -l 10)
            if [ -z "${file_selected}" ]; then
                echo "No file selected"
                return 0
            fi
        else
            echo "No html files found in this directory"
            return 0
        fi
    elif [ "${#}" -eq 1 ]; then
        local arg="$1"
        local fixed_arg="${1}.html"

        if [ -a "${arg}" ]; then
            local file_selected="${arg}"
        elif [ -a "${fixed_arg}" ]; then
            local file_selected="${fixed_arg}"
        else
            echo 'File not found in directory'
            return 0
        fi
    else
        echo "This function takes 1 or 0 arguments"
        return 0
    fi

    command "${SAS_BROWSER}" file://"${PWD}"/"${file_selected}" 1>/dev/null 2>/dev/null & disown

    return 0
}

open_html_in_browser "$@"

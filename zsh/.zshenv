# History
HISTFILE=$ZDOTDIR/.zhistory
HISTSIZE=10000000
SAVEHIST=10000000

# XDG
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_CONFIG_DIR="${XDG_CONFIG_DIR:-$HOME/.config}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_DATA_DIRS="${XDG_DATA_DIRS:-$XDG_DATA_HOME:/usr/local/share:/usr/share}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_DESKTOP_DIR="${XDG_DESKTOP_DIR:-$HOME/Desktop}"
export XDG_DOWNLOAD_DIR="${XDG_DOWNLOAD_DIR:-$HOME/Downloads}"
export XDG_TEMPLATES_DIR="${XDG_TEMPLATES_DIR:-$HOME/Templates}"
export XDG_PUBLICSHARE_DIR="${XDG_PUBLICSHARE_DIR:-$HOME/Public}"
export XDG_DOCUMENTS_DIR="${XDG_DOCUMENTS_DIR:-$HOME/Documents}"
export XDG_MUSIC_DIR="${XDG_MUSIC_DIR:-$HOME/Music}"
export XDG_PICTURES_DIR="${XDG_PICTURES_DIR:-$HOME/Pictures}"
export XDG_VIDEOS_DIR="${XDG_VIDEOS_DIR:-$HOME/Videos}"
# export XDG_CACHE_HOME=~/.cache
# export XDG_CONFIG_HOME=~/.config
# export XDG_DATA_HOME=~/.local/share
# export XDG_DOWNLOADS_DIR=~/Downloads
# export XDG_PICTURES_DIR=~/Pictures
# export XDG_SCREENSHOTS_DIR="$HOME/Pictures/screenshots/"
# export XDG_STATE_HOME=~/.local/state

export TERMINAL="ghostty"
export TERM="xterm-256color"
export BROWSER="zen-browser"
export EDITOR="nvim"
export VISUAL="nvim"
export VIRTUAL_ENV="$HOME/pyvenvs"
[ -d "$VIRTUAL_ENV" ] || mkdir "$VIRTUAL_ENV"
[ -x "$(which zk)" ] && export ZK_NOTEBOOK_DIR="$HOME/master/knowledge-base"

# Nvm
export NVM_DIR="$HOME"/.nvm
[ -s "$NVM_DIR"/nvm.sh ] && \. "$NVM_DIR"/nvm.sh  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## For cs50
# export LIBRARY_PATH=/usr/local/lib
# export C_INCLUDE_PATH=/usr/local/include
# export LD_LIBRARY_PATH=/usr/local/lib
# export CC="clang"
# export CFLAGS="-ferror-limit=1 -gdwarf-4 -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-gnu-folding-constant -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wno-unused-but-set-variable -Wshadow"
# export LDLIBS="-lcrypt -lcs50 -lm"

# Add to $PATH
PATH="/home/kiko/.cargo/bin${PATH:+:${PATH}}"; export PATH;
PATH="/home/kiko/perl5/bin${PATH:+:${PATH}}"; export PATH;
PATH="/home/kiko/Desktop${PATH:+:${PATH}}"; export PATH;
PATH="/home/kiko/.local/bin${PATH:+:${PATH}}"; export PATH;
# PATH="/home/kiko/.local/bin${PATH:+:${PATH}}"; export PATH;

# Perl
PERL5LIB="/home/kiko/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/kiko/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base /home/kiko/perl5"; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/kiko/perl5"; export PERL_MM_OPT;


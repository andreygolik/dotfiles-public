HOST=$(hostname -s)

### THEME ###
case ${HOST} in
  ubuntu)
    #source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
    ZSH_THEME="powerlevel9k/powerlevel9k"
    POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh context_joined dir vcs vi_mode background_jobs root_inidicator)
    POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
    POWERLEVEL9K_STATUS_OK=false
    POWERLEVEL9K_VI_INSERT_MODE_STRING=''
    POWERLEVEL9K_VI_COMMAND_MODE_STRING='vi mode'
    POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='green'
    POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='black'
    ;;
  host1)
    autoload -Uz colors
    colors
PROMPT="\
%{$bg_bold[magenta]%} ${HOST} %{$reset_color%} \
%{$fg_bold[cyan]%}%~ \
%{$fg_bold[default]%}» \
%{$reset_color%}"
    ;;
  host2)
    autoload -Uz colors
    colors
PROMPT="\
%{$fg_bold[magenta]%}${HOST} \
%{$fg_bold[cyan]%}%~ \
%{$fg_bold[blue]%}♦ \
%{$reset_color%}"
    ;;
  host3)
    autoload -Uz colors
    colors
    PROMPT="\
%{$fg_bold[green]%}${HOST:0:2}%{$fg_bold[red]%}${HOST:2} \
%{$fg_bold[cyan]%}%~ \
%{$fg_bold[magenta]%}π \
%{$reset_color%}"
    ;;
  *)
    ZSH_THEME="lukerandall"
    ;;
esac

DEFAULT_USER=`whoami`
CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
#COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"

# ZSH_CUSTOM=/path/to/new-custom-folder

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
#  vi-mode
  git
#  archive
#  extract
  ubuntu
  command-not-found
  common-aliases
  ng
#  npm
#  node
#  screen
  sudo
#  systemd
  tmux
  docker
)

# tmux plugin
ZSH_TMUX_AUTOSTART="false"
ZSH_TMUX_AUTOSTART_ONCE="true"
ZSH_TMUX_AUTOCONNECT="true"
ZSH_TMUX_AUTOQUIT=${ZSH_TMUX_AUTOSTART}
ZSH_TMUX_FIXTERM="true"

# Environment variables
source ~/.exports
[[ -f ~/.exports.development ]] && source ~/.exports.development

# oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Aliases
source ~/.aliases

# Functions
source ~/.functions

# Dircolors
#if [ -x "$(command -v dircolors)" ]; then
#  eval "$(dircolors -b ~/.dircolors)"
#fi

# NVM
#source ~/.nvm-init

# Keychain/ssh-agent
/usr/bin/keychain --nogui -Q -q
source $HOME/.keychain/$HOST-sh

# ScreenFetch
if [[ ! ${HOST} == 'host2' ]]; then
  #screenfetch
  neofetch --color_blocks off
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/pratik/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_DISABLE_COMPFIX=true

#POWERLEVEL9K_MODE="nerdfont-complete"
##POWERLEVEL9K_MODE='nerdfont-complete'

############ POWERLEVEL THEME SETTINGS ##############

# `$(_pp_c x y`) evaluates to `y` if the terminal supports >= 256 colors and to `x` otherwise.
zmodload zsh/terminfo
if (( terminfo[colors] >= 256 )); then
	function _pp_c() { print -nr -- $2 }
else
	function _pp_c() { print -nr -- $1 }
	typeset -g POWERLEVEL9K_IGNORE_TERM_COLORS=true
fi

#POWERLEVEL9K_MODE='awesome-fontconfig'
# POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs nvm)
# POWERLEVEL9K_DISABLE_RPROMPT=true
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time ram context)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv context)

# ram
POWERLEVEL9K_RAM_BACKGROUND='none'
POWERLEVEL9K_RAM_FOREGROUND='006'

# context
#POWERLEVEL9K_CONTEXT_BACKGROUND='none'
#POWERLEVEL9K_CONTEXT_FOREGROUND='006'

typeset -g POWERLEVEL9K_CONTEXT_{DEFAULT,ROOT,REMOTE_SUDO,REMOTE,SUDO}_BACKGROUND=none
typeset -g POWERLEVEL9K_CONTEXT_{DEFAULT,REMOTE_SUDO,REMOTE,SUDO}_FOREGROUND=$(_pp_c 7 244)
typeset -g POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND=$(_pp_c 3 11)


POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND='006'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

POWERLEVEL9K_LEFT_SEGMENT_END_SEPARATOR=
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=' '
POWERLEVEL9K_RIGHT_SEGMENT_END_SEPARATOR=
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=
POWERLEVEL9K_WHITESPACE_BETWEEN_LEFT_SEGMENTS=

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
# POWERLEVEL9K_TIME_FORMAT="%D{\uf073 %d-%h}"
# POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M \uf073 %d-%h}"

POWERLEVEL9K_DIR_SHOW_WRITABLE=true

POWERLEVEL9K_DISK_USAGE_NORMAL_BACKGROUND=none
POWERLEVEL9K_DISK_USAGE_WARNING_BACKGROUND=magenta
POWERLEVEL9K_DISK_USAGE_CRITICAL_BACKGROUND=red
POWERLEVEL9K_TIME_BACKGROUND=none
POWERLEVEL9K_TIME_FOREGROUND=white

POWERLEVEL9K_DIR_HOME_BACKGROUND=none
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=none
POWERLEVEL9K_DIR_ETC_BACKGROUND=none
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=none
POWERLEVEL9K_DIR_NOT_WRITABLE_BACKGROUND=none

POWERLEVEL9K_DIR_HOME_FOREGROUND=blue
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=blue
POWERLEVEL9K_DIR_ETC_FOREGROUND=blue
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=blue
POWERLEVEL9K_DIR_NOT_WRITABLE_FOREGROUND=red

POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="blue"

POWERLEVEL9K_VCS_GIT_ICON='%fon %F{040}\uf1d3 '
POWERLEVEL9K_VCS_GIT_GITHUB_ICON='%fon %F{040}\uf09b '
POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON='%fon %F{040}\uf171 '
POWERLEVEL9K_VCS_GIT_GIT_GITLAB_ICON='%fon %F{040}\uf296 '

POWERLEVEL9K_VCS_CLEAN_BACKGROUND=none
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=none
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=none
POWERLEVEL9K_VCS_LOADING_BACKGROUND=none
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="040"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="red"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="yellow"
POWERLEVEL9K_VCS_LOADING_FOREGROUND="grey"

# POWERLEVEL9K_VCS_BRANCH_ICON='%f %F{040}\uE0A0 '
POWERLEVEL9K_VCS_UNTRACKED_ICON=$'%{\b?%}'
POWERLEVEL9K_VCS_UNSTAGED_ICON=$'%{\b!%}'
POWERLEVEL9K_VCS_STAGED_ICON=$'%{\b+%}'

# POWERLEVEL9K_ETC_ICON=
# POWERLEVEL9K_FOLDER_ICON=
# POWERLEVEL9K_HOME_ICON=
# POWERLEVEL9K_HOME_SUB_ICON=
POWERLEVEL9K_DIR_NOT_WRITABLE_VISUAL_IDENTIFIER_COLOR=red
POWERLEVEL9K_LOCK_ICON=$'\uf023'

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="\n"
# Prompt symbol: '❮' when vicmd keymap is active, '❯` otherwise; red on error, green on success.
local p='%F{%(?.green.red)}${${${KEYMAP:-0}:#vicmd}:+❯}${${$((!${#${KEYMAP:-0}:#vicmd})):#0}:+❮}%f '
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="$p"
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=' %F{%(?.green.red)}%(#.#.$)%f '
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=' %F{%(?.green.red)}➜%f ' 

# POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%K{black}%F{white} `date +%T` \uf017 %f%k%F{white}%f $ "

POWERLEVEL9K_NVM_BACKGROUND=none
POWERLEVEL9K_NVM_FOREGROUND=green
POWERLEVEL9K_NODE_ICON='%fvia %F{green}⬢'

############ END- POWERLEVEL THEME SETTINGS ##############


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions django python virtualenv)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin

export GOPATH=$HOME/golib
export PATH=$PATH:$GOPATH/bin
export GOPATH=$GOPATH:$HOME/Projects/GoPlay

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

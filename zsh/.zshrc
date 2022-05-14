# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/stefanh/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

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
# plugins=(git z github history macos pip pyenv pylint python sublime vscode colorize)
plugins=(
    git
    z
    github
    history
    macos
    pyenv
    pylint
    python
    sublime
    vscode
    bundler
    dotenv
    rake
    rbenv
    ruby
    jsontools
    node
    pip
    web-search
    zsh-autosuggestions
    colored-man-pages
    colorize
    common-aliases
    copyfile
)
ZSH_COLORIZE_STYLE="colorful"

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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source /Users/stefanh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/stefanh/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/stefanh/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/stefanh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


source ~/.bashrc

unalias pip

# icdiff with exit code
[ ! -z "$(which icdiff)" ] && function xcdiff {
  out__=$(icdiff $1 $2) && echo $out__ && [ -z $out__ ]
}

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"
export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"
export PATH="/Users/stefanh/.gem/ruby/3.0.0/bin:$PATH"

alias inkscape="/Applications/Inkscape.app/Contents/MacOS/inkscape"
alias python3.10="/usr/local/Cellar/python@3.10"
export PATH="/usr/local/opt/python@3.10/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/stefanh/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/stefanh/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/stefanh/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/stefanh/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="$HOME/.rbenv/bin:$PATH"

# ============================ Being of my theme customization ============================
# ==================== Begin of original `robbyrussell` theme ====================
PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
# ==================== Begin of my added ====================
PROMPT+="%{$fg[green]%}$(date +%F) %*%{$fg[magenta]%}|"
PROMPT+=" %{$fg[yellow]%}%n%{$fg[magenta]%}@%{$fg[yellow]%}%m"
# ==================== End of my added ====================
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
# ==================== End of original `robbyrussell` theme ====================
# ============================ End of my theme customization ============================

PATH=$PATH:$(ruby -e 'puts Gem.bindir')
alias lc='colorls'

eval "$(starship init zsh)"


# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mortalscumbag"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git-extras nvm docker)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:$HOME/bin:$PATH:$HOME/Workspace/depot_tools"
export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH
# export MANPATH="/usr/local/man:$MANPATH"
source $ZSH/oh-my-zsh.sh

if [ -f "$HOME/.env" ]; then
  source $HOME/.env
fi

export ANDROID_HOME=/usr/local/Caskroom/android-platform-tools/30.0.0
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH=${PATH}:${HOME}/flutter/bin
export REMAX_INTEGRATION_TEST_REPO=git@gitlab.alipay-inc.com:remax/integration-test.git

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='nvim'

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export ECTO_EDITOR='nvim'

# alias serve="ruby -rwebrick -e\"s = WEBrick::HTTPServer.new(:Port => 8964, :DocumentRoot => Dir.pwd); trap('INT') { s.shutdown }; s.start\""
alias flush_dns_cache="dscacheutil -flushcache sudo discoveryutil udnsflushcaches"
alias y="yarn"
alias ay="ayarn --ignore-engines"
alias ty="tyarn --ignore-engines"
alias nt="tnpm --by=npm"
alias t="tnpm"
alias n="npm"
alias node-debug="node --inspect-brk"
alias npx-debug="npx --node-arg=--inspect-brk"
alias vimdiff='nvim -d'
alias vim='nvim'
alias y-linked="find . -type l | grep -v .bin | sed 's/^\.\/node_modules\///'"
alias y-unlink-all="y-linked | xargs yarn unlink && yarn install --check-files"
alias ay-unlink-all="y-linked | xargs yarn unlink && ayarn install --check-files"
alias jj='projj'
alias dd='projj find'

# https://help.github.com/articles/using-ssh-agent-forwarding#your-key-must-be-available-to-ssh-agent
# ssh-add > /dev/null 2>&1

unalias run-help > /dev/null 2>&1
autoload run-help > /dev/null 2>&1
HELPDIR=/usr/local/share/zsh/helpfiles

unsetopt RM_STAR_SILENT
setopt RM_STAR_WAIT

[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

# added by travis gem
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export JAVA_HOME=$(/usr/libexec/java_home)

# just env path
export PATH=$HOME/.just-installs/bin:$PATH
export PATH=${PATH}:$HOME/.cli

eval $(thefuck --alias)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# add Pulumi to the PATH
export PATH=$PATH:$HOME/.pulumi/bin

export NODE_EXTRA_CA_CERTS="$(mkcert -CAROOT)/rootCA.pem"

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f $HOME/.nvm/versions/node/v10.5.0/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh ]] && . $HOME/.nvm/versions/node/v10.5.0/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"
export GPG_TTY=$(tty)

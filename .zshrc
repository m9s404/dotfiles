# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/m9s/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# Brew 
eval "$(/opt/homebrew/bin/brew shellenv)"

# Starship
eval "$(starship init zsh)"

# fzf

export FZF_BASE=/opt/homebrew/bin/fzf

plugins=(
  git
  bundler
  dotenv
  macos
  rake
  rbenv
  ruby
  npm
  zsh-autosuggestions
  zsh-syntax-highlighting
  term_tab
  zbell
  fzf
  sudo
  web-search
)

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
# source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



autoload -U +X bashcompinit && bashcompinit

## Aliases

alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
#alias python='python3'
alias py='python3'
alias pip='pip3'
# alias modz='vim ~/.zshrc'
alias mvrc='nvim ~/.vimrc'
alias modrc='nvim ~/.zshrc'
alias modtmux='nvim ~/.tmux.conf'
# alias smodz='source ~/.zshrc'
alias sourcerc='source ~/.zshrc'
# alias catz='cat ~/.zshrc'
alias catrc='cat ~/.zshrc'
# alias k='kubectl'
alias k='kubecolor'
alias mk='minikube'
alias tf='terraform'
alias dil='docker image ls'
alias ks='kubeselect'
alias pods='kubectl get pods -A -o wide | grep -i'
alias ap='kubectl get pods -A'
alias nr='kubectl get pods -A --no-headers|grep -vi running'
alias kcontext='kubectl config current-context'
alias kgn='kubectl get nodes'
alias ktn='kubectl top nodes'
alias ktns='kubectl top nodes | sort -k5'
alias kgda='kubectl get deploy -A'
alias ktnrw='kubectl top nodes -l role=worker'
alias sublime='open /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias kgp='kubectl get pods'
alias kaf='kubectl apply -f'
alias kdn='kubectl describe node'
alias mip='curl ifconfig.me'
alias kp='kube-prompt'
# alias python='python3'
# alias python2='/usr/bin/python'
# alias pip2='pip'
# alias pip='pip3'
alias hiddens="ls -a| grep '^.'| grep -vi '^[A-Z]'"
alias checkports="lsof -i -P|grep -i listen"
alias mk8s='microk8s'
alias v='nvim'

### Functions
## Kubernetes

function setns(){
        kubectl config set-context --current --namespace=$1
}

# Get Logs
function klogs(){
	kubectl -n $1 logs $2
}
# Exec Pod
function kex(){
	kubectl -n $1 exec -it $2 -- sh
}
# Get Ingress
function king(){
	kubectl -n $1 get ing -o yaml
}
# Delete Pod
function kdel(){
	kubectl delete po -n $1
}
## add force ^

# Describe Pod

function kdp(){
  kubectl -n $1 describe pod
}

# Get Pod's Life
function kpl(){
  kubectl -n $1 get po --sort-by=.status.startTime
  #kubectl get pods -A | awk '{ print $2 " - " $6 }' | grep '[^0..9]m$';
}

# Taint Nodes
function removetaint(){
	kubectl taint node $1 key:NoSchedule- && kubectl label node $1 taint-
}
function addtaint(){
	kubectl taint node $1 key=NoPod:NoSchedule && kubectl label node $1 taint=true
}

# Scale Deployments
function kscale(){
  kubectl -n $1 scale deploy $2 --replicas=$3
}

# Edit Deployments
function ked(){
  kubectl -n $1 edit deploy
}

# Get Deployments
function kgd(){
  kubectl -n $1 get deploy
}

## Other
# Create and Change Directory
function cdir(){
  mkdir $1 && cd $1
}

# Connect to endpoint with pass
function xconn() {
  echo "Connecting to $1"
  sshpass -f <(printf '%s\n' $3) ssh $2@$1
}

# Extract Logs
function extlog() {
  kubectl logs $1 > $1.log
  echo "Log available in $1.log"
}

function extlogs(){
  PODS=$(kubectl get po --no-headers | grep -i $1| awk '{print $1}')
  DATE=`date +%H-%M-%S-%d-%m-%Y`
  for POD in ${PODS[@]}; 
  do
    kubectl logs $POD > $DATE-$POD.log
  done
}

function works(){
  cd /Users/m9s/Work/2021/$1
}

function repos(){
  cd /users/m9s/repositories
}

function xconn(){
  echo "Connecting to $1 ..."
  sshpass -f <(printf '%s\n' $3) ssh $2@$1
}


## Paths
alias repopython='cd ~/repositories/Personal/devx404/python-x'
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
#echo 'alias k=kubectl' >>~/.zshrc
#echo 'complete -F __start_kubectl k' >>~/.zshrc
alias k=kubectl
complete -F __start_kubectl k

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/marcoaraya/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/marcoaraya/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/marcoaraya/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/marcoaraya/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

#### GIT
alias 'gcam'='git commit -am'


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Created by `pipx` on 2022-11-20 00:11:38
export PATH="$PATH:/home/marcoaraya/.local/bin"


###
alias 'firefox'='open -a firefox'
alias config='/usr/bin/git --git-dir=/home/marcoaraya/.cfg/ --work-tree=/home/marcoaraya'

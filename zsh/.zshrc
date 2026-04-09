# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

alias c='clear'

# Terragrunt
alias tg='terragrunt'

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Portless
alias pdev='NAME=${PWD##*/}; (sleep 3 && open "https://${NAME}.localhost") & portless $NAME npm run dev'
alias pndev='NAME=${PWD##*/}; (sleep 3 && open "https://${NAME}.localhost") & portless $NAME next dev'
alias pl='portless list'
alias pstop='sudo portless proxy stop'
alias pstart='sudo portless proxy start --https -p 443'

# Node Aliases
alias nev='npm run dev'
alias nrb='npm run build'
alias cfix='npm run lint:fix'
alias sfix='npm run lint:strict'

# Git Aliases
alias gst='git status'
alias gco='git checkout'
alias gcm='git commit -m'
alias gaa='git add .'
alias gpl='git pull'
alias gps='git push'
alias glg='git log --oneline --graph --decorate'
alias gb='git branch'
alias gcb='git checkout -b'
alias gd='git diff'
alias gcl='git clone'
alias grb='git rebase'
alias gsta='git stash'
alias gpop='git stash pop'
alias grs='git restore --staged'
alias gcom='git checkout main'

# Docker Aliases
alias dcb='docker compose build'

# Python Aliases
alias python='python3'
alias pip='pip3'
alias venv='source venv/bin/activate'

alias mfd='mintlify dev'

alias oz='cursor -n ~/.zshrc' 

# AWS Authenticate
alias backlog='aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 851725437270.dkr.ecr.us-east-2.amazonaws.com'

# Database CPU monitoring
alias db-cpu='(cd /Users/lorenphillips/Development/backend && source load_secrets.sh && aws cloudwatch get-metric-statistics --namespace AWS/RDS --metric-name CPUUtilization --dimensions Name=DBInstanceIdentifier,Value=coval-rds-database --start-time $(date -u -v-1H +%Y-%m-%dT%H:%M:%S) --end-time $(date -u +%Y-%m-%dT%H:%M:%S) --period 300 --statistics Average Maximum --region us-east-2)'


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Created by `pipx` on 2025-07-16 01:58:15
export PATH="$PATH:/Users/lorenphillips/.local/bin"

# Backend worktree setup aliases
alias lo="source /Users/lorenphillips/Development/backend.sh"
alias lodev="source /Users/lorenphillips/Development/backend-dev.sh"
alias loprod="source /Users/lorenphillips/Development/backend-prod.sh"
alias back="source /Users/lorenphillips/Development/backend.sh"  # Deprecated: use lo instead

unalias cac 2>/dev/null || true
cac() {
    conda activate coval
    unalias python 2>/dev/null || true
    export PATH="/opt/homebrew/Caskroom/miniconda/base/envs/coval/bin:$PATH"
}
alias dcd='docker compose down --remove-orphans'
alias sz='source ~/.zshrc'
alias covenv="source /Users/lorenphillips/Development/backend-dev-branch/evaluation_pipeline/coval_django/venv/bin/activate"

# Docker find function for backend container
alias dres='docker compose restart'
docker-find() {
    if [ $# -eq 0 ]; then
        echo "Usage: docker-find <filename> [search_pattern]"
        echo "Examples:"
        echo "  docker-find audio_file_status_observation.py"
        echo "  docker-find \"*.py\" \"Hatch\""
        return 1
    fi
    
    local filename="$1"
    local search_pattern="$2"
    
    # Find the file in the container
    local file_path=$(docker compose -p backend -f /Users/lorenphillips/Development/backend/compose.dev_full.yml exec simulation_worker find /coval -name "$filename" 2>/dev/null | head -1)
    
    if [ -z "$file_path" ]; then
        echo "File not found: $filename"
        return 1
    fi
    
    echo "Found: $file_path"
    
    # If search pattern provided, grep the file
    if [ -n "$search_pattern" ]; then
        echo "Searching for: $search_pattern"
        docker compose -p backend -f /Users/lorenphillips/Development/backend/compose.dev_full.yml exec simulation_worker cat "$file_path" | grep -A 3 -B 3 "$search_pattern"
    else
        # Just show the file path
        echo "To view file: docker compose -p backend -f /Users/lorenphillips/Development/backend/compose.dev_full.yml exec simulation_worker cat \"$file_path\""
    fi
}
alias klocal="for port in {3000..3005}; do lsof -ti:\$port | xargs kill -9 2>/dev/null; done"
alias logshh="docker-compose logs -f"

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"

# Development workflow aliases
alias dcud='docker compose up --build --remove-orphans -d'
alias dcudd='docker compose up --build --remove-orphans'
alias dcdd='docker compose down --remove-orphans'
alias dcr='docker compose down --remove-orphans && docker compose up --build --remove-orphans -d'
alias dcrr='docker compose down --remove-orphans && docker compose up --build --remove-orphans'
alias dcu='docker compose up --build --remove-orphans'
alias cc='claude --continue'
alias cdsp='claude --dangerously-skip-permissions'
alias bbb='back && cac && dcb && dcu'
alias csp="claude --dangerously-skip-permissions"

# Prod-like observability testing (logs ship directly to Datadog via HTTP)
alias bbdd='back && cac && dcb && COVAL_ENVIRONMENT=prod docker compose up --build --force-recreate run_setup_worker simulation_worker simmetrics_worker'
alias ddres='COVAL_ENVIRONMENT=prod docker compose up -d --force-recreate run_setup_worker simulation_worker simmetrics_worker'
alias ddlogs='docker compose logs -f run_setup_worker simulation_worker simmetrics_worker'

# Added by Antigravity
export PATH="/Users/lorenphillips/.antigravity/antigravity/bin:$PATH"

# OpenClaw Completion
source <(openclaw completion --shell zsh)

# LoBo - Open OpenClaw dashboard on Mac Mini
lobo() {
    local MINI='lorenphillips@lorens-mac-mini.tail75b732.ts.net'
    local RPATH='export PATH="/Users/lorenphillips/.local/share/fnm/node-versions/v22.22.0/installation/bin:$PATH"'

    # auto-approve any pending device pairing requests
    local pending=$(ssh $MINI "$RPATH && openclaw devices list" 2>&1 | grep -oE '[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}')
    for req in $pending; do
        ssh $MINI "$RPATH && openclaw devices approve $req" 2>/dev/null
    done

    local output=$(ssh $MINI "$RPATH && openclaw dashboard --no-open" 2>&1)
    local token=$(echo "$output" | grep -oE 'token=[a-f0-9]+' | head -1 | cut -d= -f2)
    if [ -z "$token" ]; then
        echo "failed to get token"
        return 1
    fi
    open -a "Google Chrome" "https://lorens-mac-mini.tail75b732.ts.net/?token=${token}"
}

# Mac Mini remote access
alias mini='code --remote ssh-remote+lorens-mac-mini.tail75b732.ts.net /Users/lorenphillips'

# Keep Mac awake (prevents sleep)
alias awake='caffeinate -dims'
alias sleep='pkill caffeinate && echo "No more caffeine"'

# Coval database query helper
query() {
    echo "╭──────────────────────────────────────────────────╮"
    echo "│  PostgreSQL Quick Reference                      │"
    echo "├──────────────────────────────────────────────────┤"
    echo "│  \\dt                  - list all tables          │"
    echo "│  \\d tablename         - describe table structure │"
    echo "│  \\x                   - toggle expanded display  │"
    echo "│  \\q                   - quit                     │"
    echo "╰──────────────────────────────────────────────────╯"
    echo ""

    source /Users/lorenphillips/Development/backend/load_secrets.sh 2>/dev/null

    if [ -n "$1" ]; then
        echo "SELECT * FROM $1;"
        echo ""
        psql "$DATABASE_URL" -c "SELECT * FROM $1;"
    else
        echo "Tip: query <tablename> runs SELECT * FROM <tablename>"
        echo ""
        psql "$DATABASE_URL"
    fi
}

alias npx-local="npx vercel env pull .env.local"

# Warp launch configurations (2x3 grid, fullscreen, bottom 3 run Claude)
alias wb='osascript ~/.warp/launch_grid.scpt /Users/lorenphillips/Development/backend'
alias wf='osascript ~/.warp/launch_grid.scpt /Users/lorenphillips/Development/frontend'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/lorenphillips/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/lorenphillips/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/lorenphillips/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/lorenphillips/google-cloud-sdk/completion.zsh.inc'; fi

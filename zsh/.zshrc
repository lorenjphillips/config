# Path to Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme configuration
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# ============================================
# Basic Aliases
# ============================================
alias c='clear'
alias sz='source ~/.zshrc'
alias oz='cursor -n ~/.zshrc'

# ============================================
# Node/NPM Aliases
# ============================================
alias nev='npm run dev'
alias nrb='npm run build'
alias cfix='npm run lint:fix'

# ============================================
# Git Aliases
# ============================================
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

# ============================================
# Docker Aliases
# ============================================
alias dcb='docker compose build'
alias dcu='docker compose --profile ddog up --build --remove-orphans'
alias dcud='docker compose --profile ddog up --build --remove-orphans -d'
alias dcudd='docker compose --profile ddog up --build --remove-orphans'
alias dcd='docker compose --profile ddog down --remove-orphans'
alias dcdd='docker compose --profile ddog down --remove-orphans'
alias dres='docker compose --profile ddog restart'
alias dcr='docker compose --profile ddog down --remove-orphans && docker compose --profile ddog up --build --remove-orphans -d'
alias dcrr='docker compose --profile ddog down --remove-orphans && docker compose --profile ddog up --build --remove-orphans'
alias logshh='docker-compose logs -f'

# ============================================
# Python Aliases
# ============================================
alias python='python3'
alias pip='pip3'
alias venv='source venv/bin/activate'

# ============================================
# Development Workflow Aliases
# ============================================
alias cc='claude --continue'
alias klocal="for port in {3000..3009}; do lsof -ti:\$port | xargs kill -9 2>/dev/null; done"


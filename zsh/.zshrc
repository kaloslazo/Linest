# AUTHOR: Kalos Lazo
# GITHUB: @kaloslazo

# =>> Sources
source ~/Repos/znap/znap.zsh 
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh

# =>> Exports
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.cargo/bin:$PATH"

# =>> Zsh generals
ZSH_THEME="robbyrussell"
CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="false"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13
zstyle -e ':autocomplete:list-choices:*' list-lines 'reply=( $(( LINES / 3 )) )'
zstyle ':autocomplete:history-incremental-search-backward:*' list-lines 8
zstyle ':autocomplete:history-search-backward:*' list-lines 256
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

DISABLE_LS_COLORS="false"
DISABLE_UNTRACKED_FILES_DIRTY="true"
ENABLE_CORRECTION="true"
HIST_STAMPS="dd/mm/yyyy"

# =>> Build-in plugins
plugins=(
  git
  web-search
  cp
  node
  zsh-shift-select
)

# =>> Znap plugins manager
znap source marlonrichert/zsh-autocomplete
znap source zsh-syntax-highlighting
znap source ael-code/zsh-colored-man-pages
znap source momo-lab/zsh-abbrev-alias
znap source wbingli/zsh-wakatime

# =>> Sources
source $ZSH/oh-my-zsh.sh

# =>> Aliases
alias ls="exa --icons --grid";
alias cat="bat --theme='Catppuccin-mocha'"
alias gits='git status'
alias gita='git add'
alias gitc='git commit -m'
alias gom='git push origin main'

# =>> Bindkeys
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# =>> Functions
kitty-reload() {
    kill -SIGUSR1 $(pidof kitty)
}

# =>> Zsh invoque
eval "$(starship init zsh)"
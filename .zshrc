## load antigen
source $HOME/antigen.zsh
antigen init $HOME/.antigenrc

## theme options
SPACESHIP_TIME_SHOW=true

## aliases
alias pi="pnpm install"
alias pd="pnpm dev"
alias j="z"
alias repos="j repos"
alias zshconfig="code ~/.zshrc"
alias ip="ipconfig getifaddr en0"


## plugins
plugins=(
    asdf
    command-not-found 
    git 
    colorize 
    npm 
    brew 
    zsh-completions
    zsh-autosuggestions
    zsh-syntax-highlighting
) 

## ASDF
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

## prefer nano
export EDITOR=nano
export VISUAL="$EDITOR"∑

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

## END zoxide
eval "$(zoxide init zsh)"

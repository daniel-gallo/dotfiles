autoload -U compinit promptinit

# Autocompletion
compinit
# Enable arrow-key autocompletion
zstyle ':completion:*' menu select
# Autocomplete aliases
setopt COMPLETE_ALIASES
# Enable privileged autocompletion
zstyle ':completion::complete:*' gain-privileges 1

# Syntax highlighting (requires zsh-syntax-highlighting)
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Autosuggestions (requires zsh-autosuggestions)
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Z (jump between recent folders)
source $HOME/.zsh/zsh-z/zsh-z.plugin.zsh

# Color aliases
alias ls='ls --color=auto'
alias grep='grep  --color=auto'

# Set vim as default
alias vi=vim
alias svi='sudo vim'
alias svim='sudo vim'
alias edit='vim'

# Prompt customization
fpath+=("$HOME/.zsh/pure")
promptinit
prompt pure 

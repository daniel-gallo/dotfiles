# Make brew install packages faster (use homebrew-autoupdate)
export HOMEBREW_AUTO_UPDATE_SECS="86400"

# Make Python 3 the default Python installation
alias python=python3
export PATH=/usr/local/Cellar/python@3.9/3.9.1_8/Frameworks/Python.framework/Versions/3.9/bin:$PATH

# Enable completion
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    # Update the cache once a day
    for dump in ~/.zcompdump(N.mh+24); do
        compinit
    done
    compinit -C
    
    # Use block-style selection
    zstyle ':completion:*' menu select

    # Case insensitive path-completion 
    zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
fi

# Colored ls
export CLICOLOR=True

# Autosuggestions based on history and completions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Prompt
eval "$(starship init zsh)"

# Syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# History substring
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Z jump around
. /usr/local/etc/profile.d/z.sh

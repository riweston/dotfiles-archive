# Source chtf
if [[ -f /usr/local/share/chtf/chtf.sh ]]; then
    source "/usr/local/share/chtf/chtf.sh"
fi

# Source direnv shell hook
eval "$(direnv hook zsh)"

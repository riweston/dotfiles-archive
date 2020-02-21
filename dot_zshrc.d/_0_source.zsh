# PowerLevel 10k Instant Prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Antibody Plugins
source <(antibody init)
antibody bundle <$HOME/.zshrc.d/plugins.zsh

# chtf (Change Terraform)
if [[ -f /usr/local/share/chtf/chtf.sh ]]; then
    source "/usr/local/share/chtf/chtf.sh"
fi

# Source direnv shell hook
eval "$(direnv hook zsh)"

# autocompletion
autoload -U compinit && compinit

autoload -U +X bashcompinit && bashcompinit
source /usr/local/etc/bash_completion.d/az

setopt autocd autopushd pushdignoredups

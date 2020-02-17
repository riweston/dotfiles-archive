bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[^?' backward-kill-word
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"
export FZF_CTRL_T_OPTS="--height 80% --preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

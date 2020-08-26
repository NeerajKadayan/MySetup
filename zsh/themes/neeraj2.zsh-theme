PROMPT="%(?:%{$fg_bold[green]%}⟿ :%{$fg_bold[magenta]%}⟿ )"
PROMPT+=' %{$fg_bold[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}git:%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} ✖ "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✔ "

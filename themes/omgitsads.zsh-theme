if [ "$(whoami)" = "root" ]; then NCOLOR="red"; else NCOLOR="yellow"; fi

local smiley="%(?,%{$fg[green]%}☺%{$reset_color%},%{$fg[red]%}☹%{$reset_color%})"

PROMPT='${smiley} %{$fg[$NCOLOR]%}$(hostname):%~ ➤ %{$reset_color%} '
RPROMPT='%{$fg[$NCOLOR]%}%p$(rvm_prompt_info)$(~/bin/git-cwd-info.rb)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# See http://geoff.greer.fm/lscolors/
export LSCOLORS="exfxcxdxbxbxbxbxbxbxbx"
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=31;40:cd=31;40:su=31;40:sg=31;40:tw=31;40:ow=31;40:"


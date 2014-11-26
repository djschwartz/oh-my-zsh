# djschwartz.zsh-theme
#
# Taken from Tassilo's Blog
# http://tsdh.wordpress.com/2007/12/06/my-funky-zsh-prompt/

function hg_prompt_info {
    hg prompt --angle-brackets "<hg:%{$fg[magenta]%}<branch>%{$reset_color%}> -> " 2>/dev/null
}

local blue_op="%{$fg[blue]%}[%{$reset_color%}"
local blue_cp="%{$fg[blue]%}]%{$reset_color%}"
local path_p="${blue_op}%~${blue_cp}"
local smiley="%(?,%{$fg[green]%}:%)%{$reset_color%},%{$fg[red]%}:(%{$reset_color%})"

PROMPT=$'${blue_op}${smiley}${blue_cp} -> ${path_p} -> $(hg_prompt_info)%'

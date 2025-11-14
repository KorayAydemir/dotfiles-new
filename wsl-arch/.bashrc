#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR="nvim"

alias g=git
alias gs="git status"
alias cz=chezmoi
alias czcd="cd ~/.local/share/chezmoi/"

alias lg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

function fd () {
    cd "$(find ~/job -mindepth 2 -maxdepth 3 -type d | fzf)";
}
export fd

alias tp="yarn test:path $1"

PS1='\w\$ '

eval $(ssh-agent)
ssh-add ~/.ssh/gitlab_job_ed25519

# fnm
FNM_PATH="/home/koray/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi


export EDITOR=sublime3
source ~/.bash_alias
PATH=$PATH:/usr/local/sbin
# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1="\u \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PATH="/usr/local/share/npm/bin:$PATH"

# git 自动补全
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

source ~/.profile
export PATH=/usr/local/bin:$PATH

# 定制 Terminal 标签title
PROMPT_COMMAND='echo -ne "\033]0; ${PWD/$HOME/~}\007"'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

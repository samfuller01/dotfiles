git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

if [ "$color_prompt" = yes ]; then
  PS1="[\[\033[36m\]\t\[\033[1;31m\]::\[\033[00m\]\u\[\033[1;31m\]::\[\033[1;32\]\w\[\033[00m\]\$(git_branch)]>"
fi

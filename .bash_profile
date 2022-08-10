# color output
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Aliases
alias la="ls -A"
alias ls='ls -Gh'

if type brew &>/dev/null; then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
      [[ -r "$COMPLETION" ]] && source "$COMPLETION"
    done
  fi
fi

# virtualenvwrapper config
# export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
# source /usr/local/bin/virtualenvwrapper.sh

# pip should only run if there is a virtualenv currently activated
# export PIP_REQUIRE_VIRTUALENV=true

# create commands to override pip restriction.
# use `gpip` or `gpip3` to force installation of
# a package in the global python environment
# gpip(){
#    PIP_REQUIRE_VIRTUALENV="" pip "$@"
# }
# gpip3(){
#    PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
# }

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# wine-masm setup
alias masmcmd='WINEPREFIX=~/.wine-masm wine cmd'
function masmdbg() {
    WINEPREFIX=~/.wine-masm winedbg $1
}

# croosade
alias croosade='WINEPREFIX=~/.wine-croosade wine ~/.wine-croosade/drive_c/Nexon/MapleStory/Croosade.exe &>/dev/null & disown'

# added by Miniconda3 4.5.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/renee/miniconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/renee/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/renee/miniconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/renee/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

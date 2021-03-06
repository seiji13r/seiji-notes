# .bash_profile
# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
# These linesare automatically added when Python is installed
PYTHON_PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin"
PATH="${PYTHON_PATH}:${PATH}"
export PATH

# Virtualenvwrapper Configuration
VIRTUALENVWRAPPER_SH_PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin/virtualenvwrapper.sh"
# VIRTUALENVWRAPPER CONFIGURATION
# set where virutal environments will live
export WORKON_HOME=$HOME/.virtualenvs
# ensure all new environments are isolated from the site-packages directory
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
# use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
# makes pip detect an active virtualenv and install to it
export PIP_RESPECT_VIRTUALENV=true
if [[ -r ${VIRTUALENVWRAPPER_SH_PATH} ]]; then
    source ${VIRTUALENVWRAPPER_SH_PATH}
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

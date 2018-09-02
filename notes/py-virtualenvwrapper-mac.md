Installing and Configuring VirtualenvWrapper in Mac

Install Python3 from https://www.python.org/downloads/
Upgrade pip3
pip3 install --upgrade pip

Install VirtualEnvWrapper
pip install virtualenvwrapper

Locate the virtualenvwrapper.sh location
sudo find / -name virtualenvwrapper.sh

/Library/Frameworks/Python.framework/Versions/3.7/bin/virtualenvwrapper.sh

Open and Edit the virtualenvwrapper.sh
Locate the line 50 (with VIM type [:set number] to display the line numbers)
Change the line from:
    VIRTUALENVWRAPPER_PYTHON="$(command \which python)"
to:
    VIRTUALENVWRAPPER_PYTHON="$(command \which python3)"

So virtualenvwrapper use Python3 to create the virtual environments.

Edit the user's .bash_profile 
cd ~
vim .bash_profile 

Add the following lines:
[Make sure to use the complete path of the virtualenvwrapper.sh you found]

# VIRTUALENVWRAPPER CONFIGURATION
# set where virutal environments will live
export WORKON_HOME=$HOME/.virtualenvs
# ensure all new environments are isolated from the site-packages directory
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
# use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
# makes pip detect an active virtualenv and install to it
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /Library/Frameworks/Python.framework/Versions/3.7/bin/virtualenvwrapper.sh ]]; then
    source /Library/Frameworks/Python.framework/Versions/3.7/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi


http://mkelsey.com/2013/04/30/how-i-setup-virtualenv-and-virtualenvwrapper-on-my-mac/
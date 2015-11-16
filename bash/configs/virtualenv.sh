# Take linux distro into consideration,
# because in arch linux, python's default version is python 3000
if [[ "$DISTRO" == *ARCH* ]]
then
    export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2.7
fi

# Load virtualenvwrapper.sh
if [ -f /usr/bin/virtualenvwrapper.sh ]; then
    source /usr/bin/virtualenvwrapper.sh
elif [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi

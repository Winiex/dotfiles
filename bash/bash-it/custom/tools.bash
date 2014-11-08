# Filesystem Markers & Jump
export MARKPATH=$HOME/.marks

function tjump {
    cd -P $MARKPATH/$1 2>/dev/null || echo "No such mark: $1"
}

function tmark {
    if [ -L ~/.marks/$1 ]; then
        rm ~/.marks/$1
    fi

    ln -s $(pwd) $MARKPATH/$1
}

function tunmark {
    rm -rf $MARKPATH/$1
}

function tmarks {
    echo "All of Your Marks:"
    ls -l $MARKPATH | tail -n +2 | sed 's/  / /g' | cut -d' ' -f9-
}

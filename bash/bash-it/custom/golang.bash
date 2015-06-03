# Tools used in golang
export GOPATH=~/.gohome
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH

function gopwd {
    export GOPATH=`pwd`
    export GOBIN=$GOPATH/bin:$GOPATH/vendor/bin
    export PATH=$GOBIN:$PATH
    export GOPATH=$GOPATH:$GOPATH/vendor
}

function cgopath {
    cd $GOPATH
}

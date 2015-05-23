# Tools used in golang
function gopwd {
    export GOPATH=`pwd`
    export GOPATH=$GOPATH:$GOPATH/vendor
    export PATH=$GOPATH/bin:$PATH
}

function cgopath {
    cd $GOPATH
}

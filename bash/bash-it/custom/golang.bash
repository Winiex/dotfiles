# Tools used in golang
function gopwd {
    export GOPATH=`pwd`
    export PATH=$GOPATH/bin:$PATH
}

function cgopath {
    cd $GOPATH
}

alias git-log='git log --graph --all --format=format:'\''%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n'\'''\''          %C(white)%s%C(reset) %C(bold white)— %an%C(reset)'\'' --abbrev-commit'

alias git-push-master="git push origin master"

function git-ignore-io() {
    curl https://www.gitignore.io/api/$@ ;
}

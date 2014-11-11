alias octopress-publish="(cblog && git-update-submodules-master && rake generate && rake deploy)"
alias octopress-update="(cblog && git-update-submodules-master)"
alias octopress-push-source="(cblog && gco source && git add --all && git commit -m \"Update automatically.\" && git push origin source)"

alias octopress-deploy="(cblog && rake deploy)"
alias octopress-preview="(cblog && rake preview)"
alias octopress-generate="(cblog && rake generate)"
alias octopress-watch="(cblog && rake watch)"

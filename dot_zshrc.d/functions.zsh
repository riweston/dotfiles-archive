path_remove() {
    PATH=$(echo -n $PATH | awk -v RS=: -v ORS=: '$0 != "'$1'"' | sed 's/:$//')
}

path_append() {
    path_remove "$1"
    PATH="${PATH:+"$PATH:"}$1"
}

path_prepend() {
    path_remove "$1"
    PATH="$1${PATH:+":$PATH"}"
}

repo_init() {
    print $fg[green] "Info              :: Initilising git repo"
    print $fg[yellow] "Running Command   :: $ git init"
    git init >>/dev/null 2>&1
    print "-----------------"

    print $fg[blue] "Copy              :: pre-commit hooks from ~/.templates"
    cp -r $HOME/.templates/pre-commit/. . >>/dev/null 2>&1
    print "-----------------"

    print $fg[green] "Info              :: Installing pre-commit hooks"
    print $fg[yellow] "Running Command   :: $ pre-commit install"
    pre-commit install >>/dev/null 2>&1
    print "-----------------"

    print $fg[blue] "Copy              :: direnv folder structure / functions"
    cp -r $HOME/.templates/direnv/. . >>/dev/null 2>&1
    print "-----------------"

    print $fg[green] "Info              :: Allow the direnv template file"
    print $fg[yellow] "Running Command   :: $ direnv allow"
    direnv allow >>/dev/null 2>&1
    print "-----------------"

}

gi() {
    curl -sLw "\n" https://www.gitignore.io/api/$@
}

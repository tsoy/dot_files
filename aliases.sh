# OS independent aliases
alias go_src="cd ~/antarctic/go/src/github.com/tsoy"

# OS dependent aliases

case "$OSTYPE" in
    darwin*|linux*)  
		alias s="cd  /var/www/subscribe" ;;
    msys*|cygwin*)
		alias s="cd  /c/xampp/htdocs/subscribe.dev" ;;
esac

function merd {
    branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
    git checkout develop
    git pull
    git checkout $branch
    git merge develop
}

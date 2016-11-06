alias s="cd  ~/antarctic/ubuntu/www/subscribe"

alias merd="
branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
git checkout develop
git pull
git checkout $branch
git merge develop
"

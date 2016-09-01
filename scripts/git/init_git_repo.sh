#! bin/sh

# echo "1.start init a git repo"
echo "git init "
git init
# echo "2. add remote git repo $1"
echo "git remote add origin $1"
git remote add origin $1
# echo "3. pull the latest changes"
# echo "4.add the first commit"
# echo "5. push to the remote server"
echo "git add ."
git add .
echo "git commit . "
git commit . -m "init project and push the first commit"
echo "git push -u origin master"
git push -u origin master
# echo "git branch --set-upstream-to=origin/master master"
# git branch --set-upstream-to=master master

# echo "git pull"
# git pull

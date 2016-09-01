# add and submit git commits

echo "start add and commit git for $1"
git add .
git commit -m $1
git push 

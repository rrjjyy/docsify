@echo off
echo "-------Begin-------"
git status

git add .
git commit -m "1"
git pull
git push git@github.com:rrjjyy/docsify.git 
echo 推送成功：【%1%】
echo "--------End!--------"
pause


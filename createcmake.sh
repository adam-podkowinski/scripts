git clone --depth 1 https://github.com/adam-podkowinski/cmaketemplate $1
rm -rf $1/.git 2> /dev/null
cd $1
git init
git add .
git commit -m "Initial commit"

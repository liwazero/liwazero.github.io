#!/usr/bin/env sh
set -e

npm run docs:build

cd docs/.vuepress/dist

git init
git add -A
push_time="${date '+%Y-%m-%d %H:%M:%S'}"
git commit -m "【deploy success】:${push_time}"

git push -f git@github.com:liwazero/liwazero.github.io.git master
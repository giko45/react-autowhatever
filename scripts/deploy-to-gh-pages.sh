#!/bin/bash

set -e

git checkout gh-pages
git pull origin gh-pages
git merge master --no-edit
npm run build
cp demo/dist/*.* .
git add index.html app.css index.js
git commit -m 'Update gh-pages files'
git push origin gh-pages
git checkout master

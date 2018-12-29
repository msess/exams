#!/bin/sh
#
# push.sh
#
# Update msess.ca with new exam

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_website_files() {
  git clone https://${GH_TOKEN}@github.com/msess/msess.github.io.git > /dev/null 2>&1
  cd msess.github.io
  git submodule update --remote --merge
  git add exams
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER Update exam bank"
}

upload_files() {
  git push --quiet origin master
}

setup_git
commit_website_files
upload_files

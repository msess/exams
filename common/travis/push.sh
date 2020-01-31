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
  # git clone https://github.com/msess/msess.github.io.git > /dev/null 2>&1
  git clone "https://${GH_TOKEN}@github.com/msess/msess.github.io.git" > /dev/null 2>&1
  cd msess.github.io || exit 1
  git submodule update --init --recursive
  git submodule update --recursive --remote
  git add exams
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER Update exam bank"
}

upload_files() {
  git push --quiet origin master
}

setup_git
commit_website_files
upload_files

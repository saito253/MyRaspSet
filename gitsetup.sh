#! /bin/bash

echo -n "Input repositories:"
read ANSWER

echo $ANSWER

ssh-keygen
cat ~/.ssh/id_rsa.pub

git config --global user.name "Eiichi Saito"
git config --global user.email saito253@dsn.lapis-semi.com
git remote set-url origin git@github.com:$ANSWER

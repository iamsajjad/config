
#save username/password for user
git config --global credential.helper store

#undo last push
git push -f origin HEAD^:master

#tags
git tag

#push tag
git push origin #tag name here#

#push all tags
git push origin --tags

#delete local tag
git tag -d #tag name here#

#to ignore changes on file
git update-index --assume-unchanged [<file> ...]
#undo
git update-index --no-assume-unchanged [<file> ...]

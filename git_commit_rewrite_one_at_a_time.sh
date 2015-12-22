# check log and figure out how many commits you going to consider as bad commits 
git log 

# do rebase with number of commits you going to edit 
git rebase -i HEAD~5

# you will get list of commits 
# file contents begins 
pick e530edb2 bad commit 5
pick 570c043e bad commit 4
pick 71b605be bad commit 3 
pick 8b473faa good commit 
pick 2759a4ae bad commit 2

# Rebase (5 command(s))
#
# Commands:
# p, pick = use commit
# r, reword = use commit, but edit the commit message
# e, edit = use commit, but stop for amending
# s, squash = use commit, but meld into previous commit
# f, fixup = like "squash", but discard this commit's log message
# x, exec = run command (the rest of the line) using shell
#
# These lines can be re-ordered; they are executed from top to bottom.
#
# If you remove a line here THAT COMMIT WILL BE LOST.
#
# However, if you remove everything, the rebase will be aborted.
#
# Note that empty commits are commented out

# file contents ends

# Next thing you will do is fix this bad commits by placing below line on each bad commit 
exec git commit --amend --author="Firstname Lastname <myemail@gmail.com>" -C HEAD

# Go back to file and add this
pick e530edb2 bad commit 5
exec git commit --amend --author="Firstname Lastname <myemail@gmail.com>" -C HEAD
pick 570c043e bad commit 4
exec git commit --amend --author="Firstname Lastname <myemail@gmail.com>" -C HEAD
pick 71b605be bad commit 3 
exec git commit --amend --author="Firstname Lastname <myemail@gmail.com>" -C HEAD
pick 8b473faa good commit 
pick 2759a4ae bad commit 2
exec git commit --amend --author="Firstname Lastname <myemail@gmail.com>" -C HEAD

# save changes git will exec this file and update all necessary info based on above changes

# Now lets push this changes to remote 
git push -f origin master(your branch name)




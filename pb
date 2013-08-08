#!/bin/bash


#The MIT License (MIT)
#
#Copyright (c) 2013 Adrian Bacon (adrian_bacon@quicksurf.com)
#
#Permission is hereby granted, free of charge, to any person obtaining a copy of
#this software and associated documentation files (the "Software"), to deal in
#the Software without restriction, including without limitation the rights to
#use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
#the Software, and to permit persons to whom the Software is furnished to do so,
#subject to the following conditions:
#
#The above copyright notice and this permission notice shall be included in all
#copies or substantial portions of the Software.
#
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
#FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
#COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
#IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
#CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#
#SCRIPT_CATEGORY:GIT
#
#This script will quickly check out a private/topic branch from master and if
#necessary, do a quick merge from master into it. You can can pass in a branch
#name on the command line, or let it use a name defined in your $PRIVATE_BRANCH
#environment variable if you have that set, OR, if none of that, the private
#branch will be your username.
#
#Feel free to modify to meet your needs.

#Check to see if we are in a git repo, and if so, proceed, otherwise, exit with
#a failure.
ig
if [[ "$?" -ne 0 ]]
    then
        exit 1
fi

#first things first, make sure we're on master
master

#now, lets figure out what what our private branch is going to be named
#start off by naming it the default user name
branch_name="$(id -u -n)"

#now lets check to see if the name was passed on the command line
if [ $# -gt 0 ]
    then
        branch_name="$1"
elif [ -n "$PRIVATE_BRANCH" ]
    then
        branch_name="$PRIVATE_BRANCH"
fi

#the only real rule here for private branch names, can't be called "master"
if [ "$branch_name" == "master" ]
    then
        echo "The private branch cannot be named master!"
        exit 1
fi

#now that we have our name, lets check it out
be "$branch_name"
if [[ $? -gt 0 ]]
    then
        git checkout -b "$branch_name"
    else
        git checkout "$branch_name"
fi

#now lets merge master into it
git merge -m "merge master branch" master

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
#This script checks to see if a branch exists and returns a successful status
#code if it does, otherwise a non-successful status code if it doesn't.
#
#Feel free to modify to meet your needs.

#Check to see if we are in a git repo, and if so, proceed, otherwise, exit with
#a failure.
if [[ $(ig) -ne 0 ]]
    then
        exit 1
fi

#check to see if a branch name was passed in
if [ $# -eq 0 ]
    then
        exit 1
fi

git show-ref --verify --quiet refs/heads/"$1"

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
#SCRIPT_CATEGORY:GENERAL
#
#This script will list the current directory in my preferred way so I don't
#have to constantly clear the screen, type "pwd" then the full "ls -altr" every
#time I want to look at the  contents of a directory.
#
#Feel free to modify to meet your needs.


clear

echo "current directory: $(pwd)"

echo

if [ -n "$1" ]; then

	if [ "$1" != "-d" ]; then
		echo "listing files that contain the string: $1"
		echo

		grep -lr "$1" .

	else
		ls -la | grep '^d'
	fi

else
  
  ls -la

fi

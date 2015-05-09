#!/usr/bin/env bash


#The MIT License (MIT)
#
#Copyright (c) 2013-2015 Adrian Bacon (adrian_bacon@quicksurf.com)
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
#This script will open your favorite GUI text editor and pass in the filename
#that was passed into this script as an argument in OS X.
#
#Really simple, just an easy way for me to use TextWrangler in the few times
#I don't want to use vim.
#
#You can easily substitute in pretty much anything you want here or not use it
#if you don't use OS X, or just use vim.
#
#Feel free to modify to meet your needs.


open -a BBEdit "$1"

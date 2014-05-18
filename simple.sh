#!/bin/csh
#
# use current working directory for input and output - defaults is 
# to use the users home directory
#$ -cwd
#
# name this job
#$ -N Simple-Test
#
# send stdout and stderror to this file
#$ -o simple.out
#$ -j y
#
# select queue - if needed 
#$ -q amd64-low,em64t

#see where the job is being run
hostname

# print date and time
date
# Sleep for 20 seconds
sleep 20
# print date and time again
date

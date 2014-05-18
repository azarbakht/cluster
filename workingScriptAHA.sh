#!/bin/csh
#
#use current working directory for input and output - defaults is
#to use the users home directory 
#$ -cwd 
#
# name this job 
#$ -N Amir
# 
# send stdout and stderror to this file 
#$ -o Amir.out 
#$ -j y 
#
# select queue - if needed 
##$ -q amd64-low,em64t 
#see where the job is being run 
hostname 
./runonimage.sh seq44 seq44out/out44.txt seq44out

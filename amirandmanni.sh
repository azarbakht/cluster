#!/bin/csh
#
#use current working directory for input and output - defaults is
#to use the users home directory 
#$ -cwd 
#
# name this job 
#$ -N Jmanni3_700.sh 
# 
# send stdout and stderror to this file 
#$ -o Jmanni3_700.out 
#$ -j y 
#
# select queue - if needed 
##$ -q amd64-low,em64t 
#see where the job is being run 

matlab -nodisplay -nodesktop -nojvm -nosplash -logfile amirandmannilogfileTest.txt -r "ManniandAmirTest"
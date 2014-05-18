cluster
=======

```
ssh azarbaam@flip.engr.oregonstate.edu
```

```
ssh azarbaam@submit1.hpc.engr.oregonstate.edu
```

or
submit2.hpc.engr.oregonstate.edu
submit3.hpc.engr.oregonstate.edu

```
qsub scriptname.sh
```

to check if it is working
```
qstat -u azarbaam
```

to delete/kill a running job
```
qdel jobName
```

to delete/kill all the running job for user azarbaam
```
qdel -u azarbaam
```

```
qrsh -q eecs1 
or
qrsh -q eecs1 matlab -desktop  
```

```
cd /scratch/share/azarbaam
```

```
cp /nfs/stak/students/a/azarbaam/scriptname.sh scriptname.sh
```
```
chmod u+x scriptname.sh
dos2unix scriptname.sh
```

> You can check syntax requirements for these and other commands by using
the 'man' command. ie man qstat or man qsub

function generateBatchfiles
clc
clear all
close all

    filename0 = 'chmododorostkon.sh';
    file_0 = fopen(filename0,'w');
    fprintf( file_0 , '#!/bin/csh\n');

for i = 1:1:44
    if i < 10
        fileName = ['seq0' int2str(i) '.sh'];
    else
        fileName = ['seq' int2str(i) '.sh'];
    end
    file_1 = fopen(fileName ,'w');
    fprintf( file_1 ,  '#!/bin/csh\n');
    fprintf( file_1 ,  '#$ -cwd \n');
    fprintf( file_1 ,  '#\n');
    fprintf( file_1 ,  '# name this job \n');
    fprintf( file_1 , ['#$ -N azarbaam_' int2str(i) '.sh \n']);
    fprintf( file_1 ,  '# \n');
    fprintf( file_1 ,  '# send stdout and stderror to this file \n');
    fprintf( file_1 , ['#$ -o azarbaam_' int2str(i) '_out.txt \n']);
    fprintf( file_1 ,  '#$ -j y \n');
    fprintf( file_1 ,  '#\n');
    fprintf( file_1 ,  '# select queue - if needed \n');
    fprintf( file_1 ,  '##$ -q amd64-low,em64t \n');
    fprintf( file_1 ,  'hostname \n' );
    if i < 10
        fprintf( file_1 , ['cd seq0' int2str(i) '/OLTbinaries \n']);
    else
        fprintf( file_1 , ['cd seq' int2str(i) '/OLTbinaries \n']);
    end    
    if i < 10
        fprintf( file_1 , ['./runonimage.sh seq0' int2str(i) ' seq0' int2str(i) 'out/out0' int2str(i) '.txt seq0' int2str(i) 'out \n' ]);
    else
        fprintf( file_1 , ['./runonimage.sh seq' int2str(i) ' seq' int2str(i) 'out/out' int2str(i) '.txt seq' int2str(i) 'out \n' ]);
    end
    fclose(file_1);
    if i < 10
        fprintf( file_0 , ['chmod u+x seq0' int2str(i) '.sh \n']);
        fprintf( file_0 , ['dos2unix seq0' int2str(i) '.sh \n']);
        fprintf( file_0 , ['qsub seq0' int2str(i) '.sh \n']);
    else
        fprintf( file_0 , ['chmod u+x seq' int2str(i) '.sh \n']);
        fprintf( file_0 , ['dos2unix seq' int2str(i) '.sh \n']);
        fprintf( file_0 , ['qsub seq' int2str(i) '.sh \n']);
    end
end
    fclose(file_0);
end
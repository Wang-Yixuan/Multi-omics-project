#echo '#!/bin/bash
#PBS -N bismark.sh
#PBS -l nodes=1:ppn=10
#PBS –l walltime=7200:00:00
#PBS –l mem=100G
#PBS -q big
#PBS -V' >> bismark.sh

for i in `cat /public/home/wyyy/HPV/WGBS/WGBS_sample`
do
    #qsub $i.duplicate.sh
#    echo '#!/bin/bash
#PBS -N '$i'.trimmomatic.sh
#PBS -l nodes=1:ppn=10
#PBS –l walltime=7200:00:00
#PBS –l mem=80G
#PBS -q batch
#PBS -V

#java -jar /public/home/wyyy/anaconda3/pkgs/trimmomatic-0.39-hdfd78af_2/share/trimmomatic-0.39-2/trimmomatic.jar PE -phred33 /public/home/wyyy/HPV/WGBS/small_data/'$i'_*.R1.fastq.gz /public/home/wyyy/HPV/WGBS/small_data/'$i'_*.R2.fastq.gz /public/home/wyyy/HPV/WGBS/Cleandata/'$i'.small.R1.paired.fq.gz /public/home/wyyy/HPV/WGBS/Cleandata/'$i'.small.R1.unpaired.fq.gz /public/home/wyyy/HPV/WGBS/Cleandata/'$i'.small.R2.paired.fq.gz /public/home/wyyy/HPV/WGBS/Cleandata/'$i'.small.R2.unpaired.fq.gz ILLUMINACLIP:/public/home/wyyy/anaconda3/pkgs/trimmomatic-0.39-hdfd78af_2/share/trimmomatic-0.39-2/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:60' >> $i.trimmomatic.sh
#    cat /public/home/wyyy/HPV/WGBS/Cleandata/$i.small.R1.paired.fq.gz /public/home/wyyy/HPV/WGBS/clean_data1/$i.R1.paired.fq.gz > /public/home/wyyy/HPV/WGBS/CompleteData/$i.R1.paired.fq.gz
#    cat /public/home/wyyy/HPV/WGBS/Cleandata/$i.small.R2.paired.fq.gz /public/home/wyyy/HPV/WGBS/clean_data1/$i.R2.paired.fq.gz > /public/home/wyyy/HPV/WGBS/CompleteData/$i.R2.paired.fq.gz

#    echo '#!/bin/bash
#PBS -N '$i'.bismark.sh
#PBS -l nodes=1:ppn=10
#PBS –l walltime=7200:00:00
#PBS –l mem=80G
#PBS -q batch
#PBS -V

#/public/home/wyyy/anaconda3/envs/bioinfo/bin/bismark -o /public/home/wyyy/HPV/WGBS/bismark --parallel 5 --quiet --bam --samtools_path /public/home/wyyy/anaconda3/envs/bioinfo/bin/ --path_to_bowtie2 /public/home/wyyy/anaconda3/envs/bioinfo/bin/ /public/home/wyyy/HPV -1 /public/home/wyyy/HPV/WGBS/CompleteData/'$i'.R1.paired.fq.gz -2 /public/home/wyyy/HPV/WGBS/CompleteData/'$i'.R2.paired.fq.gz' >> $i.bismark.sh
#    echo '#!/bin/bash
#PBS -N '$i'.duplicate.sh
#PBS -l nodes=1:ppn=10
#PBS –l walltime=7200:00:00
#PBS –l mem=80G
#PBS -q batch
#PBS -V

#/public/home/wyyy/anaconda3/envs/bioinfo/bin/deduplicate_bismark -p --outfile '$i' --samtools_path /public/home/wyyy/anaconda3/envs/bioinfo/bin --output_dir /public/home/wyyy/HPV/WGBS/Bismark_duplicate /public/home/wyyy/HPV/WGBS/bismark/'$i'.R1.paired_bismark_bt2_pe.bam' >> $i.duplicate.sh

    echo '#!/bin/bash
#PBS -N '$i'.methylation.sh
#PBS -l nodes=1:ppn=10
#PBS –l walltime=7200:00:00
#PBS –l mem=80G
#PBS -q batch
#PBS -V

/public/home/wyyy/anaconda3/envs/bioinfo/bin/bismark_methylation_extractor -p --comprehensive --merge_non_CpG --no_overlap --bedGraph --counts --buffer_size 20G --report --cytosine_report --gzip --samtools_path /public/home/wyyy/anaconda3/envs/bioinfo/bin --genome_folder /public/home/wyyy/HPV /public/home/wyyy/HPV/WGBS/Bismark_duplicate/'$i'.deduplicated.bam -o /public/home/wyyy/HPV/WGBS/methylation_sites' >> $i.methylation.sh
done


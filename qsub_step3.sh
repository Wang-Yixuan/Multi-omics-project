#!/bin/bash
sample0='0'
for i in `ls /public/home/xzeng/project/tongji/multi_omics/clean_data/Mygenostic/2nd_3rd_batch`
do
   sample=${i:0:9}
   if [ $sample0 != $sample ];then
      #qsub /public/home/wyyy/HPV/HIVID2/step3/$sample/Human_virus_soap.sh
      qsub /public/home/wyyy/HPV/HIVID2/step3/$sample/station.sh
   fi
   sample0=$sample
done

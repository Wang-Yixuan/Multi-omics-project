#!/bin/bash
for i in `ls /public/home/wyyy/HPV/HIVID2.1/step4`
do
#    qsub /public/home/wyyy/HPV/HIVID2.1/step4/$i/*.sh
#    cp /public/home/xzeng/project/tongji/multi_omics/HIVID2/test_mygeno/step4/$i/fq/rmdup_${i}_R302_CapNGS.fq.gz /public/home/wyyy/HPV/HIVID2.1/step4/$i
#    cp /public/home/wyyy/HPV/HIVID2/step4/$i/fq/rmdup_${i}_R302_CapNGS.fq.gz /public/home/wyyy/HPV/HIVID2.1/step4/$i
     cp /public/home/xzeng/project/tongji/multi_omics/HIVID2/test_mygeno/step4/$i/human/breakpoint/${i}_R302_CapNGS_human_bk.final.stp2.uniq /public/home/wyyy/HPV/HIVID2.1/step4/$i
     cp /public/home/wyyy/HPV/HIVID2/step4/$i/human/breakpoint/${i}_R302_CapNGS_human_bk.final.stp2.uniq /public/home/wyyy/HPV/HIVID2.1/step4/$i
done

ls
cp /home/liucj/practice/Mapping/data .
l
cp /home/liucj/practice/Mapping/index/ .
l
l
cd ../
ls
cd data/
l
cd ../
l
cd data/
ls
cd da
cd data/
ls
cd data/
l
rm data
mkdir dataqualityControl/
mkdir data
l
rm dataqualityControl/
l
cd data/
l
cd data/
l
cd ../
l
cd ../
l
cd data/
ls
cd data/
ls
ll
cd data/
l
cd data/
ls
cd data/
l
cd ../
l
python ../../genomeResequencing.py -h
python ../genomeResequencing.py -h
python ../../genomeResequencing.py -pe1 NA12878.hiseq.wgs_chr20_2mb.30xPE_1.fastq -pe2 NA12878.hiseq.wgs_chr20_2mb.30xPE_2.fastq -i $PWD
python ../genomeResequencing.py -pe1 NA12878.hiseq.wgs_chr20_2mb.30xPE_1.fastq -pe2 NA12878.hiseq.wgs_chr20_2mb.30xPE_2.fastq -i $PWD
l
python ../genomeResequencing.py -pe1 NA12878.hiseq.wgs_chr20_2mb.30xPE_1.fastq -pe2 NA12878.hiseq.wgs_chr20_2mb.30xPE_2.fastq -i $PWD -o $PWD
l
rm Mapping/ CallVariants/
l
cd data/
ls
cd data/
ls
cd data/
l
cd ../
ls
cd data/
l
cd ../../
l
/homeps xf
ps xf
l
cd data/
l
cd da
ls
cd data/
l
rm index/
l
rm data/
l
cat .command |grep python
python ../genomeResequencing.py -pe1 NA12878.hiseq.wgs_chr20_2mb.30xPE_1.fastq -pe2 NA12878.hiseq.wgs_chr20_2mb.30xPE_2.fastq
l
ps xf
l
rm QualityControl/ Annotation/ CallVariants/ Mapping/
l
ll
nohup python ../genomeResequencing.py -pe1 NA12878.hiseq.wgs_chr20_2mb.30xPE_1.fastq -pe2 NA12878.hiseq.wgs_chr20_2mb.30xPE_2.fastq &
l
les nohup.out 
l
ll
ps xf
top
l
ls
l
cd Annotation/
l
cd CallVariants/
l
cd Annotation/
l
cd CallVariants/
l
cd Annotation/
l
les nohup.out 
l
cd QualityControl/
l
cd CallVariants/
l
les nohup.out 
grep /home/liucj/piplines/resequencing/genome_resequencing/example/CallVariants/NA12878 nohup.out 
ll /home/liucj/piplines/resequencing/genome_resequencing/example/CallVariants/NA12878.raw_variants.SNP.filter.vcf
ll /home/liucj/piplines/resequencing/genome_resequencing/example/CallVariants/NA12878.raw_variants.INDEL.filter.vcf
ls
l
ps xf
cd
ls
cd Mapping/
l
rm nohup.out 
l
python ../genomeResequencing.py -pe1 NA12878.hiseq.wgs_chr20_2mb.30xPE_1.fastq -pe2 NA12878.hiseq.wgs_chr20_2mb.30xPE_2.fastq
l
python ../bin/callSV.py 
l
cd Mapping/
ls
cd Mapping/
l
cd ../
ls
cd Mapping/
l
cd CallVariants/
l
mdkir CallSV
l
mkdir CallSV
l
cd CallSV/
l
cd Mapping/
cd CallSV/
l
cd Mapping/
l
cd Call
cd CallSV/
l
rm CallSV/
l
bash ../bin/callSV.sh -b Mapping/NA12878.sam.dedup.realign.recal.bam
l
rm NA12878.sam.dedup.realign.recal.bam.cover NA12878.sam.dedup.realign.recal.bam.predSV.txt NA12878.sam.dedup.realign.recal.bam.sclip.txt
l
cd Call
cd CallSV/
l
bash ../bin/callSV.sh -b Mapping/NA12878.sam.dedup.realign.recal.bam
l
cd CallSV/
l
bash ../bin/callSV.sh -b Mapping/NA12878.sam.dedup.realign.recal.bam -i `pwd` -o `pwd`
bash ../bin/callSV.sh -b Mapping/NA12878.sam.dedup.realign.recal.bam -i /home/liucj/piplines/resequencing/genome_resequencing/example/Mapping -o `pwd`
l
bash ../bin/callSV.sh -b Mapping/NA12878.sam.dedup.realign.recal.bam -i /home/liucj/piplines/resequencing/genome_resequencing/example/Mapping -o $PWD
bash ../bin/callSV.sh -b NA12878.sam.dedup.realign.recal.bam -i /home/liucj/piplines/resequencing/genome_resequencing/example/Mapping -o $PWD
l
cd CallSV/
l
CREST.pl -h
l
rm NA12878.sam.dedup.realign.recal.bam.predSV.txt
bash ../bin/callSV.sh -b NA12878.sam.dedup.realign.recal.bam -i /home/liucj/piplines/resequencing/genome_resequencing/example/Mapping -o $PWD
l
bash ../bin/callSV.sh -b NA12878.sam.dedup.realign.recal.bam -i /home/liucj/piplines/resequencing/genome_resequencing/example/Mapping -o $PWD
l
cd CallSV/
l
rm Annotation/ CallSV/ CallVariants/ Mapping/ QualityControl/
l
rm NA12878.sam.dedup.realign.recal.bam.predSV.txt
l
top
l
python ../genomeResequencing.py -h
nohup python ../genomeResequencing.py -pe1 NA12878.hiseq.wgs_chr20_2mb.30xPE_1.fastq -pe2 NA12878.hiseq.wgs_chr20_2mb.30xPE_2.fastq  &
l
les nohup.out 
l
les nohup.out 
les /home/liucj/piplines/resequencing/genome_resequencing/config
nohup python ../genomeResequencing.py -pe1 NA12878.hiseq.wgs_chr20_2mb.30xPE_1.fastq -pe2 NA12878.hiseq.wgs_chr20_2mb.30xPE_2.fastq  &
l
ll
cd Mapping/
l
les nohup.out 
l
ps
kill 91775 91776 91777 91778
ps 
l
rm Mapping/ QualityControl/
l
nohup python ../genomeResequencing.py -pe1 NA12878.hiseq.wgs_chr20_2mb.30xPE_1.fastq -pe2 NA12878.hiseq.wgs_chr20_2mb.30xPE_2.fastq  &
l
les nohup.out 
l
ps
kill 92392 92393
ps 
l
ps 
kill 92396
ps
l
rm Annotation Call* Mapping/ QualityControl/
l
rm nohup.out 
l
nohup python ../genomeResequencing.py -pe1 NA12878.hiseq.wgs_chr20_2mb.30xPE_1.fastq -pe2 NA12878.hiseq.wgs_chr20_2mb.30xPE_2.fastq  &
l
les nohup.out 
l
ps 
kill 92700 92701 92702 92708 92704
ps
l
rm Annotation Call* rm Mapping/ QualityControl
l
rm nohup.out 
ls
nohup python ../genomeResequencing.py -pe1 NA12878.hiseq.wgs_chr20_2mb.30xPE_1.fastq -pe2 NA12878.hiseq.wgs_chr20_2mb.30xPE_2.fastq  &
l
les nohup.out 
l
les nohup.out 
l
les nohup.out 
l
les nohup.out 
l
les nohup.out 
l
cd Call
l
cd CallSV/
l
cd CallVariants/
l
les nohup.out 
l
ll
cd CallSV/
l
cd Annotation/
ls
cd Mapping/
l
cd Mapping/
l
cnvnator -root out.root -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root NA12878.sam.root -tree Mapping/NA12878.sam.dedup.realign.recal.bam
l
ll
l
cnvnator -root out.root -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root out.root -his 100
l
rm out.root
l
cnvnator -root out.root -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root NA12878.root -tree Mapping/NA12878.sam.dedup.realign.recal.bam
l
cnvnator -root out.root -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root out.root -his 100
cnvnator -root out.root -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root out.root -stat 100
l
cnvnator -root out.root -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root out.root -partition 100
cnvnator 
cnvnator -h
cnvnator -root out.root -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root out.root -partition 10000 -ngc
l
cnvnator -root out.root -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root out.root -partition 10000 -ngc
cnvnator -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root NA12878.root -tree Mapping/NA12878.sam.dedup.realign.recal.bam
l
rm out.root 
l
cnvnator -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root NA12878.root -his 10000
l
cnvnator -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root NA12878.root -stat 10000
l
cnvnator -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root NA12878.root -partition 10000
cnvnator -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root NA12878.root -call 10000 -ngc
l
cnvnator -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root NA12878.root -call 100 -ngc
cnvnator -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root NA12878.root -call 10000 -ngc
cnvnator -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root NA12878.root -chrom chr1 -call 10000 -ngc
l
rm NA12878.root 
cnvnator -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root NA12878.root -tree Mapping/NA12878.sam.dedup.realign.recal.bam
cnvnator -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root NA12878.root -his 1000
cnvnator -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root NA12878.root -stat 1000
cnvnator -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root NA12878.root -partition 1000
l
cnvnator -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root NA12878.root -call 1000
l
cd
ls
mkdir CallCNV
ls
cat .command 
cnvnator -genome /home/liucj/piplines/resequencing/genome_resequencing/data/hg19/genomeBuild/hg19.fasta -root NA12878.root -call 1000 > NA12878.CNV.txt
source /home/liucj/tools/root_v5.34.34/bin/thisroot.sh
root
ls
les NA12878.CNV.txt
l
ls
cd Mapping/
l
cat .command 
l
cd ../
ls
python ../bin/callCNV.py -b NA12878.hiseq.wgs_chr20_2mb.30xPE_1.fastq
python ../bin/callCNV.py -b 
python ../bin/callCNV.py -b -h
python ../bin/callCNV.py -h
l
l Mapping/
l
python ../bin/callCNV.py -b NA12878.sam.dedup.realign.recal.bam
les /home/liucj/piplines/resequencing/genome_resequencing/software/CNVnator_v0.3.2/root/bin/thisroot.sh
l
rm %s
l
python ../bin/callCNV.py -b NA12878.sam.dedup.realign.recal.bam
l
rm %s
l
python ../bin/callCNV.py -b NA12878.sam.dedup.realign.recal.bam
source
python ../bin/callCNV.py -b NA12878.sam.dedup.realign.recal.bam
source /home/liucj/piplines/resequencing/genome_resequencing/software/CNVnator_v0.3.2/root/bin/thisroot.sh
l
bash ../bin/callCNV.sh -b NA12878.sam.dedup.realign.recal.bam
ls
l
rm CallCNV
l
bash ../bin/callCNV.sh -b NA12878.sam.dedup.realign.recal.bam
l
bash ../bin/callCNV.sh -b NA12878.sam.dedup.realign.recal.bam
l
bash ../bin/callCNV.sh -b NA12878.sam.dedup.realign.recal.bam -i /home/liucj/piplines/resequencing/genome_resequencing/example/Mapping -o 
l
ll CallCNV/
l
cd CallCNV/
l
bash ../bin/callCNV.sh -b NA12878.sam.dedup.realign.recal.bam -i /home/liucj/piplines/resequencing/genome_resequencing/example/Mapping 
l
ll CallCNV/
bash ../bin/callCNV.sh -b NA12878.sam.dedup.realign.recal.bam -i /home/liucj/piplines/resequencing/genome_resequencing/example/Mapping 
l CallCNV/
l
bash ../bin/callCNV.sh -b NA12878.sam.dedup.realign.recal.bam -i /home/liucj/piplines/resequencing/genome_resequencing/example/Mapping 
l
ll CallCNV/
cd CallCNV/
l
bash ../bin/callCNV.sh -b NA12878.sam.dedup.realign.recal.bam -i /home/liucj/piplines/resequencing/genome_resequencing/example/Mapping 
ll
cd CallCNV/
l
rm CallCNV/
l
bash ../bin/callCNV.sh -b NA12878.sam.dedup.realign.recal.bam -i /home/liucj/piplines/resequencing/genome_resequencing/example/Mapping 
cd CallCNV/
l
rm NA12878.CNV.txt nohup.out NA12878.root QualityControl Mapping CallVariants CallSV CallCNV Annotation
l
vim test.sh
l
cd ../
ls
python ../genomeResequencing.py -h
python ../genomeResequencing.py -pe1 NA12878.hiseq.wgs_chr20_2mb.30xPE_1.fastq -pe2 NA12878.hiseq.wgs_chr20_2mb.30xPE_2.fastq &
l
rm no
l
python ../genomeResequencing.py -pe1 NA12878.hiseq.wgs_chr20_2mb.30xPE_1.fastq -pe2 NA12878.hiseq.wgs_chr20_2mb.30xPE_2.fastq &
l
ps xf
kill 89088 89090 89092 89089 89091 
ps xf
kill 89087 89088 89122 89123 89197
ps xf
ls
l
rm Mapping/ QualityControl/
l
nohup python ../genomeResequencing.py -pe1 NA12878.hiseq.wgs_chr20_2mb.30xPE_1.fastq -pe2 NA12878.hiseq.wgs_chr20_2mb.30xPE_2.fastq &
l
les nohup.out 
ls
l
ls
ll
ps xf
l
cd QualityControl/
cd /home/liucj/piplines/resequencing/genome_resequencing/software
l
ps xf
l
cd Mapping/
l
ll
l
cd Mapping/
l
ps xf
l
cd CallCNV/
l
cd CallSV/
l
ls
l
les nohup.out 
l
ll
cd ../
l
rm Annotation CallCNV CallSV CallVariants 
l
python ../genomeResequencing.py -pe1 NA12878.hiseq.wgs_chr20_2mb.30xPE_1.fastq -pe2 NA12878.hiseq.wgs_chr20_2mb.30xPE_2.fastq
l
cd CallSV/
l
cd Mapping/
l
cd Mapping/
l
cd CallCNV/
l
cd CallSV
l
cd CallCNV/
l
cat .command 
python ../genomeResequencing.py -pe1 NA12878.hiseq.wgs_chr20_2mb.30xPE_1.fastq -pe2 NA12878.hiseq.wgs_chr20_2mb.30xPE_2.fastq
l
l
cat .command 
python ../genomeResequencing.py -pe1 NA12878.hiseq.wgs_chr20_2mb.30xPE_1.fastq -pe2 NA12878.hiseq.wgs_chr20_2mb.30xPE_2.fastq
l
ls
les nohup.out 
l
rm nohup.out 
l
cd QualityControl/
l
cd Mapping/
l
cd CallVariants/
l
cd CallCNV/
l
cd CallSV/
l
rm 
l
rm Annotation/ Call* Mapping/ QualityControl/
l
ls
cd ../
l
cd ../
l
cd ./
cd ../
l
chmod 777 test.sh 
l
./test.sh 
l
ll
ps xf
l
les nohup.out 
cd QualityControl/
l
cd Mapping/
l
cd ../
ls
vim test.sh 
l
ll
vim test.sh 
l
cd ../
l
cd ../
l
ll
l
ps xf
l
top
ls
top -u liucj
ls
ps xf
l
ll
cd ../
ls
ll
cd ../
l
ll
ls
top
ps aux |grep liuwei
ps aux |grep liuwei|wc -l
l
ls
top
top -u liucj
ls
exit
ls
rm nohup.out 
l
vim test.sh 
ls
rm Annotation/ Call*
ls
rm QualityControl/ Mapping/
ls
bash test.sh 
ll
les nohup.out 
ls
ps xf
ps -t pts/13
ps -t pts/13|sed -n '1d'
ps -t pts/13|sed -n '1'dp
ps -t pts/13|sed -n '1dp'
ps -t pts/13|sed '1p
'
ps -t pts/13|sed '1p'
ps -t pts/13|sed '1d'
ps -t pts/13|sed '1d'|cut -f 1
ps -t pts/13|sed '1d'|cut -c 1-6
ls
rm Mapping/ QualityControl/
l
rm nohup.out 
bash test.sh 
l
les nohup.out 
ls
ll
ll *
ls
ll
ll *
les nohup.out 
ps xf
ls
les nohup.out 
exit
ls
ll
les nohup.out 
ls
l
els nohup.out 
les nohup.out 
ls
ps xf
les nohup.out 
l
ps xf
cat /proc/cpuinfo |grep 'core id'
cat /proc/cpuinfo |grep 'core id'|wc -l
ls
ps xf
les nohup.out 
ls
ps xf
les nohup.out 
l
cd CallSV/
l
cd CallCNV/
l
les nohup.out 
cd ../
ls
cd Mapping/
l
cd CA
ls
cd CallVariants/
l
bash test.sh 
l
ps xf
kill 14402 14404 14405 14403 14406
ps xf
kill 14401 14402 14479 14480
ps xf
kill 14480
l
bash Mapping/test.sh 
cd Mapping/
l
ls
rm Annotation/ Call*
l
rm Mapping/ QualityControl/
l
rm nohup.out 
nohup bash test.sh &
ls
ps xf
l
ll
les nohup.out 
l
scd ../bin/
l
cd ../
ls
ll
ps xf
les nohup.out 
l
cd ../
ls
cd ../
ls
ps xf
l
cd ../
ls
cd ../
l
les nohup.out 
l
cd CallSV/
l
l CallSV/
l
ll
les test.sh 
l
ll
cd ../

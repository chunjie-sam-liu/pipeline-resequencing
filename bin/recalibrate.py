#!/usr/bin/python
#-*- coding:utf-8 -*-
################################################
#File Name: recalibrate.py
#Author: C.J. Liu
#Mail: samliu@hust.edu.cn
#Created Time: Thu 12 Nov 2015 12:38:16 AM CST
################################################


import os,sys
import argparse
import pysam
import multiprocessing
import time
root = os.path.dirname(os.path.dirname(os.path.realpath(__file__)))
software=root + "/software"
data = root + "/data"

soft=software + "/GenomeAnalysisTK-3.4-46/GenomeAnalysisTK.jar"
mill=data + "/hg19/Mills_and_1000G_gold_standard.indels.hg19.sorted.vcf"
kg=data + "/hg19/1000G_phase1.indels.hg19.sorted.vcf"
dbsnp=data + "/hg19/dbsnp_137.hg19.sorted.vcf"
index = data + "/hg19/genomeBuild/hg19.fasta"
def usage():
	################################################
	#### Options and arguments #####################
	################################################
	
	description="""	
	Task: BQSQ with GATK v3.4-46, some walkers deprecated are not used anymore.
	Output: From deduped file to generate recalibrated file with bai index.
	"""
	
	usage = """ %(prog)s -pe1 <fq1> -pe2 <fq2> -i <pwd> -o <pwd>"""
	
	parser = argparse.ArgumentParser(description = description,usage = usage)
	parser.add_argument("-b", dest="bam", type=str, help="""Required. Input deduped bam file with bai index""",required=True)
	parser.add_argument("-i", dest="indir", type=str, help="""Specify input directory, default direcotry is current directory""",default=os.getcwd())
	parser.add_argument("-o", dest="out", type=str, help="""Specify output directory, default is current directory""",default=os.getcwd())
	parser.add_argument("-idx", dest="index", type=str, help="""GenomeBuild index default hg19""",default=index)
	parser.add_argument("-t", dest="nthreads", type=int, help="""Optional. Integer indicating the number of concurrent threads to launch. Default=10.""", default=10)
	parser.add_argument("-s",dest="soft", help="""Specify the location of mapping software""", default=soft)
	
	parser.add_argument("-m",dest="mill", help="""Specify the location of mapping software""", default=mill)
	parser.add_argument("-k",dest="kg", help="""Specify the location of mapping software""", default=kg)
	parser.add_argument("-d",dest="dbsnp", help="""Specify the location of mapping software""", default=dbsnp)
	parser.add_argument('-v','--version',action='version', version='%(prog)s 1.0')
	args = parser.parse_args()
	
	return args

def worker(sq,inbam,bam,out,index,soft,t,mill,kg,dbsnp):
	sn = sq["SN"]
	intervals = inbam + "." + sn + '.intervals'
	#create interval
	cmd = "java -Xmx10g -jar %s -T RealignerTargetCreator -R %s -o %s -I %s -known %s -known %s -nt %s -L %s " %(soft,index,intervals,inbam,mill,kg,t, sn)
	os.system(cmd)
	# time.sleep(2)
	# print cmd
	
	#realignment
	realign = bam.rstrip('bam') + sn +'.realign.bam'
	outrealign = out + os.sep + realign
	cmd = "java -Xmx10g -jar %s -T IndelRealigner -R %s -I %s -targetIntervals %s -o %s -known %s -known %s --filter_bases_not_stored -L %s " %(soft,index,inbam,intervals,outrealign,mill,kg, sn)
	os.system(cmd)
	# time.sleep(2)
	# print cmd
	
	#RECALIBRATION
	recal = realign.rstrip("bam") + 'recal.bam'
	grp = out+os.sep + recal + '.grp'
	cmd="java -Xmx10g -Djava.io.tmpdir=/tmp -jar %s -T BaseRecalibrator -R %s -I %s -knownSites %s -knownSites %s -knownSites %s -rf BadCigar -o %s -nct %s -L %s " %(soft,index,outrealign,dbsnp,mill,kg,grp,t, sn)
	# time.sleep(2)
	# print cmd
	os.system(cmd)

	outrecal = out + os.sep + recal
	cmd = "java -Xmx10g -Djava.io.tmpdir=/tmp -jar %s -T PrintReads -R %s -I %s -BQSR %s -o %s -nct %s -L %s " %(soft,index,outrealign,grp,outrecal,t,sn)
	# time.sleep(2)
	# print cmd
	os.system(cmd)
	
	
def realignAndrecal(bam,indir,out,index=index,soft=soft,t=10,mill=mill,kg=kg,dbsnp=dbsnp):
	#multiprocessing
	jobs = []
	
	# intervals = out + os.sep + bam + '.intervals'
	inbam = out + os.sep + bam
	samfile = pysam.AlignmentFile(inbam, 'rb')
	
	# print samfile.header["SQ"]
	#multiprocessing by chromosome
	pool = multiprocessing.Pool(processes=10)
	for sq in samfile.header["SQ"]:
		pool.apply_async(worker,(sq,inbam,bam,out,index,soft,t,mill,kg,dbsnp,))
	pool.close()
	pool.join()
	
	snList = []
	for sq in samfile.header["SQ"]:
		recal = bam.rstrip('bam') + sq["SN"] + ".realign.recal.bam"
		outrecal = out + os.sep + recal
		snList.append(outrecal)
	snListString = ' '.join(snList)
	
	recal = bam.rstrip("bam") + "realign.recal.bam"
	outrecal = out + os.sep + recal
	cmd = "samtools merge %s %s" %(outrecal, snListString)
	os.system(cmd)
	sbamidx=outrecal + ".bai"
	bamidx=outrecal.rstrip("bam") + "bai"
	cmd = "samtools index %s; mv %s %s" %(outrecal, sbamidx, bamidx)
	os.system(cmd)
	# print cmd
	

	print "***************Mapping recalibration is done!!!************"
	
	return recal
	
	
	
	
def main():
	args = usage()
	realignAndrecal(args.bam,args.indir,args.out,index=args.index,soft = args.soft,t = args.nthreads,mill = args.mill, kg = args.kg,dbsnp=args.dbsnp)

if __name__ == '__main__':
	main()

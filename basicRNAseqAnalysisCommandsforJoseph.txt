#copy files from morgan to my external drive
*Myers lab sequencing is deposited /dat/
*it's generally good practice to save these fastq.gz files locally somehow, i.e. external hard drive 
*scp to transfer from Morgan to local or anywhere else not on Morgan

#copy files from the location they were originally placed to a new folder (jbenito) to perform the aRNApipe
cp /gpfs/gpfs1/myerslab/data/Flowcells/C9516ANXX/s1/Nextera_DualIndex_N701/*.gz /gpfs/gpfs1/home/jbenito/Shakycats_RNASeq_092416/FastQs/

#rename or move the files/folders
mv C9FMNANXX_s2_1_GSLv3-7_85_SL159543.fastq.gz 146C_SL159543_R1.fastq.gz
mv C9FMNANXX_s2_2_GSLv3-7_85_SL159543.fastq.gz 146C_SL159543_R2.fastq.gz

#aRNApipe location:
alias aRNApipe='python /gpfs/gpfs1/myerslab/reference/genomes/rnaseq_pipeline/aRNAPipe1.1/aRNApipe.py'
alias spider='python /gpfs/gpfs1/myerslab/reference/genomes/rnaseq_pipeline/aRNAPipe1.1/spider.py'

#aRNApipe commands
aRNApipe -m skeleton -p /gpfs/gpfs1/home/kengel/CSERpatientdata/aRNApipeResults
aRNApipe -m new -p /gpfs/gpfs1/home/kengel/CSERpatientdata/aRNApipeResults/
aRNApipe -m progress -p /gpfs/gpfs1/home/kengel/CSERpatientdata/aRNApipeResults/
spider -p /gpfs/gpfs1/home/kengel/CSERpatientdata/aRNApipeResults/

samples.txt configuration:
*everything is separated by tabs
*case sensitive
*each sample is on a single line
SampleID        FASTQ_1 FASTQ_2
KE3_empty	/gpfs/gpfs1/home/kengel/092616_NPC_KD/FASTQs/C9516ANXX_s2_1_Nextera_DualIndex_N701_SL203045.fastq.gz    /gpfs/gpfs1/home/kengel/092616_NPC_KD/FASTQs/C9516ANXX_s2_2_Nextera_DualIndex_N701_SL203045.fastq.gz

#QC metrics on fastq.gz
-this command will open the zipped file, pass (aka piping), into the command to call the first 4000000 lines (which corresponds to the first 1 million reads), and then passes that into gzip to compress them, and save as a new fastq.gz. This file is small enough to be copied to your local computer to run FASTQC to get an idea of quality of the sample
gzip -cd fastq.gz|head -4000000 | gzip -c > ~/folder1/folder2/fastq.gz

#read total lines on fastq.gz
-this command will count the number of lines in fastq file. You have to divide the number of lines by 4 to get the read counts
zcat fastq.gz | wc -l

#file properties in folder
-this command will list the files and their properties in folder
ls -l

#giving access/permission for a user 
chmod -R 777 .

#creating a bai (bam index file) from bam file
/gpfs/gpfs1/software/samtools-1.3.1/bin/samtools index SL203074.sorted.bam
#clipping a portion (F1 chromosome) from bam file
/gpfs/gpfs1/software/samtools-1.3.1/bin/samtools view -bh SL203074.sorted.bam F1 > /gpfs/gpfs1/home/jbenito/Shakycats_RNASeq_092416/NEW/aRNAPipeResults/results_sam2sortbam/SL203074.sortedCHRF1.bam
->Don’t forget to create a bai file of the clipped bam file. Will need it for IGV




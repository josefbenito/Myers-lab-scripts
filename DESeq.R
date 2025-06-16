
R version 3.3.1 (2016-06-21) -- "Bug in Your Hair"
Copyright (C) 2016 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin13.4.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[R.app GUI 1.68 (7238) x86_64-apple-darwin13.4.0]

[History restored from /Users/jbenito/.Rapp.history]

> jb.data<-read.table(file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/aRNApipeOutputs/htseq-gene_counts.txt",sep="\t",header=T)
> jb.data[1:5,1:13]
             gene_id SL203073 SL203074 SL203075 SL203076 SL203077 SL203078 SL203079 SL203080 SL203081 SL203082 SL203083 SL203084
1 ENSFCAG00000000001      182      118      123      161      115      208      146       88      134      156      152      172
2 ENSFCAG00000000006       10        9        2        5        1       15       13        2       11       12       14       11
3 ENSFCAG00000000007     3290     1598     2218     1710     1502     3790     4399     1484     1899     2922     3204     1917
4 ENSFCAG00000000015      242      142      199      176      138      344      239      141      240      289      315      247
5 ENSFCAG00000000021      446      309      311      342      385      519      609      292      526      414      499      397
> 
> catnames
 [1] "gene_id"     "eljay"       "hogan"       "smoky"       "jumpingbean" "raz"         "cameron"     "fettucini"   "pammi"       "tomatosoup" 
[11] "kory"        "dora"        "mills"      
> colnames(jb.data)<-catnames
> jb.data[1:5,1:13]
             gene_id eljay hogan smoky jumpingbean  raz cameron fettucini pammi tomatosoup kory dora mills
1 ENSFCAG00000000001   182   118   123         161  115     208       146    88        134  156  152   172
2 ENSFCAG00000000006    10     9     2           5    1      15        13     2         11   12   14    11
3 ENSFCAG00000000007  3290  1598  2218        1710 1502    3790      4399  1484       1899 2922 3204  1917
4 ENSFCAG00000000015   242   142   199         176  138     344       239   141        240  289  315   247
5 ENSFCAG00000000021   446   309   311         342  385     519       609   292        526  414  499   397
> dim(jb.data)
[1] 21890    13
> phenotype<-c(rep("mutant",4),rep("carrier",4),rep("normal",4))
> phenotype
 [1] "mutant"  "mutant"  "mutant"  "mutant"  "carrier" "carrier" "carrier" "carrier" "normal"  "normal"  "normal"  "normal" 
> cats
Error: object 'cats' not found
> catnames
 [1] "gene_id"     "eljay"       "hogan"       "smoky"       "jumpingbean" "raz"         "cameron"     "fettucini"   "pammi"       "tomatosoup" 
[11] "kory"        "dora"        "mills"      
> catgroup<-data.frame(catnames[2:13],phenotype)
> catgroup
   catnames.2.13. phenotype
1           eljay    mutant
2           hogan    mutant
3           smoky    mutant
4     jumpingbean    mutant
5             raz   carrier
6         cameron   carrier
7       fettucini   carrier
8           pammi   carrier
9      tomatosoup    normal
10           kory    normal
11           dora    normal
12          mills    normal
> catgroup<-data.frame(catnames,phenotype)
Error in data.frame(catnames, phenotype) : 
  arguments imply differing number of rows: 13, 12
> catnames_rev<-catnames[2:13]
> catnames_rev
 [1] "eljay"       "hogan"       "smoky"       "jumpingbean" "raz"         "cameron"     "fettucini"   "pammi"       "tomatosoup"  "kory"       
[11] "dora"        "mills"      
> catgroup<-data.frame(catnames_rev,phenotype)
> catgroup
   catnames_rev phenotype
1         eljay    mutant
2         hogan    mutant
3         smoky    mutant
4   jumpingbean    mutant
5           raz   carrier
6       cameron   carrier
7     fettucini   carrier
8         pammi   carrier
9    tomatosoup    normal
10         kory    normal
11         dora    normal
12        mills    normal
> mutantvsnormal<-data.frame(jb.data[,1:4],jb.data[,9:12])
> mutantvsnormal[1:5,1:13]
Error in `[.data.frame`(mutantvsnormal, 1:5, 1:13) : 
  undefined columns selected
> mutantvsnormal[1:5,1:12]
Error in `[.data.frame`(mutantvsnormal, 1:5, 1:12) : 
  undefined columns selected
> dim(mutantvsnormal)
[1] 21890     8
> mutantvsnormal[1:5,1:8]
             gene_id eljay hogan smoky pammi tomatosoup kory dora
1 ENSFCAG00000000001   182   118   123    88        134  156  152
2 ENSFCAG00000000006    10     9     2     2         11   12   14
3 ENSFCAG00000000007  3290  1598  2218  1484       1899 2922 3204
4 ENSFCAG00000000015   242   142   199   141        240  289  315
5 ENSFCAG00000000021   446   309   311   292        526  414  499
> mutantvsnormal[1:5,1:9]
Error in `[.data.frame`(mutantvsnormal, 1:5, 1:9) : 
  undefined columns selected
> mutantvsnormal<-data.frame(jb.data[,1:4],jb.data[,10:13])
> mutantvsnormal[1:5,1:9]
Error in `[.data.frame`(mutantvsnormal, 1:5, 1:9) : 
  undefined columns selected
> dim(mutantvsnormal)
[1] 21890     8
> mutantvsnormal<-data.frame(jb.data[,2:5],jb.data[,10:13])
> dim(mutantvsnormal)
[1] 21890     8
> mutantvsnormal[1:5,1:8]
  eljay hogan smoky jumpingbean tomatosoup kory dora mills
1   182   118   123         161        134  156  152   172
2    10     9     2           5         11   12   14    11
3  3290  1598  2218        1710       1899 2922 3204  1917
4   242   142   199         176        240  289  315   247
5   446   309   311         342        526  414  499   397
> mutantvsnormal<-data.frame(jb.data[,1:5],jb.data[,10:13])
> dim(mutantvsnormal)
[1] 21890     9
> mutantvsnormal[1:5,1:9]
             gene_id eljay hogan smoky jumpingbean tomatosoup kory dora mills
1 ENSFCAG00000000001   182   118   123         161        134  156  152   172
2 ENSFCAG00000000006    10     9     2           5         11   12   14    11
3 ENSFCAG00000000007  3290  1598  2218        1710       1899 2922 3204  1917
4 ENSFCAG00000000015   242   142   199         176        240  289  315   247
5 ENSFCAG00000000021   446   309   311         342        526  414  499   397
> mutantvsnormalgroup<-rbind(catgroup[1:4,],catgroup[9:12,])
> mutantvsnormalgroup
   catnames_rev phenotype
1         eljay    mutant
2         hogan    mutant
3         smoky    mutant
4   jumpingbean    mutant
9    tomatosoup    normal
10         kory    normal
11         dora    normal
12        mills    normal
> dds <- DESeqDataSetFromMatrix(countData = mutantvsnormal, colData = mutantvsnormalgroup, design = ~ phenotype + catnames_rev)
Error in `rownames<-`(`*tmp*`, value = c("gene_id", "eljay", "hogan",  : 
  invalid rownames length
> catnames_rev
 [1] "eljay"       "hogan"       "smoky"       "jumpingbean" "raz"         "cameron"     "fettucini"   "pammi"       "tomatosoup"  "kory"       
[11] "dora"        "mills"      
> catnames
 [1] "gene_id"     "eljay"       "hogan"       "smoky"       "jumpingbean" "raz"         "cameron"     "fettucini"   "pammi"       "tomatosoup" 
[11] "kory"        "dora"        "mills"      
> mutantvsnormal[1:5,1:9]
             gene_id eljay hogan smoky jumpingbean tomatosoup kory dora mills
1 ENSFCAG00000000001   182   118   123         161        134  156  152   172
2 ENSFCAG00000000006    10     9     2           5         11   12   14    11
3 ENSFCAG00000000007  3290  1598  2218        1710       1899 2922 3204  1917
4 ENSFCAG00000000015   242   142   199         176        240  289  315   247
5 ENSFCAG00000000021   446   309   311         342        526  414  499   397
> catnames<-c("","eljay","hogan","smoky","jumpingbean","raz","cameron","fettucini","pammi","tomatosoup","kory","dora","mills")
> catnames
 [1] ""            "eljay"       "hogan"       "smoky"       "jumpingbean" "raz"         "cameron"     "fettucini"   "pammi"       "tomatosoup" 
[11] "kory"        "dora"        "mills"      
> jb.data[1:5,1:13]
             gene_id eljay hogan smoky jumpingbean  raz cameron fettucini pammi tomatosoup kory dora mills
1 ENSFCAG00000000001   182   118   123         161  115     208       146    88        134  156  152   172
2 ENSFCAG00000000006    10     9     2           5    1      15        13     2         11   12   14    11
3 ENSFCAG00000000007  3290  1598  2218        1710 1502    3790      4399  1484       1899 2922 3204  1917
4 ENSFCAG00000000015   242   142   199         176  138     344       239   141        240  289  315   247
5 ENSFCAG00000000021   446   309   311         342  385     519       609   292        526  414  499   397
> colnames(jb.data)<-catnames
> jb.data[1:5,1:13]
                     eljay hogan smoky jumpingbean  raz cameron fettucini pammi tomatosoup kory dora mills
1 ENSFCAG00000000001   182   118   123         161  115     208       146    88        134  156  152   172
2 ENSFCAG00000000006    10     9     2           5    1      15        13     2         11   12   14    11
3 ENSFCAG00000000007  3290  1598  2218        1710 1502    3790      4399  1484       1899 2922 3204  1917
4 ENSFCAG00000000015   242   142   199         176  138     344       239   141        240  289  315   247
5 ENSFCAG00000000021   446   309   311         342  385     519       609   292        526  414  499   397
> mutantvsnormal[1:5,1:9]
             gene_id eljay hogan smoky jumpingbean tomatosoup kory dora mills
1 ENSFCAG00000000001   182   118   123         161        134  156  152   172
2 ENSFCAG00000000006    10     9     2           5         11   12   14    11
3 ENSFCAG00000000007  3290  1598  2218        1710       1899 2922 3204  1917
4 ENSFCAG00000000015   242   142   199         176        240  289  315   247
5 ENSFCAG00000000021   446   309   311         342        526  414  499   397
> mutantvsnormal<-data.frame(jb.data[,1:5],jb.data[,10:13])
> mutantvsnormal[1:5,1:9]
               Var.1 eljay hogan smoky jumpingbean tomatosoup kory dora mills
1 ENSFCAG00000000001   182   118   123         161        134  156  152   172
2 ENSFCAG00000000006    10     9     2           5         11   12   14    11
3 ENSFCAG00000000007  3290  1598  2218        1710       1899 2922 3204  1917
4 ENSFCAG00000000015   242   142   199         176        240  289  315   247
5 ENSFCAG00000000021   446   309   311         342        526  414  499   397
> mutantvsnormalgroup
   catnames_rev phenotype
1         eljay    mutant
2         hogan    mutant
3         smoky    mutant
4   jumpingbean    mutant
9    tomatosoup    normal
10         kory    normal
11         dora    normal
12        mills    normal
> dds <- DESeqDataSetFromMatrix(countData = mutantvsnormal, colData = mutantvsnormalgroup, design = ~ phenotype + catnames_rev)
Error in `rownames<-`(`*tmp*`, value = c("Var.1", "eljay", "hogan", "smoky",  : 
  invalid rownames length
> mutantvsnormal<-data.frame(jb.data[,2:5],jb.data[,10:13])
> mutantvsnormal[1:5,1:9]
Error in `[.data.frame`(mutantvsnormal, 1:5, 1:9) : 
  undefined columns selected
> row.names(jb.data)<-jb.data[,1]
> jb.data[1:5,1:13]
                                      eljay hogan smoky jumpingbean  raz cameron fettucini pammi tomatosoup kory dora mills
ENSFCAG00000000001 ENSFCAG00000000001   182   118   123         161  115     208       146    88        134  156  152   172
ENSFCAG00000000006 ENSFCAG00000000006    10     9     2           5    1      15        13     2         11   12   14    11
ENSFCAG00000000007 ENSFCAG00000000007  3290  1598  2218        1710 1502    3790      4399  1484       1899 2922 3204  1917
ENSFCAG00000000015 ENSFCAG00000000015   242   142   199         176  138     344       239   141        240  289  315   247
ENSFCAG00000000021 ENSFCAG00000000021   446   309   311         342  385     519       609   292        526  414  499   397
> jb.data<-jb.data[,2:13]
> jb
Error: object 'jb' not found
> 
> jb.data[1:5,1:13]
Error in `[.data.frame`(jb.data, 1:5, 1:13) : undefined columns selected
> jb.data[1:5,1:12]
                   eljay hogan smoky jumpingbean  raz cameron fettucini pammi tomatosoup kory dora mills
ENSFCAG00000000001   182   118   123         161  115     208       146    88        134  156  152   172
ENSFCAG00000000006    10     9     2           5    1      15        13     2         11   12   14    11
ENSFCAG00000000007  3290  1598  2218        1710 1502    3790      4399  1484       1899 2922 3204  1917
ENSFCAG00000000015   242   142   199         176  138     344       239   141        240  289  315   247
ENSFCAG00000000021   446   309   311         342  385     519       609   292        526  414  499   397
> mutantvsnormal<-data.frame(jb.data[,2:5],jb.data[,10:13])
Error in `[.data.frame`(jb.data, , 10:13) : undefined columns selected
> mutantvsnormal<-data.frame(jb.data[,1:4],jb.data[,9:12])
> mutantvsnormal[1:5,1:12]
Error in `[.data.frame`(mutantvsnormal, 1:5, 1:12) : 
  undefined columns selected
> mutantvsnormal[1:5,1:9]
Error in `[.data.frame`(mutantvsnormal, 1:5, 1:9) : 
  undefined columns selected
> mutantvsnormal[1:5,1:8]
                   eljay hogan smoky jumpingbean tomatosoup kory dora mills
ENSFCAG00000000001   182   118   123         161        134  156  152   172
ENSFCAG00000000006    10     9     2           5         11   12   14    11
ENSFCAG00000000007  3290  1598  2218        1710       1899 2922 3204  1917
ENSFCAG00000000015   242   142   199         176        240  289  315   247
ENSFCAG00000000021   446   309   311         342        526  414  499   397
> mutantvsnormalgroup
   catnames_rev phenotype
1         eljay    mutant
2         hogan    mutant
3         smoky    mutant
4   jumpingbean    mutant
9    tomatosoup    normal
10         kory    normal
11         dora    normal
12        mills    normal
> dds <- DESeqDataSetFromMatrix(countData = mutantvsnormal, colData = mutantvsnormalgroup, design = ~ phenotype + catnames_rev)
factor levels were dropped which had no samples
Error in checkFullRank(modelMatrix) : 
  the model matrix is not full rank, so the model cannot be fit as specified.
  One or more variables or interaction terms in the design formula are linear
  combinations of the others and must be removed.

  Please read the vignette section 'Model matrix not full rank':

  vignette('DESeq2')
> dds.cat<-DESeq(dds,fitType="parametric",test="LRT")
Error in is(object, "DESeqDataSet") : object 'dds' not found
> dds <- DESeqDataSetFromMatrix(countData = mutantvsnormal, colData = mutantvsnormalgroup, design = ~ phenotype)
factor levels were dropped which had no samples
> dds.cat<-DESEq(dds)
Error: could not find function "DESEq"
> dds <- DESeqDataSetFromMatrix(countData = mutantvsnormal, colData = mutantvsnormalgroup, design = ~ phenotype)
factor levels were dropped which had no samples
> > dds.cat<-DESeq(dds,fitType="parametric",test="LRT")
Error: unexpected '>' in ">"
> levels(mutantvsnormalgroup[,2])
[1] "carrier" "mutant"  "normal" 
> phenotype<-c(rep("mutant",4),rep("normal",4))
> mutantvsnormalgroup<-data.frame(mutantvsnormalgroup[,1],phenotype)
> mutantvsnormalgroup
  mutantvsnormalgroup...1. phenotype
1                    eljay    mutant
2                    hogan    mutant
3                    smoky    mutant
4              jumpingbean    mutant
5               tomatosoup    normal
6                     kory    normal
7                     dora    normal
8                    mills    normal
> levels(mutantvsnormalgroup[,2])
[1] "mutant" "normal"
> dds <- DESeqDataSetFromMatrix(countData = mutantvsnormal, colData = mutantvsnormalgroup, design = ~ phenotype)
> dds.cat<-DESeq(dds)
estimating size factors
estimating dispersions
gene-wise dispersion estimates
mean-dispersion relationship
final dispersion estimates
fitting model and testing
> results.cat <- results(dds.cat)
> results.cat
log2 fold change (MAP): phenotype normal vs mutant 
Wald test p-value: phenotype normal vs mutant 
DataFrame with 21890 rows and 6 columns
                       baseMean log2FoldChange     lfcSE        stat       pvalue        padj
                      <numeric>      <numeric> <numeric>   <numeric>    <numeric>   <numeric>
ENSFCAG00000000001   148.949879   -0.079318811 0.1694898 -0.46798569   0.63979482   0.9357923
ENSFCAG00000000006     8.922305    0.304360481 0.2356122  1.29178550   0.19643144   0.7764169
ENSFCAG00000000007  2302.198991   -0.003030265 0.1914646 -0.01582676   0.98737260   0.9979356
ENSFCAG00000000015   227.277399    0.299026616 0.1607764  1.85989080   0.06290098   0.5897861
ENSFCAG00000000021   399.722691    0.192431619 0.1405603  1.36903242   0.17098914   0.7470881
...                         ...            ...       ...         ...          ...         ...
ENSFCAG00000032075 1.666785e+04    0.002666411 0.1628475  0.01637367 9.869363e-01 0.997935578
ENSFCAG00000032076 6.237990e+00   -0.179259974 0.2222394 -0.80660740 4.198927e-01 0.878483995
ENSFCAG00000032077 1.372434e+05    0.189827234 0.1318053  1.44020944 1.498082e-01 0.717127550
ENSFCAG00000032078 5.043583e+00   -0.594368842 0.2099493 -2.83101081 4.640115e-03 0.246195248
ENSFCAG00000032079 6.686794e+01   -1.053226506 0.2274974 -4.62962051 3.663365e-06 0.002391567
> results.cat.ordered<-results.cat[order(results.cat$padj),]
> results.cat.ordered
log2 fold change (MAP): phenotype normal vs mutant 
Wald test p-value: phenotype normal vs mutant 
DataFrame with 21890 rows and 6 columns
                     baseMean log2FoldChange      lfcSE        stat       pvalue         padj
                    <numeric>      <numeric>  <numeric>   <numeric>    <numeric>    <numeric>
ENSFCAG00000027799  145.60285      3.5823070  0.2159053   16.592030 7.958437e-62 1.246928e-57
ENSFCAG00000027445  101.13402      1.7102350  0.2235503    7.650337 2.004541e-14 1.570357e-10
ENSFCAG00000021956   43.47579      1.6453365  0.2372162    6.936019 4.033021e-12 2.106312e-08
ENSFCAG00000003924 4187.36384      0.9308414  0.1458338    6.382893 1.737732e-10 6.806698e-07
ENSFCAG00000010705  220.79926      1.1023886  0.1760651    6.261255 3.818917e-10 1.196696e-06
...                       ...            ...        ...         ...          ...          ...
ENSFCAG00000032066  0.0000000             NA         NA          NA           NA           NA
ENSFCAG00000032068  0.0000000             NA         NA          NA           NA           NA
ENSFCAG00000032071  1.0011818    0.109401889 0.13379008  0.81771303    0.4135211           NA
ENSFCAG00000032072  0.2309323   -0.029083008 0.06334645 -0.45911032    0.6461549           NA
ENSFCAG00000032073  2.0739516   -0.008406743 0.15019078 -0.05597376    0.9553627           NA
> significant.cat<-results.cat.ordered[results.cat.ordered$padj<0.05]
Error: subscript contains NAs
> results.cat.nona<-results.cat[!is.na(results.cat$padj,]
Error: unexpected ']' in "results.cat.nona<-results.cat[!is.na(results.cat$padj,]"
> results.cat.nona<-results.cat[!is.na(results.cat$padj),]
> dim(results.cat.nona)
[1] 15668     6
> dim(results.cat)
[1] 21890     6
> signi.cat<-results.cat.nona[results.cat.nona$padj<0.05,]
> dim(signi.cat)
[1] 67  6
> signi.cat
log2 fold change (MAP): phenotype normal vs mutant 
Wald test p-value: phenotype normal vs mutant 
DataFrame with 67 rows and 6 columns
                     baseMean log2FoldChange     lfcSE      stat       pvalue         padj
                    <numeric>      <numeric> <numeric> <numeric>    <numeric>    <numeric>
ENSFCAG00000000194   21.51139     -1.1099061 0.2383907 -4.655828 3.226817e-06   0.00229808
ENSFCAG00000000306  365.00569     -0.8017530 0.2023283 -3.962635 7.412717e-05   0.02680376
ENSFCAG00000000715  121.98168      0.7743685 0.2042885  3.790564 1.503055e-04   0.03860634
ENSFCAG00000001070 1343.37417     -0.5163923 0.1360971 -3.794294 1.480643e-04   0.03860634
ENSFCAG00000001129   22.01119      0.8884785 0.2334918  3.805181 1.417003e-04   0.03827862
...                       ...            ...       ...       ...          ...          ...
ENSFCAG00000030143   59.39262     -1.0724316 0.2154916 -4.976674 6.468603e-07 0.0006334379
ENSFCAG00000030618  161.77324      0.5582651 0.1495942  3.731863 1.900689e-04 0.0451211967
ENSFCAG00000030892  638.31668     -0.9653923 0.2369170 -4.074812 4.605153e-05 0.0185009059
ENSFCAG00000031097 1276.40383      0.4406163 0.1162301  3.790896 1.501048e-04 0.0386063371
ENSFCAG00000032079   66.86794     -1.0532265 0.2274974 -4.629621 3.663365e-06 0.0023915666
> write.table(signi.cat,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/aRNApipeOutputs/htseq-gene_counts.txt",sep="\t",header=T)
Error in write.table(signi.cat, file = "/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/aRNApipeOutputs/htseq-gene_counts.txt",  : 
  unused argument (header = T)
> write.table(signi.cat,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/aRNApipeOutputs/htseq-gene_counts.txt",sep="\t",quote=F)
> write.table(results.cat,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/aRNApipeOutputs/mutantvsnormal_all.txt",sep="\t",quote=F)
> write.table(signi.cat,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/aRNApipeOutputs/mutantvsnormal_0.05.txt",sep="\t",quote=F)
> signi.cat.0.1<-results.cat.nona[results.cat.nona$padj<0.1]
Error: subscript is a logical vector with out-of-bounds TRUE values
> signi.cat.0.1<-results.cat.nona[results.cat.nona$padj<0.1,]
> write.table(signi.cat.0.1,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/aRNApipeOutputs/mutantvsnormal_0.1.txt",sep="\t",quote=F)
> jb.exon<-read.table(file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/aRNApipeOutputs/htseq-exon_counts.txt",sep="\t",header=T)
> jb.exon[1:5,1:13]
             exon_id SL203073 SL203074 SL203075 SL203076 SL203077 SL203078 SL203079 SL203080 SL203081 SL203082 SL203083 SL203084
1 ENSFCAE00000000002        4        1        5        0        0        4        0        2        2        7        4        0
2 ENSFCAE00000000003        0        0        1        0        0        0        0        0        0        0        0        1
3 ENSFCAE00000000004        3        1        1        3        0        2        1        0        2        6        2        0
4 ENSFCAE00000000005        1        0        0        0        1        0        0        0        1        1        0        0
5 ENSFCAE00000000006        4        2        3        1        0        0        1        3        0        1        0        5
> catnames_rev
 [1] "eljay"       "hogan"       "smoky"       "jumpingbean" "raz"         "cameron"     "fettucini"   "pammi"       "tomatosoup"  "kory"       
[11] "dora"        "mills"      
> catnames
 [1] ""            "eljay"       "hogan"       "smoky"       "jumpingbean" "raz"         "cameron"     "fettucini"   "pammi"       "tomatosoup" 
[11] "kory"        "dora"        "mills"      
> colnames(jb.exon)<-catnames_rev
> jb.exon(1:5,1:13)
Error: could not find function "jb.exon"
> jb.exon[1:5,1:13]
               eljay hogan smoky jumpingbean raz cameron fettucini pammi tomatosoup kory dora mills NA
1 ENSFCAE00000000002     4     1           5   0       0         4     0          2    2    7     4  0
2 ENSFCAE00000000003     0     0           1   0       0         0     0          0    0    0     0  1
3 ENSFCAE00000000004     3     1           1   3       0         2     1          0    2    6     2  0
4 ENSFCAE00000000005     1     0           0   0       1         0     0          0    1    1     0  0
5 ENSFCAE00000000006     4     2           3   1       0         0     1          3    0    1     0  5
> colnames(jb.exon)<-catnames
> jb.exon[1:5,1:13]
                     eljay hogan smoky jumpingbean raz cameron fettucini pammi tomatosoup kory dora mills
1 ENSFCAE00000000002     4     1     5           0   0       4         0     2          2    7    4     0
2 ENSFCAE00000000003     0     0     1           0   0       0         0     0          0    0    0     1
3 ENSFCAE00000000004     3     1     1           3   0       2         1     0          2    6    2     0
4 ENSFCAE00000000005     1     0     0           0   1       0         0     0          1    1    0     0
5 ENSFCAE00000000006     4     2     3           1   0       0         1     3          0    1    0     5
> mutantvsnormalgroup
  mutantvsnormalgroup...1. phenotype
1                    eljay    mutant
2                    hogan    mutant
3                    smoky    mutant
4              jumpingbean    mutant
5               tomatosoup    normal
6                     kory    normal
7                     dora    normal
8                    mills    normal
> levels(mutantvsnormalgroup[,2])
[1] "mutant" "normal"
> mutantvsnormalexon<-dataframe(jb.exon[,1:5],jb.exon[,10:13])
Error: could not find function "dataframe"
> mutantvsnormalexon<-data.frame(jb.exon[,1:5],jb.exon[,10:13])
> jb.exon[1:5,1:13]
                     eljay hogan smoky jumpingbean raz cameron fettucini pammi tomatosoup kory dora mills

 [ reached getOption("max.print") -- omitted 187515 rows ]
> mutantvsnormal[1:5,1:9]
Error in `[.data.frame`(mutantvsnormal, 1:5, 1:9) : 
  undefined columns selected
> mutantvsnormalexon[1:5,1:9]
               Var.1 eljay hogan smoky jumpingbean tomatosoup kory dora mills
1 ENSFCAE00000000002     4     1     5           0          2    7    4     0
2 ENSFCAE00000000003     0     0     1           0          0    0    0     1
3 ENSFCAE00000000004     3     1     1           3          2    6    2     0
4 ENSFCAE00000000005     1     0     0           0          1    1    0     0
5 ENSFCAE00000000006     4     2     3           1          0    1    0     5
> dds <- DESeqDataSetFromMatrix(countData = mutantvsnormalexon, colData = mutantvsnormalgroup, design = ~ phenotype)
Error in `rownames<-`(`*tmp*`, value = c("Var.1", "eljay", "hogan", "smoky",  : 
  invalid rownames length
> > dds.cat.exon<-DESeq(dds)
Error: unexpected '>' in ">"
> dds <- DESeqDataSetFromMatrix(countData = mutantvsnormalexon, colData = mutantvsnormalgroup, design = ~ phenotype)
Error in `rownames<-`(`*tmp*`, value = c("Var.1", "eljay", "hogan", "smoky",  : 
  invalid rownames length
> row.names(jb.exon)<-jb.exon[,1]
> jb.exon[1:5,1:13]
                                      eljay hogan smoky jumpingbean raz cameron fettucini pammi tomatosoup kory dora mills
ENSFCAE00000000002 ENSFCAE00000000002     4     1     5           0   0       4         0     2          2    7    4     0
ENSFCAE00000000003 ENSFCAE00000000003     0     0     1           0   0       0         0     0          0    0    0     1
ENSFCAE00000000004 ENSFCAE00000000004     3     1     1           3   0       2         1     0          2    6    2     0
ENSFCAE00000000005 ENSFCAE00000000005     1     0     0           0   1       0         0     0          1    1    0     0
ENSFCAE00000000006 ENSFCAE00000000006     4     2     3           1   0       0         1     3          0    1    0     5
> jb.exon<-jb.exon[,2:13]
> jb.exon[1:5,1:13]
Error in `[.data.frame`(jb.exon, 1:5, 1:13) : undefined columns selected
> jb.exon[1:5,1:12]
                   eljay hogan smoky jumpingbean raz cameron fettucini pammi tomatosoup kory dora mills
ENSFCAE00000000002     4     1     5           0   0       4         0     2          2    7    4     0
ENSFCAE00000000003     0     0     1           0   0       0         0     0          0    0    0     1
ENSFCAE00000000004     3     1     1           3   0       2         1     0          2    6    2     0
ENSFCAE00000000005     1     0     0           0   1       0         0     0          1    1    0     0
ENSFCAE00000000006     4     2     3           1   0       0         1     3          0    1    0     5
> mutantvsnormalexon<-data.frame(jb.exon[,1:5],jb.exon[,10:13])
Error in `[.data.frame`(jb.exon, , 10:13) : undefined columns selected
> mutantvsnormalexon<-data.frame(jb.exon[,1:4],jb.exon[,9:12])
> mutantvsnormalexon[1:5,1:13]
Error in `[.data.frame`(mutantvsnormalexon, 1:5, 1:13) : 
  undefined columns selected
> mutantvsnormalexon[1:5,1:8]
                   eljay hogan smoky jumpingbean tomatosoup kory dora mills
ENSFCAE00000000002     4     1     5           0          2    7    4     0
ENSFCAE00000000003     0     0     1           0          0    0    0     1
ENSFCAE00000000004     3     1     1           3          2    6    2     0
ENSFCAE00000000005     1     0     0           0          1    1    0     0
ENSFCAE00000000006     4     2     3           1          0    1    0     5
> dds <- DESeqDataSetFromMatrix(countData = mutantvsnormalexon, colData = mutantvsnormalgroup, design = ~ phenotype)
> dds.cat.exon<-DESeq(dds)
estimating size factors
estimating dispersions
gene-wise dispersion estimates
mean-dispersion relationship
final dispersion estimates
fitting model and testing
> dds.cat.exon
class: DESeqDataSet 
dim: 198626 8 
metadata(1): version
assays(3): counts mu cooks
rownames(198626): ENSFCAE00000000002 ENSFCAE00000000003 ... ENSFCAE00000326093 ENSFCAE00000326094
rowData names(27): baseMean baseVar ... deviance maxCooks
colnames(8): eljay hogan ... dora mills
colData names(3): mutantvsnormalgroup...1. phenotype sizeFactor
> results.cat.exon<-results(dds.cat.exon)
> results.cat.exon
log2 fold change (MAP): phenotype normal vs mutant 
Wald test p-value: phenotype normal vs mutant 
DataFrame with 198626 rows and 6 columns
                       baseMean log2FoldChange     lfcSE        stat       pvalue        padj
                      <numeric>      <numeric> <numeric>   <numeric>    <numeric>   <numeric>
ENSFCAE00000000002    2.7120744    0.055213478 0.3037220  0.18178951    0.8557479          NA
ENSFCAE00000000003    0.2682642   -0.007511809 0.1442609 -0.05207098    0.9584721          NA
ENSFCAE00000000004    2.1217535    0.046028770 0.3018740  0.15247675    0.8788109          NA
ENSFCAE00000000005    0.3424872    0.037323691 0.1665462  0.22410419    0.8226762          NA
ENSFCAE00000000006    2.0123599   -0.193738958 0.2887922 -0.67085949    0.5023100          NA
...                         ...            ...       ...         ...          ...         ...
ENSFCAE00000326090 1.630958e+04     0.02303002 0.1709919   0.1346849 8.928610e-01 0.999999993
ENSFCAE00000326091 6.092535e+00    -0.28411267 0.3353551  -0.8471995 3.968839e-01          NA
ENSFCAE00000326092 1.345649e+05     0.22066682 0.1488273   1.4827041 1.381530e-01 0.999999993
ENSFCAE00000326093 4.915516e+00    -1.05116692 0.3338440  -3.1486769 1.640114e-03          NA
ENSFCAE00000326094 6.545116e+01    -1.29644745 0.2627240  -4.9346365 8.030019e-07 0.001467638
> results.cat.exon.nona<-results.cat.exon[!is.na(results.cat.exon$padj),]
> results.cat.exon.nona
log2 fold change (MAP): phenotype normal vs mutant 
Wald test p-value: phenotype normal vs mutant 
DataFrame with 53003 rows and 6 columns
                       baseMean log2FoldChange     lfcSE        stat       pvalue        padj
                      <numeric>      <numeric> <numeric>   <numeric>    <numeric>   <numeric>
ENSFCAE00000000050     33.91406   -0.033235015 0.2692766 -0.12342335    0.9017719           1
ENSFCAE00000000054     11.32514   -0.157147117 0.3227495 -0.48690118    0.6263284           1
ENSFCAE00000000056     65.56912    0.131371992 0.2460635  0.53389469    0.5934144           1
ENSFCAE00000000057     10.18287   -0.189668717 0.3264980 -0.58091851    0.5612954           1
ENSFCAE00000000058     24.08017    0.007699731 0.2854007  0.02697867    0.9784767           1
...                         ...            ...       ...         ...          ...         ...
ENSFCAE00000326085 217516.97554     0.13350693 0.1384020   0.9646311 3.347296e-01 0.999999993
ENSFCAE00000326089  95453.94783     0.18527211 0.1696038   1.0923819 2.746653e-01 0.999999993
ENSFCAE00000326090  16309.57908     0.02303002 0.1709919   0.1346849 8.928610e-01 0.999999993
ENSFCAE00000326092 134564.94811     0.22066682 0.1488273   1.4827041 1.381530e-01 0.999999993
ENSFCAE00000326094     65.45116    -1.29644745 0.2627240  -4.9346365 8.030019e-07 0.001467638
> results.cat.exon.0.05<-results.cat.exon.nona[results.cat.exon.nona$padj<0.05,]
> dim(resuls.cat.exon.0.05)
Error: object 'resuls.cat.exon.0.05' not found
> dim(results.cat.exon.0.05)
[1] 55  6
> results.cat.exon.0.1<-results.cat.exon.nona[results.cat.exon.nona$padj<0.1,]
> results.cat.exon.order<-results.cat.exon[order(results.cat.exon),]
Error in (function (classes, fdef, mtable)  : 
  unable to find an inherited method for function ‘NSBS’ for signature ‘"SimpleIntegerList"’
> results.cat.exon.order<-results.cat.exon[order(results.cat.exon$padj),]
> results.cat.exon.order
log2 fold change (MAP): phenotype normal vs mutant 
Wald test p-value: phenotype normal vs mutant 
DataFrame with 198626 rows and 6 columns
                    baseMean log2FoldChange     lfcSE        stat       pvalue         padj
                   <numeric>      <numeric> <numeric>   <numeric>    <numeric>    <numeric>
ENSFCAE00000264056 143.35467       4.408932 0.2588634   17.031886 4.764349e-65 2.525248e-60
ENSFCAE00000279444  60.51924       2.081110 0.2680430    7.764091 8.223299e-15 1.772292e-10
ENSFCAE00000281699  24.16383       2.519898 0.3256163    7.738859 1.003127e-14 1.772292e-10
ENSFCAE00000149846  96.06647      -1.857604 0.2458541   -7.555718 4.165548e-14 5.519664e-10
ENSFCAE00000320081 313.49806      -1.376411 0.2048330   -6.719677 1.821273e-11 1.930658e-07
...                      ...            ...       ...         ...          ...          ...
ENSFCAE00000326086 0.9871563     0.22467651 0.2522850  0.89056632  0.373161872           NA
ENSFCAE00000326087 0.2186782    -0.05564930 0.1231037 -0.45205224  0.651231348           NA
ENSFCAE00000326088 2.0026457    -0.01239036 0.2903618 -0.04267215  0.965962882           NA
ENSFCAE00000326091 6.0925354    -0.28411267 0.3353551 -0.84719948  0.396883942           NA
ENSFCAE00000326093 4.9155158    -1.05116692 0.3338440 -3.14867692  0.001640114           NA
> write.table(results.cat.exon.0.05,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/aRNApipeOutputs/mutantvsnormalexon_0.05.txt",sep="\t",quote=F)
> write.table(results.cat.exon.0.1,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/aRNApipeOutputs/mutantvsnormalexon_0.1.txt",sep="\t",quote=F)
> write.table(results.cat.exon.order,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/aRNApipeOutputs/mutantvsnormalexon_all.txt",sep="\t",quote=F)
2016-10-14 14:26:53.279 R[84365:18087819] Communications error: <OS_xpc_error: <error: 0x7fff72369b90> { count = 1, contents =
	"XPCErrorDescription" => <string: 0x7fff72369f40> { length = 22, contents = "Connection interrupted" }
}>
> jb.pca<-read.table(file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/aRNApipeOutputs/htseq-gene_pca.txt",sep="\t",header=T)
> jb.pca
          X RPKM.PC1 RPKM.PC2 RPKM.PC3 RPKM.PC4 RPKM.Quantile_5. RPKM.Quantile_25. RPKM.Quantile_50. RPKM.Quantile_75. RPKM.Quantile_95.
1  SL203073  -0.5494   0.6119   0.6945   1.8405                0              0.89              2.89              4.42              6.49
2  SL203074  -0.3793  -1.8074   1.7056  -0.4541                0              0.79              2.75              4.41              6.69
3  SL203075  -0.4078   0.5003  -1.0303   0.3179                0              0.83              2.89              4.45              6.49
4  SL203076  -0.3519  -1.2133   0.4624  -0.4600                0              0.83              2.81              4.42              6.56
5  SL203077   2.8525  -0.7672  -0.6420   0.8945                0              0.75              2.76              4.39              6.50
6  SL203078  -0.4482  -0.0233   0.0702   1.0024                0              0.88              2.88              4.44              6.54
7  SL203079  -0.7729  -0.0557  -0.2338   0.6684                0              0.75              2.80              4.42              6.54
8  SL203080  -0.3850   0.0232  -1.4381  -1.1862                0              0.79              2.81              4.36              6.48
9  SL203081   0.0431  -0.3985  -0.7307  -1.4104                0              0.80              2.82              4.42              6.55
10 SL203082  -0.2085   0.2144  -0.0727   0.0582                0              0.84              2.84              4.38              6.48
11 SL203083  -0.3859   0.9152  -0.5143  -0.0724                0              0.84              2.86              4.40              6.47
12 SL203084   0.9932   2.0004   1.7291  -1.1988                0              1.00              2.97              4.43              6.40
   RPKM.GV1 RPKM.GV2 COUNTS.PC1 COUNTS.PC2 COUNTS.PC3 COUNTS.PC4 COUNTS.Quantile_5. COUNTS.Quantile_25. COUNTS.Quantile_50. COUNTS.Quantile_75.
1         2        2    -0.4510    -0.2538     0.7165     0.7092                  0                3.91                7.39                9.32
2         2        2     0.1603     1.1193    -0.6050     2.1345                  0                3.70                7.16                9.12
3         2        2     0.3738     0.5980     0.9247    -0.8680                  0                3.58                7.06                8.98
4         2        2     0.2650     1.0944    -0.3387     1.0153                  0                3.70                7.13                9.06
5         4        2     2.1209    -1.2111    -1.8121    -0.4284                  0                3.17                6.70                8.68
6         2        2    -1.2907    -0.3036    -0.9549    -0.3097                  0                4.39                7.81                9.74
7         2        2    -1.6059    -0.0327    -0.7948    -0.3678                  0                4.39                7.97                9.91
8         2        2     1.1316     1.3357     1.2687    -0.8415                  0                3.17                6.67                8.60
9         2        2     0.0217     0.3078    -0.3446    -0.9073                  0                3.81                7.31                9.24
10        2        2    -0.3826    -0.0789    -0.1350    -0.4760                  0                3.91                7.41                9.33
11        2        2    -0.5789    -0.4609     0.5773    -0.8114                  0                4.00                7.49                9.43
12        2        2     0.2357    -2.1143     1.4979     1.1513                  0                4.00                7.31                9.13
   COUNTS.Quantile_95. COUNTS.GV1 COUNTS.GV2
1                11.48          2          2
2                11.29          2          2
3                11.15          2          2
4                11.26          2          2
5                10.83          2          2
6                11.92          2          2
7                12.15          2          2
8                10.80          2          2
9                11.41          2          2
10               11.50          2          2
11               11.61          2          2
12               11.18          2          2
> jb.pca.1vs2<-jb.pca[1,1:3]
> jb.pca.1vs2
         X RPKM.PC1 RPKM.PC2
1 SL203073  -0.5494   0.6119
> jb.pca.1vs2<-jb.pca[,1:3]
> jb.pca.1vs2
          X RPKM.PC1 RPKM.PC2
1  SL203073  -0.5494   0.6119
2  SL203074  -0.3793  -1.8074
3  SL203075  -0.4078   0.5003
4  SL203076  -0.3519  -1.2133
5  SL203077   2.8525  -0.7672
6  SL203078  -0.4482  -0.0233
7  SL203079  -0.7729  -0.0557
8  SL203080  -0.3850   0.0232
9  SL203081   0.0431  -0.3985
10 SL203082  -0.2085   0.2144
11 SL203083  -0.3859   0.9152
12 SL203084   0.9932   2.0004
> plot(jb.pca.1vs2[,2],jb.data.1vs2[,3]
+ dd
Error: unexpected symbol in:
"plot(jb.pca.1vs2[,2],jb.data.1vs2[,3]
dd"
> plot(jb.pca.1vs2[,2],jb.pca.1vs2[,3],pch=20,main="test",xlab="PCA1", ylab="PCA2")
> plot(jb.pca.1vs2[,2],jb.pca.1vs2[,3],pch=20,main="test",xlab="PCA1", ylab="PCA2",col(jb.pca.1vs2[4,2:3])=red)
Error: unexpected '=' in "plot(jb.pca.1vs2[,2],jb.pca.1vs2[,3],pch=20,main="test",xlab="PCA1", ylab="PCA2",col(jb.pca.1vs2[4,2:3])="
> plot(jb.pca.1vs2[,2],jb.pca.1vs2[,3],pch=20,main="test",xlab="PCA1", ylab="PCA2",col(jb.pca.1vs2[4,2:3])="red")
Error: unexpected '=' in "plot(jb.pca.1vs2[,2],jb.pca.1vs2[,3],pch=20,main="test",xlab="PCA1", ylab="PCA2",col(jb.pca.1vs2[4,2:3])="
> plot(jb.pca.1vs2[,2],jb.pca.1vs2[,3],pch=20,main="test",xlab="PCA1", ylab="PCA2",col=c("red","blue"))
> plot(jb.pca.1vs2[,2],jb.pca.1vs2[,3],pch=20,main="test",xlab="PCA1", ylab="PCA2",col=c("red","blue",green))
Error in plot.xy(xy, type, ...) : object 'green' not found
> plot(jb.pca.1vs2[,2],jb.pca.1vs2[,3],pch=20,main="test",xlab="PCA1", ylab="PCA2",col=c("red","blue","green"))
> phenotype<-c(rep("mutant",4),rep("carrier",4))
> phenotype
[1] "mutant"  "mutant"  "mutant"  "mutant"  "carrier" "carrier" "carrier" "carrier"
> catnames
 [1] ""            "eljay"       "hogan"       "smoky"       "jumpingbean" "raz"         "cameron"     "fettucini"   "pammi"       "tomatosoup" 
[11] "kory"        "dora"        "mills"      
> catnames_rev
 [1] "eljay"       "hogan"       "smoky"       "jumpingbean" "raz"         "cameron"     "fettucini"   "pammi"       "tomatosoup"  "kory"       
[11] "dora"        "mills"      
> mutantvscarriergroup<-data.frame(catnames_rev[1:8],phenotype)
> mutantvscarriergroup
  catnames_rev.1.8. phenotype
1             eljay    mutant
2             hogan    mutant
3             smoky    mutant
4       jumpingbean    mutant
5               raz   carrier
6           cameron   carrier
7         fettucini   carrier
8             pammi   carrier
> mutantvscarriercat<-catnames_rev[1:8]
> mutantvscarriercat
[1] "eljay"       "hogan"       "smoky"       "jumpingbean" "raz"         "cameron"     "fettucini"   "pammi"      
> mutantvscarriergroup<-data.frame(mutantvscarriercat,phenotype)
> mutantvscarriergroup
  mutantvscarriercat phenotype
1              eljay    mutant
2              hogan    mutant
3              smoky    mutant
4        jumpingbean    mutant
5                raz   carrier
6            cameron   carrier
7          fettucini   carrier
8              pammi   carrier
> jb.data[1:5,1:13]
Error in `[.data.frame`(jb.data, 1:5, 1:13) : undefined columns selected
> jb.data<-read.table(file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/aRNApipeOutputs/htseq-gene_counts.txt",sep="\t",header=T)
> jb.data[1:5,1:13]
             gene_id SL203073 SL203074 SL203075 SL203076 SL203077 SL203078 SL203079 SL203080 SL203081 SL203082 SL203083 SL203084
1 ENSFCAG00000000001      182      118      123      161      115      208      146       88      134      156      152      172
2 ENSFCAG00000000006       10        9        2        5        1       15       13        2       11       12       14       11
3 ENSFCAG00000000007     3290     1598     2218     1710     1502     3790     4399     1484     1899     2922     3204     1917
4 ENSFCAG00000000015      242      142      199      176      138      344      239      141      240      289      315      247
5 ENSFCAG00000000021      446      309      311      342      385      519      609      292      526      414      499      397
> row.names(jb.data)<-jb.data[,1]
> jb.data[1:5,1:13]
                              gene_id SL203073 SL203074 SL203075 SL203076 SL203077 SL203078 SL203079 SL203080 SL203081 SL203082 SL203083
ENSFCAG00000000001 ENSFCAG00000000001      182      118      123      161      115      208      146       88      134      156      152
ENSFCAG00000000006 ENSFCAG00000000006       10        9        2        5        1       15       13        2       11       12       14
ENSFCAG00000000007 ENSFCAG00000000007     3290     1598     2218     1710     1502     3790     4399     1484     1899     2922     3204
ENSFCAG00000000015 ENSFCAG00000000015      242      142      199      176      138      344      239      141      240      289      315
ENSFCAG00000000021 ENSFCAG00000000021      446      309      311      342      385      519      609      292      526      414      499
                   SL203084
ENSFCAG00000000001      172
ENSFCAG00000000006       11
ENSFCAG00000000007     1917
ENSFCAG00000000015      247
ENSFCAG00000000021      397
> rownames(jb.data)<-jb.data[,1]
> jb.data[1:5,1:13]
                              gene_id SL203073 SL203074 SL203075 SL203076 SL203077 SL203078 SL203079 SL203080 SL203081 SL203082 SL203083
ENSFCAG00000000001 ENSFCAG00000000001      182      118      123      161      115      208      146       88      134      156      152
ENSFCAG00000000006 ENSFCAG00000000006       10        9        2        5        1       15       13        2       11       12       14
ENSFCAG00000000007 ENSFCAG00000000007     3290     1598     2218     1710     1502     3790     4399     1484     1899     2922     3204
ENSFCAG00000000015 ENSFCAG00000000015      242      142      199      176      138      344      239      141      240      289      315
ENSFCAG00000000021 ENSFCAG00000000021      446      309      311      342      385      519      609      292      526      414      499
                   SL203084
ENSFCAG00000000001      172
ENSFCAG00000000006       11
ENSFCAG00000000007     1917
ENSFCAG00000000015      247
ENSFCAG00000000021      397
> jb.data<-jb.data[,2:13]
> jb.data[1:5,1:13]
Error in `[.data.frame`(jb.data, 1:5, 1:13) : undefined columns selected
> jb.data[1:5,1:12]
                   SL203073 SL203074 SL203075 SL203076 SL203077 SL203078 SL203079 SL203080 SL203081 SL203082 SL203083 SL203084
ENSFCAG00000000001      182      118      123      161      115      208      146       88      134      156      152      172
ENSFCAG00000000006       10        9        2        5        1       15       13        2       11       12       14       11
ENSFCAG00000000007     3290     1598     2218     1710     1502     3790     4399     1484     1899     2922     3204     1917
ENSFCAG00000000015      242      142      199      176      138      344      239      141      240      289      315      247
ENSFCAG00000000021      446      309      311      342      385      519      609      292      526      414      499      397
> catnames
 [1] ""            "eljay"       "hogan"       "smoky"       "jumpingbean" "raz"         "cameron"     "fettucini"   "pammi"       "tomatosoup" 
[11] "kory"        "dora"        "mills"      
> catnames<-catnames_rev
> catnames
 [1] "eljay"       "hogan"       "smoky"       "jumpingbean" "raz"         "cameron"     "fettucini"   "pammi"       "tomatosoup"  "kory"       
[11] "dora"        "mills"      
> colnames(jb.data)<-catnames
> jb.data[1:5,1:12]
                   eljay hogan smoky jumpingbean  raz cameron fettucini pammi tomatosoup kory dora mills
ENSFCAG00000000001   182   118   123         161  115     208       146    88        134  156  152   172
ENSFCAG00000000006    10     9     2           5    1      15        13     2         11   12   14    11
ENSFCAG00000000007  3290  1598  2218        1710 1502    3790      4399  1484       1899 2922 3204  1917
ENSFCAG00000000015   242   142   199         176  138     344       239   141        240  289  315   247
ENSFCAG00000000021   446   309   311         342  385     519       609   292        526  414  499   397
> mutantvscarrier<-dataframe(jb.data[,1:4],jb.data[,9:12])
Error: could not find function "dataframe"
> mutantvscarrier<-data.frame(jb.data[,1:4],jb.data[,9:12])
> mutantvscarrier[1:5,1:8]
                   eljay hogan smoky jumpingbean tomatosoup kory dora mills
ENSFCAG00000000001   182   118   123         161        134  156  152   172
ENSFCAG00000000006    10     9     2           5         11   12   14    11
ENSFCAG00000000007  3290  1598  2218        1710       1899 2922 3204  1917
ENSFCAG00000000015   242   142   199         176        240  289  315   247
ENSFCAG00000000021   446   309   311         342        526  414  499   397
> mutantvscarrier<-data.frame(jb.data[,1:8])
> mutantvscarrier[1:5,1:8]
                   eljay hogan smoky jumpingbean  raz cameron fettucini pammi
ENSFCAG00000000001   182   118   123         161  115     208       146    88
ENSFCAG00000000006    10     9     2           5    1      15        13     2
ENSFCAG00000000007  3290  1598  2218        1710 1502    3790      4399  1484
ENSFCAG00000000015   242   142   199         176  138     344       239   141
ENSFCAG00000000021   446   309   311         342  385     519       609   292
> mutantvscarriergroup
  mutantvscarriercat phenotype
1              eljay    mutant
2              hogan    mutant
3              smoky    mutant
4        jumpingbean    mutant
5                raz   carrier
6            cameron   carrier
7          fettucini   carrier
8              pammi   carrier
> dds <- DESeqDataSetFromMatrix(countData = mutantvscarrier, colData = mutantvscarriergroup, design = ~ phenotype)
> 
> dds.cat.mutantvscarrier<-DESeq(dds)
estimating size factors
estimating dispersions
gene-wise dispersion estimates
mean-dispersion relationship
final dispersion estimates
fitting model and testing
> results.cat.mutantvscarrier<-results(dds.cat.mutantvscarrier)
> results.cat.mutantvscarrier
log2 fold change (MAP): phenotype mutant vs carrier 
Wald test p-value: phenotype mutant vs carrier 
DataFrame with 21890 rows and 6 columns
                       baseMean log2FoldChange     lfcSE       stat     pvalue      padj
                      <numeric>      <numeric> <numeric>  <numeric>  <numeric> <numeric>
ENSFCAG00000000001   139.400448     0.17837736 0.1928688  0.9248637  0.3550368 0.9999018
ENSFCAG00000000006     6.016916     0.04012636 0.2011019  0.1995325  0.8418462 0.9999018
ENSFCAG00000000007  2304.098555    -0.05059328 0.1843780 -0.2743998  0.7837774 0.9999018
ENSFCAG00000000015   194.228653     0.02016899 0.1871964  0.1077424  0.9142000 0.9999018
ENSFCAG00000000021   389.911630    -0.17159578 0.1661280 -1.0329131  0.3016446 0.9999018
...                         ...            ...       ...        ...        ...       ...
ENSFCAG00000032075 1.825178e+04    -0.26851162 0.1624273 -1.6531184 0.09830676 0.9999018
ENSFCAG00000032076 1.002939e+01    -0.28455381 0.2232549 -1.2745694 0.20246171 0.9999018
ENSFCAG00000032077 1.338623e+05    -0.18192395 0.1383129 -1.3153070 0.18840674 0.9999018
ENSFCAG00000032078 8.146375e+00     0.04253475 0.2199923  0.1933466 0.84668755 0.9999018
ENSFCAG00000032079 1.002678e+02    -0.02801347 0.1852736 -0.1512005 0.87981753 0.9999018
> results.cat.mutantvscarrier<-results.cat.mutantvscarrier[!is.na(results.cat.mutantvscarrier$padj),]
> results.cat.mutantvscarrier
log2 fold change (MAP): phenotype mutant vs carrier 
Wald test p-value: phenotype mutant vs carrier 
DataFrame with 18809 rows and 6 columns
                       baseMean log2FoldChange     lfcSE       stat     pvalue      padj
                      <numeric>      <numeric> <numeric>  <numeric>  <numeric> <numeric>
ENSFCAG00000000001   139.400448     0.17837736 0.1928688  0.9248637  0.3550368 0.9999018
ENSFCAG00000000006     6.016916     0.04012636 0.2011019  0.1995325  0.8418462 0.9999018
ENSFCAG00000000007  2304.098555    -0.05059328 0.1843780 -0.2743998  0.7837774 0.9999018
ENSFCAG00000000015   194.228653     0.02016899 0.1871964  0.1077424  0.9142000 0.9999018
ENSFCAG00000000021   389.911630    -0.17159578 0.1661280 -1.0329131  0.3016446 0.9999018
...                         ...            ...       ...        ...        ...       ...
ENSFCAG00000032075 1.825178e+04    -0.26851162 0.1624273 -1.6531184 0.09830676 0.9999018
ENSFCAG00000032076 1.002939e+01    -0.28455381 0.2232549 -1.2745694 0.20246171 0.9999018
ENSFCAG00000032077 1.338623e+05    -0.18192395 0.1383129 -1.3153070 0.18840674 0.9999018
ENSFCAG00000032078 8.146375e+00     0.04253475 0.2199923  0.1933466 0.84668755 0.9999018
ENSFCAG00000032079 1.002678e+02    -0.02801347 0.1852736 -0.1512005 0.87981753 0.9999018
> results.cat.mutantvscarrier.0.05<-results.cat.mutantvscarrier[results.cat.mutantvscarrier$padj<0.05,]
> results.cat.mutantvscarrier.0.05
log2 fold change (MAP): phenotype mutant vs carrier 
Wald test p-value: phenotype mutant vs carrier 
DataFrame with 10 rows and 6 columns
                    baseMean log2FoldChange     lfcSE      stat       pvalue        padj
                   <numeric>      <numeric> <numeric> <numeric>    <numeric>   <numeric>
ENSFCAG00000002474  25.81283      0.9534852 0.2265129  4.209407 2.560413e-05 0.048158812
ENSFCAG00000004621  15.26090      1.0646104 0.2258510  4.713773 2.431711e-06 0.009147612
ENSFCAG00000004809  54.14111      0.9417442 0.2223169  4.236044 2.274922e-05 0.047543347
ENSFCAG00000006250  53.06801      0.9427479 0.1937749  4.865170 1.143586e-06 0.009147612
ENSFCAG00000009647  74.40930     -1.0219064 0.2256824 -4.528073 5.952389e-06 0.018659749
ENSFCAG00000010470  12.57479      1.0773923 0.2262995  4.760913 1.927196e-06 0.009147612
ENSFCAG00000024129 254.30357     -0.8571830 0.1777340 -4.822842 1.415272e-06 0.009147612
ENSFCAG00000027445  70.94903     -1.0794432 0.2281347 -4.731604 2.227523e-06 0.009147612
ENSFCAG00000030381  40.03436     -0.9801854 0.2286995 -4.285909 1.819933e-05 0.044080671
ENSFCAG00000031465  59.46484      0.9452029 0.2208783  4.279293 1.874876e-05 0.044080671
> dim(results.cat.mutantvscarrier.0.05)
[1] 10  6
> results.cat.mutantvscarrier.0.1<-results.cat.mutantvscarrier[results.cat.mutantvscarrier$padj<0.1,]
> results.cat.mutantvscarrier.0.1
log2 fold change (MAP): phenotype mutant vs carrier 
Wald test p-value: phenotype mutant vs carrier 
DataFrame with 12 rows and 6 columns
                    baseMean log2FoldChange     lfcSE      stat       pvalue        padj
                   <numeric>      <numeric> <numeric> <numeric>    <numeric>   <numeric>
ENSFCAG00000002474  25.81283      0.9534852 0.2265129  4.209407 2.560413e-05 0.048158812
ENSFCAG00000004621  15.26090      1.0646104 0.2258510  4.713773 2.431711e-06 0.009147612
ENSFCAG00000004809  54.14111      0.9417442 0.2223169  4.236044 2.274922e-05 0.047543347
ENSFCAG00000006250  53.06801      0.9427479 0.1937749  4.865170 1.143586e-06 0.009147612
ENSFCAG00000007186 115.37634      0.8511791 0.2077200  4.097724 4.172326e-05 0.065397726
...                      ...            ...       ...       ...          ...         ...
ENSFCAG00000012114 140.37124     -0.7661709 0.1841303 -4.161026 3.168214e-05 0.054173574
ENSFCAG00000024129 254.30357     -0.8571830 0.1777340 -4.822842 1.415272e-06 0.009147612
ENSFCAG00000027445  70.94903     -1.0794432 0.2281347 -4.731604 2.227523e-06 0.009147612
ENSFCAG00000030381  40.03436     -0.9801854 0.2286995 -4.285909 1.819933e-05 0.044080671
ENSFCAG00000031465  59.46484      0.9452029 0.2208783  4.279293 1.874876e-05 0.044080671
> dim(results.cat.mutantvscarrier.0.1)
[1] 12  6
> write.table(mutantvscarrier,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/mutantvscarrier_all",sep="\t",quote=F)
> write.table(mutantvscarrier.0.05,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsCarrier/mutantvscarrier_0.05",sep="\t",quote=F)
Error in is.data.frame(x) : object 'mutantvscarrier.0.05' not found
> write.table(results.cat.mutantvscarrier,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsCarrier/mutantvscarrier_all",sep="\t",quote=F)
> write.table(results.cat.mutantvscarrier.0.05,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsCarrier/mutantvscarrier_0.05",sep="\t",quote=F)
> write.table(results.cat.mutantvscarrier.0.1,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsCarrier/mutantvscarrier_0.1",sep="\t",quote=F)
> catnames
 [1] "eljay"       "hogan"       "smoky"       "jumpingbean" "raz"         "cameron"     "fettucini"   "pammi"       "tomatosoup"  "kory"        "dora"        "mills"      
> catgroup
   catnames_rev phenotype
1         eljay    mutant
2         hogan    mutant
3         smoky    mutant
4   jumpingbean    mutant
5           raz   carrier
6       cameron   carrier
7     fettucini   carrier
8         pammi   carrier
9    tomatosoup    normal
10         kory    normal
11         dora    normal
12        mills    normal
> carriervsnormalcat<-catnames[5:12]
> carriervsnormalcat
[1] "raz"        "cameron"    "fettucini"  "pammi"      "tomatosoup" "kory"       "dora"       "mills"     
> 
> carriervsnormalgroup<-c(rep("carrier",4),rep("normal",4))
> carriervsnormalgroup
[1] "carrier" "carrier" "carrier" "carrier" "normal"  "normal"  "normal"  "normal" 
> phenotype
[1] "mutant"  "mutant"  "mutant"  "mutant"  "carrier" "carrier" "carrier" "carrier"
> phenotype<-carriervsnormalgroup
> phenotype
[1] "carrier" "carrier" "carrier" "carrier" "normal"  "normal"  "normal"  "normal" 
> carriervsnormalgroup
[1] "carrier" "carrier" "carrier" "carrier" "normal"  "normal"  "normal"  "normal" 
> carriervsnormalgroup<-data.frame(carriervsnormalcat,phenotype)
> carriervsnormalgroup
  carriervsnormalcat phenotype
1                raz   carrier
2            cameron   carrier
3          fettucini   carrier
4              pammi   carrier
5         tomatosoup    normal
6               kory    normal
7               dora    normal
8              mills    normal
> jb.data[1:5,1:13]
Error in `[.data.frame`(jb.data, 1:5, 1:13) : undefined columns selected
> jb.data[1:5,1:12]
                   eljay hogan smoky jumpingbean  raz cameron fettucini pammi tomatosoup kory dora mills
ENSFCAG00000000001   182   118   123         161  115     208       146    88        134  156  152   172
ENSFCAG00000000006    10     9     2           5    1      15        13     2         11   12   14    11
ENSFCAG00000000007  3290  1598  2218        1710 1502    3790      4399  1484       1899 2922 3204  1917
ENSFCAG00000000015   242   142   199         176  138     344       239   141        240  289  315   247
ENSFCAG00000000021   446   309   311         342  385     519       609   292        526  414  499   397
> carriervsnormal<-data.frame(jb.data[,5:8],jb.data[,9:12])

> carriervsnormal[1:5,1:8]
                    raz cameron fettucini pammi tomatosoup kory dora mills
ENSFCAG00000000001  115     208       146    88        134  156  152   172
ENSFCAG00000000006    1      15        13     2         11   12   14    11
ENSFCAG00000000007 1502    3790      4399  1484       1899 2922 3204  1917
ENSFCAG00000000015  138     344       239   141        240  289  315   247
ENSFCAG00000000021  385     519       609   292        526  414  499   397
> dds <- DESeqDataSetFromMatrix(countData = carriervsnormal, colData = carriervsnormalgroup, design = ~ phenotype)
> 
> dds.carriervsnormal<-DESeq(dds)
estimating size factors
estimating dispersions
gene-wise dispersion estimates
mean-dispersion relationship
final dispersion estimates
fitting model and testing
> results.carriervsnormal<-results(dds.carriervsnormal)
> results.carriervsnormal
log2 fold change (MAP): phenotype normal vs carrier 
Wald test p-value: phenotype normal vs carrier 
DataFrame with 21890 rows and 6 columns
                       baseMean log2FoldChange     lfcSE        stat       pvalue       padj
                      <numeric>      <numeric> <numeric>   <numeric>    <numeric>  <numeric>
ENSFCAG00000000001   143.744067    0.101299430 0.1795442  0.56420334    0.5726158  0.9999195
ENSFCAG00000000006     8.775829    0.270433491 0.1915699  1.41167017    0.1580471  0.9999195
ENSFCAG00000000007  2452.284986   -0.059678089 0.1557003 -0.38328826    0.7015060  0.9999195
ENSFCAG00000000015   235.094302    0.299056400 0.1587947  1.88328912    0.0596612  0.9999195
ENSFCAG00000000021   446.338838    0.005547931 0.1580032  0.03511279    0.9719898  0.9999195
...                         ...            ...       ...         ...          ...        ...
ENSFCAG00000032075 1.947929e+04   -0.244957991 0.1715248 -1.42811996 1.532573e-01 0.99991950
ENSFCAG00000032076 9.381145e+00   -0.336418554 0.1808431 -1.86027835 6.284615e-02 0.99991950
ENSFCAG00000032077 1.529286e+05    0.001191786 0.1437201  0.00829241 9.933837e-01 0.99991950
ENSFCAG00000032078 4.955072e+00   -0.414495563 0.1624652 -2.55128756 1.073257e-02 0.99991950
ENSFCAG00000032079 7.149300e+01   -0.970937920 0.2025391 -4.79382842 1.636282e-06 0.01031131
> results.carriervsnormal.nona<-results.carriervsnormal[!is.na(results.carriervsnormal$padj),]
> results.carriervsnormal.0.05<-results.carriervsnormal.nona[results.carriervsnormal.nona$padj<0.05,]
> results.carriervsnormal.0.05
log2 fold change (MAP): phenotype normal vs carrier 
Wald test p-value: phenotype normal vs carrier 
DataFrame with 6 rows and 6 columns
                    baseMean log2FoldChange     lfcSE      stat       pvalue         padj
                   <numeric>      <numeric> <numeric> <numeric>    <numeric>    <numeric>
ENSFCAG00000001305  19.71661      0.8280745 0.1907418  4.341338 1.416176e-05 4.462134e-02
ENSFCAG00000010861 856.44438     -0.5167774 0.1174856 -4.398645 1.089287e-05 4.462134e-02
ENSFCAG00000021956  45.22763      1.1822929 0.2026921  5.832949 5.445606e-09 5.147459e-05
ENSFCAG00000022312  16.93884     -0.8409666 0.1931069 -4.354927 1.331112e-05 4.462134e-02
ENSFCAG00000027799 151.36857      3.2809114 0.1936282 16.944388 2.117261e-64 4.002682e-60
ENSFCAG00000032079  71.49300     -0.9709379 0.2025391 -4.793828 1.636282e-06 1.031131e-02
> results.carriervsnormal.0.1<-results.carriervsnormal.nona[results.carriervsnormal.nona$padj<0.1,]
> results.carriervsnormal.0.1
log2 fold change (MAP): phenotype normal vs carrier 
Wald test p-value: phenotype normal vs carrier 
DataFrame with 8 rows and 6 columns
                    baseMean log2FoldChange     lfcSE      stat       pvalue         padj
                   <numeric>      <numeric> <numeric> <numeric>    <numeric>    <numeric>
ENSFCAG00000001305  19.71661      0.8280745 0.1907418  4.341338 1.416176e-05 4.462134e-02
ENSFCAG00000005892 757.93174     -0.8036265 0.1896691 -4.236993 2.265329e-05 6.118006e-02
ENSFCAG00000010861 856.44438     -0.5167774 0.1174856 -4.398645 1.089287e-05 4.462134e-02
ENSFCAG00000014814 685.45669     -0.8590046 0.2055389 -4.179280 2.924341e-05 6.910582e-02
ENSFCAG00000021956  45.22763      1.1822929 0.2026921  5.832949 5.445606e-09 5.147459e-05
ENSFCAG00000022312  16.93884     -0.8409666 0.1931069 -4.354927 1.331112e-05 4.462134e-02
ENSFCAG00000027799 151.36857      3.2809114 0.1936282 16.944388 2.117261e-64 4.002682e-60
ENSFCAG00000032079  71.49300     -0.9709379 0.2025391 -4.793828 1.636282e-06 1.031131e-02
> write.table(results.carriervsnormal,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/CarriervsNormal/carriervsnormal_all.txt",sep="\t",quote=F)
> write.table(results.carriervsnormal.0.05,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/CarriervsNormal/carriervsnormal_0.05.txt",sep="\t",quote=F)
> write.table(results.carriervsnormal.0.1,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/CarriervsNormal/carriervsnormal_0.1.txt",sep="\t",quote=F)
> 
> results.cat.nona[1:5,1:9]
Error: subscript contains NAs or out-of-bounds indices
> results.cat[1:5,1:8]
Error: subscript contains NAs or out-of-bounds indices
> results.cat[1:5,1:7]
Error: subscript contains NAs or out-of-bounds indices
> results.cat[1:5,1:6]
log2 fold change (MAP): phenotype normal vs mutant 
Wald test p-value: phenotype normal vs mutant 
DataFrame with 5 rows and 6 columns
                      baseMean log2FoldChange     lfcSE        stat     pvalue      padj
                     <numeric>      <numeric> <numeric>   <numeric>  <numeric> <numeric>
ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923
ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169
ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356
ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861
ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903242 0.17098914 0.7470881
> results.cat.nona[1:5,1:6]
log2 fold change (MAP): phenotype normal vs mutant 
Wald test p-value: phenotype normal vs mutant 
DataFrame with 5 rows and 6 columns
                      baseMean log2FoldChange     lfcSE        stat     pvalue      padj
                     <numeric>      <numeric> <numeric>   <numeric>  <numeric> <numeric>
ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923
ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169
ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356
ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861
ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903242 0.17098914 0.7470881
> write.table(results.cat.nona,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsNormal/mutantvsnormal_all_nona",sep="\t",quote=F)
> 
> write.table(results.cat.nona,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/aRNApipeOutputs/mutantvsnormal_all_nona_rev",sep="\t")
> write.table(results.cat.nona,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsNormal/mutantvsnormal_all_nona_rev",sep="\t",header=T)
Error in write.table(results.cat.nona, file = "/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsNormal/mutantvsnormal_all_nona_rev",  : 
  unused argument (header = T)
> write.table(results.cat.nona,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsNormal/mutantvsnormal_all_nona_rev",sep="\t",quote=F)
> write.table(results.cat.nona,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsNormal/mutantvsnormal_all_nona_rev",sep='\t',quote=F)
> write.csv(results.cat.nona,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsNormal/mutantvsnormal_all_nona_rev",sep="\t",quote=F)
Warning message:
In write.csv(results.cat.nona, file = "/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsNormal/mutantvsnormal_all_nona_rev",  :
  attempt to set 'sep' ignored
> write.table(results.cat.nona,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsNormal/mutantvsnormal_all_nona_rev",sep=" ",quote=F)
> write.table(results.cat.nona,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsNormal/mutantvsnormal_all_nona_rev",sep=",",quote=FALSE)
> results.cat.nona[1:5,1:6]
log2 fold change (MAP): phenotype normal vs mutant 
Wald test p-value: phenotype normal vs mutant 
DataFrame with 5 rows and 6 columns
                      baseMean log2FoldChange     lfcSE        stat     pvalue      padj
                     <numeric>      <numeric> <numeric>   <numeric>  <numeric> <numeric>
ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923
ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169
ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356
ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861
ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903242 0.17098914 0.7470881
> results.carriervsnormal.nona[1:5,1:6]
log2 fold change (MAP): phenotype normal vs carrier 
Wald test p-value: phenotype normal vs carrier 
DataFrame with 5 rows and 6 columns
                      baseMean log2FoldChange     lfcSE        stat    pvalue      padj
                     <numeric>      <numeric> <numeric>   <numeric> <numeric> <numeric>
ENSFCAG00000000001  143.744067    0.101299430 0.1795442  0.56420334 0.5726158 0.9999195
ENSFCAG00000000006    8.775829    0.270433491 0.1915699  1.41167017 0.1580471 0.9999195
ENSFCAG00000000007 2452.284986   -0.059678089 0.1557003 -0.38328826 0.7015060 0.9999195
ENSFCAG00000000015  235.094302    0.299056400 0.1587947  1.88328912 0.0596612 0.9999195
ENSFCAG00000000021  446.338838    0.005547931 0.1580032  0.03511279 0.9719898 0.9999195
> write.table(results.carriervsnormal.nona,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/CarriervsNormal/carriervsnormal_all_nona",sep="\t",quote=F)
> results.carriervsnormal.0.05[1:5,1:6]
log2 fold change (MAP): phenotype normal vs carrier 
Wald test p-value: phenotype normal vs carrier 
DataFrame with 5 rows and 6 columns
                    baseMean log2FoldChange     lfcSE      stat       pvalue         padj
                   <numeric>      <numeric> <numeric> <numeric>    <numeric>    <numeric>
ENSFCAG00000001305  19.71661      0.8280745 0.1907418  4.341338 1.416176e-05 4.462134e-02
ENSFCAG00000010861 856.44438     -0.5167774 0.1174856 -4.398645 1.089287e-05 4.462134e-02
ENSFCAG00000021956  45.22763      1.1822929 0.2026921  5.832949 5.445606e-09 5.147459e-05
ENSFCAG00000022312  16.93884     -0.8409666 0.1931069 -4.354927 1.331112e-05 4.462134e-02
ENSFCAG00000027799 151.36857      3.2809114 0.1936282 16.944388 2.117261e-64 4.002682e-60
> write.table(results.carriervsnormal.0.05,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/CarriervsNormal/carriervsnormal_0.05_rev",sep="\t",quote=F)
> write.table(results.carriervsnormal.0.05,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/CarriervsNormal/carriervsnormal_0.05_rev.txt",sep="\t",quote=F)
> write.table(results.cat.nona,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsNormal/mutantvsnormal_all_nona.txt",sep="\t",quote=F)
> write.table(results.cat.mutantvscarrier,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsCarrier/mutantvscarrier_all_rev.txt",sep="\t",quote=F)
> write.table(results.cat.mutantvscarrier.0.05,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsCarrier/mutantvscarrier_0.05_rev.txt",sep="\t",quote=F)
> write.table(results.cat.mutantvscarrier.0.1,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsCarrier/mutantvscarrier_0.1_rev.txt",sep="\t",quote=F)
> results.cat.nona[1:5,1:6]
log2 fold change (MAP): phenotype normal vs mutant 
Wald test p-value: phenotype normal vs mutant 
DataFrame with 5 rows and 6 columns
                      baseMean log2FoldChange     lfcSE        stat     pvalue      padj
                     <numeric>      <numeric> <numeric>   <numeric>  <numeric> <numeric>
ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923
ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169
ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356
ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861
ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903242 0.17098914 0.7470881
> results.mutantvsnormalnona<-read.table(file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/mutantvsnormal_all_nona.txt",sep="\t",header=T)
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
In file(file, "rt") :
  cannot open file '/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/mutantvsnormal_all_nona.txt': No such file or directory
> results.mutantvsnormalnona<-read.table(file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsNormal/mutantvsnormal_all_nona.txt",sep="\t",header=T)
> results.mutantvsnormalnona[1:5,1:7]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj
1 ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923
2 ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169
3 ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356
4 ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861
5 ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903241 0.17098914 0.7470881
> plot(results.mutantvsnormalnona$log2FoldChange,-log10(resuls.mutantvsnormalnona$padj)
+ 
+ 
+ dd
Error: unexpected symbol in:
"
dd"
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(resuls.mutantvsnormalnona$padj), xlim=c(-10, 10), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-adj")
Error in plot(results.mutantvsnormalnona$log2FoldChange, -log10(resuls.mutantvsnormalnona$padj),  : 
  object 'resuls.mutantvsnormalnona' not found
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), xlim=c(-10, 10), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-adj")
> testplot<-plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), xlim=c(-10, 10), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-adj")
> testplot
NULL
> testplot.jpeg<-plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), xlim=c(-10, 10), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), xlim=c(-10, 10), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), xlim=c(-10, 10), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), xlim=c(-5, 5), ylim=c(0, 12), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), xlim=c(-2, 2), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), xlim=c(-2, 2), grid(), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), pch = 16, cex = 0.6, xlim=c(-2, 2), grid(), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), xlim=c(-2, 2), grid(), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), pch = 16, cex = 0.6, xlim=c(-2, 2), grid(), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), pch = 40, cex = 0.6, xlim=c(-2, 2), grid(), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-adj")
plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), pch = 40, cex = 0.6, xlim=c(-2, 2), grid(), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), pch = 16, cex = 5.0, xlim=c(-2, 2), grid(), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), pch = 16, cex = 0.6, xlim=c(-2, 2), grid(), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), pch = 40, cex = 0.6, xlim=c(-2, 2), grid(), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), pch = 16, cex = 0.6, xlim=c(-2, 2), grid(), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), pch = 16, cex = 1.0, xlim=c(-2, 2), grid(), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), pch = 16, xlim=c(-2, 2), grid(), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), pch = 16, cex=0.2, xlim=c(-2, 2), grid(), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), pch = 16, cex = 0.5, xlim=c(-2, 2), grid(), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), pch = 16, cex = 1.0, xlim=c(-2, 2), grid(), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), mar = c(5, 4, 4, 4), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$padj), mar = c(5, 4, 4, 4), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-adj")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-value")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-5, 5), grid(), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-value")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-5, 5), grid(), ylim=c(0, 20), xlab="log2 fold change", ylab="-log10 p-value")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-value")
> results.PCA<-read.table(file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/aRNApipeOutputs/htseq-gene_pca.txt",sep="\t",header=T)
> results.PCA
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, pch = 16, cex = 0.7, xlab="PC1", ylab="PC2")
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, pch = 16, cex = 0.7, xlab="PC1", ylab="PC2", main = "PC1 vs PC2")
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, pch = 16, cex = 0.7, xlab="PC1", ylab="PC2", main = "PC1 vs PC2", xlim=c(-3,3), ylim=c(-3,3))
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, pch = 16, cex = 3.0, xlab="PC1", ylab="PC2", main = "PC1 vs PC2", xlim=c(-3,3), ylim=c(-3,3))
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, pch = 16, cex = 2.0, xlab="PC1", ylab="PC2", main = "PC1 vs PC2", xlim=c(-3,3), ylim=c(-3,3))
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, pch = 16, cex = 1.5, xlab="PC1", ylab="PC2", main = "PC1 vs PC2", xlim=c(-3,3), ylim=c(-3,3))
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-5, 5), grid(), ylim=c(0, 20), xlab="log2 fold change", ylab="-log10 p-value")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-value")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), color=green(grid()), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-value")
Error in plot.window(...) : could not find function "green"
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-value")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 10), xlab="log2 fold change", ylab="-log10 p-value")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-value")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-value", col = "green", lty = 2)
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-value", col = "green", lty = 2)
> lfccutoff <-1
> pvalcutoff<-3.68
> signigenes<-(abs(results.mutantvsnormalnona$log2FoldChange) > lfc & results.mutantvsnormalnona$pvalue > pvalcutoff)
Error: object 'lfc' not found
> signigenes<-(abs(results.mutantvsnormalnona$log2FoldChange) > lfccutoff & results.mutantvsnormalnona$pvalue > pvalcutoff)
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-value", signigenes, pch = 16, cex = 0.8, col = "red")
Error in strsplit(log, NULL) : non-character argument
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-value", points(results.mutantvsnormalnona[signigenes, ], pch = 16, cex = 0.8, col = "red"))
Error in plot.window(...) : "log=" specification must be character
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-value", points(results.mutantvsnormalnona[signigenes, ], pch = 16, cex = 0.7, col = "red"))
Error in plot.window(...) : "log=" specification must be character
> signigenes[1:5,1:6]
Error in signigenes[1:5, 1:6] : incorrect number of dimensions
> signigenes[1:5,1:7]
Error in signigenes[1:5, 1:7] : incorrect number of dimensions
> dim(signigenes)
NULL
> lfccutoff
[1] 1
> pvalcutoff
[1] 3.68
> signigenes

> signi.cat<-results.cat.nona[results.cat.nona$padj<0.05,]
> 
> signigenes<-(abs(results.mutantvsnormalnona$log2FoldChange) > lfccutoff & results.mutantvsnormalnona$pvalue > pvalcutoff)
> 
> signigenes<-results.mutantvsnormalnona[results.mutantvsnormalnona$log2FoldChange>1,] & results.mutantvsnormalnona[results.mutantvsnormalnona$pvalue>3.68,]
Error in Ops.data.frame(results.mutantvsnormalnona[results.mutantvsnormalnona$log2FoldChange >  : 
  ‘&’ only defined for equally-sized data frames
> signigenes<-(results.mutantvsnormalnona[results.mutantvsnormalnona$log2FoldChange>1,] & results.mutantvsnormalnona[results.mutantvsnormalnona$pvalue>3.68,])
Error in Ops.data.frame(results.mutantvsnormalnona[results.mutantvsnormalnona$log2FoldChange >  : 
  ‘&’ only defined for equally-sized data frames
> signigenes1<-results.mutantvsnormalnona[results.mutantvsnormalnona$log2FoldChange>1,]
> signigenes1[1:5,1:7]
                Ensembl   baseMean log2FoldChange     lfcSE     stat   pvalue        padj
1403 ENSFCAG00000002451 1472.33416       1.017726 0.1779980 5.717627 1.08e-08 0.000018800
4756 ENSFCAG00000008266 2381.21758       1.238900 0.2175621 5.694465 1.24e-08 0.000019400
5337 ENSFCAG00000009275   57.90931       1.222029 0.2368906 5.158624 2.49e-07 0.000278410
5338 ENSFCAG00000009276   65.93617       1.262503 0.2376417 5.312631 1.08e-07 0.000138391
5572 ENSFCAG00000009647   70.09061       1.204702 0.2079289 5.793816 6.88e-09 0.000013500
> signigenes1<-abs(results.mutantvsnormalnona[results.mutantvsnormalnona$log2FoldChange>1,])
Error in Math.data.frame(results.mutantvsnormalnona[results.mutantvsnormalnona$log2FoldChange >  : 
  non-numeric variable in data frame: Ensembl
> signigenes1<-results.mutantvsnormalnona[results.mutantvsnormalnona$log2FoldChange>1,] & results.mutantvsnormalnona[results.mutantvsnormalnona$log2FoldChange<-1,]
Error in Ops.data.frame(results.mutantvsnormalnona[results.mutantvsnormalnona$log2FoldChange >  : 
  ‘&’ only defined for equally-sized data frames
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-value")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-value")
> 
> results.mutantvsnormalnona[1:5,1:7]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj
1 ENSFCAG00000000001  148.949879              1 0.1694898 -0.46798569 0.63979482 0.9357923
2 ENSFCAG00000000006    8.922305              1 0.2356122  1.29178550 0.19643144 0.7764169
3 ENSFCAG00000000007 2302.198991              1 0.1914646 -0.01582676 0.98737260 0.9979356
4 ENSFCAG00000000015  227.277399              1 0.1607764  1.85989080 0.06290098 0.5897861
5 ENSFCAG00000000021  399.722691              1 0.1405603  1.36903241 0.17098914 0.7470881
> results.mutantvsnormalnona<-read.table(file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/mutantvsnormal_all_nona.txt",sep="\t",header=T)
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
In file(file, "rt") :
  cannot open file '/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/mutantvsnormal_all_nona.txt': No such file or directory
> results.mutantvsnormalnona<-read.table(file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsNormal/mutantvsnormal_all_nona.txt",sep="\t",header=T)
> results.mutantvsnormalnona[1:5,1:7]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj
1 ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923
2 ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169
3 ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356
4 ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861
5 ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903241 0.17098914 0.7470881
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-value")
> lfccutoff
[1] 1
> pvalcutoff
[1] 3.68
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-value", abline(h = pvalcutoff, col = "green", lty = 2))
Error in plot.window(...) : "log=" specification must be character
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-value", abline(h = pvalcutoff, col = "green", lty = 2))
Error in plot.window(...) : "log=" specification must be character
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-value")
> abline(h = pvalcutoff, col = "green", lty = 2)
> abline(v = lfccutoff, col = "red", lty = 2)
> abline(v = abs(lfccutoff), col = "red", lty = 2)
> abline(h = pvalcutoff, col = "green", lty = 5)
> abline(h = pvalcutoff, col = "green", lty = 2)
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-value")
> abline(h = pvalcutoff, col = "green", lty = 2)
> abline(v = c(-lfccutoff, lfccutoff), col = "blue", lty = 2)
> signigenes<-(abs(results.mutantvsnormalnona$log2FoldChange) > lfccutoff & results.mutantvsnormalnona$pvalue > pvalcutoff)
> points(results.mutantvsnormalnona[signigenes, ], pch = 16, cex = 0.7, col = "red")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-value")
> abline(h = pvalcutoff, col = "green", lty = 2)
> abline(v = c(-lfccutoff, lfccutoff), col = "blue", lty = 2)
> points(results.mutantvsnormalnona[signigenes, ], pch = 16, cex = 0.7, col = "red")
> signigenes<-(abs(results.mutantvsnormalnona$log2FoldChange) > c(-lfccutoff,lfccutoff) & results.mutantvsnormalnona$pvalue > pvalcutoff)
> points(results.mutantvsnormalnona[signigenes, ], pch = 16, cex = 0.7, col = "red")
> signigenes <- (results.mutantvsnormalnona$log2FoldChange > c(-lfccutoff,lfccutoff) & results.mutantvsnormalnona$pvalue > pvalcutoff)
> points(results.mutantvsnormalnona[signigenes, ], pch = 16, cex = 0.7, col = "red")
> signigenes = (abs(results.mutantvsnormalnona$log2FoldChange) > lfccutoff & results.mutantvsnormalnona$pvalue > pvalcutoff)
> points(results.mutantvsnormalnona[signigenes, ], pch = 16, cex = 0.7, col = "red")
> signigenes = (results.mutantvsnormalnona$log2FoldChange > c(-lfccutoff,lfccutoff) & results.mutantvsnormalnona$pvalue > pvalcutoff)
> points(results.mutantvsnormalnona[signigenes, ], pch = 16, cex = 0.7, col = "red")
> signigenes = (results.mutantvsnormalnona$log2FoldChange > c(-lfccutoff,lfccutoff) & results.mutantvsnormalnona$pvalue > pvalcutoff)
> pvalcutoff
[1] 3.68
> pvalcutoff <-0.00022
> pvalcutoff
[1] 0.00022
> signigenes <- (abs(results.mutantvsnormalnona$log2FoldChange) > lfccutoff & results.mutantvsnormalnona$pvalue > -log10(pvalcutoff))
> points(results.mutantvsnormalnona[signigenes, ], pch = 16, cex = 0.7, col = "red")
> -log10(pvalcutoff)
[1] 3.657577
> signigenes <- (abs(results.mutantvsnormalnona$log2FoldChange) > lfccutoff & results.mutantvsnormalnona$pvalue > pvalcutoff)
> points(results.mutantvsnormalnona[signigenes, ], pch = 16, cex = 0.7, col = "red")
> signigenes <- (abs(results.mutantvsnormalnona$log2FoldChange) > lfccutoff & results.mutantvsnormalnona$pvalue < pvalcutoff)
> points(results.mutantvsnormalnona[signigenes, ], pch = 16, cex = 0.7, col = "red")
> signigenes[1:5,1:5]
Error in signigenes[1:5, 1:5] : incorrect number of dimensions
> dim(signigenes)
NULL
> signigenes
> pvalcutoff
[1] 0.00022
> signigenes <- results.mutantvsnormalnona[abs(results.mutantvsnormalnona$log2FoldChange >= lfccutoff&results.mutantvsnormalnona$pvalue < pvalcutoff,]
Error: unexpected ']' in "signigenes <- results.mutantvsnormalnona[abs(results.mutantvsnormalnona$log2FoldChange >= lfccutoff&results.mutantvsnormalnona$pvalue < pvalcutoff,]"
> signigenes <- results.mutantvsnormalnona[abs(results.mutantvsnormalnona$log2FoldChange) > lfccutoff&results.mutantvsnormalnona$pvalue < pvalcutoff,]
> dim(signigenes)
[1] 21  7
> points(signigenes$log2FoldChange,log(signigenes$pvalue,base=10), pch = 16, cex = 0.7, col = "red")
> points(signigenes$log2FoldChange,signigenes$pvalue, pch = 16, cex = 0.7, col = "red")
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-value")
> points(signigenes$log2FoldChange,-log(signigenes$pvalue,base=10), pch = 16, cex = 0.7, col = "red")
> abline(h = pvalcutoff, col = "green", lty = 2)
> plot(results.mutantvsnormalnona$log2FoldChange, -log10(results.mutantvsnormalnona$pvalue), main = "Mutant vs Normal", pch = 16, cex = 0.7, xlim=c(-2, 2), grid(), ylim=c(0, 15), xlab="log2 fold change", ylab="-log10 p-value")
> points(signigenes$log2FoldChange,-log(signigenes$pvalue,base=10), pch = 16, cex = 0.7, col = "red")
> abline(h = -log10(pvalcutoff), col = "green", lty = 2)
> abline(v = c(-lfccutoff, lfccutoff), col = "blue", lty = 2)
> ?identify
> results.mutantvsnormalnona{1:5,1:7
Error: unexpected '{' in "results.mutantvsnormalnona{"
> results.mutantvsnormalnona[1:5,1:7]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj
1 ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923
2 ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169
3 ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356
4 ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861
5 ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903241 0.17098914 0.7470881
> identify(results.mutantvsnormalnona$log2FoldChange,-log10(results.mutantvsnormalnona$pvalue),labels=results.mutantvsnormalnona$Ensembl)
warning: no point within 0.25 inches
warning: no point within 0.25 inches
dev.off()
dev.copy(png, 'myplot.png', width=600, height=600)
dev.off()
> dev.off()
Error in dev.off() : 
  graphics device closed during call to locator or identify
> dev.off()
Error in dev.off() : cannot shut down device 1 (the null device)
> dev.copy(png, 'myplot.png', width=600, height=600)
Error in dev.copy(png, "myplot.png", width = 600, height = 600) : 
  cannot copy from the null device
> dev.off()
Error in dev.off() : cannot shut down device 1 (the null device)
> dev.copy(png, 'myplot.png', width=600, height=600)
Error in dev.copy(png, "myplot.png", width = 600, height = 600) : 
  cannot copy from the null device
> dev.off()
Error in dev.off() : cannot shut down device 1 (the null device)
> abline(v = c(-lfccutoff, lfccutoff), col = "blue", lty = 2)
Error in int_abline(a = a, b = b, h = h, v = v, untf = untf, ...) : 
  plot.new has not been called yet
> results.PCA
      SL.ID RPKM.PC1 RPKM.PC2 RPKM.PC3 RPKM.PC4 RPKM.Quantile_5. RPKM.Quantile_25. RPKM.Quantile_50. RPKM.Quantile_75. RPKM.Quantile_95. RPKM.GV1 RPKM.GV2 COUNTS.PC1 COUNTS.PC2 COUNTS.PC3 COUNTS.PC4
1  SL203073  -0.5494   0.6119   0.6945   1.8405                0              0.89              2.89              4.42              6.49        2        2    -0.4510    -0.2538     0.7165     0.7092
2  SL203074  -0.3793  -1.8074   1.7056  -0.4541                0              0.79              2.75              4.41              6.69        2        2     0.1603     1.1193    -0.6050     2.1345
3  SL203075  -0.4078   0.5003  -1.0303   0.3179                0              0.83              2.89              4.45              6.49        2        2     0.3738     0.5980     0.9247    -0.8680
4  SL203076  -0.3519  -1.2133   0.4624  -0.4600                0              0.83              2.81              4.42              6.56        2        2     0.2650     1.0944    -0.3387     1.0153
5  SL203077   2.8525  -0.7672  -0.6420   0.8945                0              0.75              2.76              4.39              6.50        4        2     2.1209    -1.2111    -1.8121    -0.4284
6  SL203078  -0.4482  -0.0233   0.0702   1.0024                0              0.88              2.88              4.44              6.54        2        2    -1.2907    -0.3036    -0.9549    -0.3097
7  SL203079  -0.7729  -0.0557  -0.2338   0.6684                0              0.75              2.80              4.42              6.54        2        2    -1.6059    -0.0327    -0.7948    -0.3678
8  SL203080  -0.3850   0.0232  -1.4381  -1.1862                0              0.79              2.81              4.36              6.48        2        2     1.1316     1.3357     1.2687    -0.8415
9  SL203081   0.0431  -0.3985  -0.7307  -1.4104                0              0.80              2.82              4.42              6.55        2        2     0.0217     0.3078    -0.3446    -0.9073
10 SL203082  -0.2085   0.2144  -0.0727   0.0582                0              0.84              2.84              4.38              6.48        2        2    -0.3826    -0.0789    -0.1350    -0.4760
11 SL203083  -0.3859   0.9152  -0.5143  -0.0724                0              0.84              2.86              4.40              6.47        2        2    -0.5789    -0.4609     0.5773    -0.8114
12 SL203084   0.9932   2.0004   1.7291  -1.1988                0              1.00              2.97              4.43              6.40        2        2     0.2357    -2.1143     1.4979     1.1513
   COUNTS.Quantile_5. COUNTS.Quantile_25. COUNTS.Quantile_50. COUNTS.Quantile_75. COUNTS.Quantile_95. COUNTS.GV1 COUNTS.GV2
1                   0                3.91                7.39                9.32               11.48          2          2
2                   0                3.70                7.16                9.12               11.29          2          2
3                   0                3.58                7.06                8.98               11.15          2          2
4                   0                3.70                7.13                9.06               11.26          2          2
5                   0                3.17                6.70                8.68               10.83          2          2
6                   0                4.39                7.81                9.74               11.92          2          2
7                   0                4.39                7.97                9.91               12.15          2          2
8                   0                3.17                6.67                8.60               10.80          2          2
9                   0                3.81                7.31                9.24               11.41          2          2
10                  0                3.91                7.41                9.33               11.50          2          2
11                  0                4.00                7.49                9.43               11.61          2          2
12                  0                4.00                7.31                9.13               11.18          2          2
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 0.7, xlim=c(-5, 5), grid(), ylim=c(0, 15), xlab="PC1", ylab="PC2")
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 0.7, xlab="PC1", ylab="PC2")
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC3, main = "PC1 vs PC3", pch = 16, cex = 0.7, xlab="PC1", ylab="PC3")
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC4, main = "PC1 vs PC4", pch = 16, cex = 0.7, xlab="PC1", ylab="PC4")
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 0.7, xlab="PC1", ylab="PC2")
> ids<-c(rep("blue",4),rep("red",4),rep("green",4))
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 0.7, xlab="PC1", ylab="PC2",col="ids")
Error in plot.xy(xy, type, ...) : invalid color name 'ids'
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 0.7, xlab="PC1", ylab="PC2",col=ids)
> ls()
 [1] "carriervsnormal"                  "carriervsnormalcat"               "carriervsnormalgroup"             "catgroup"                         "catnames"                        
 [6] "catnames_rev"                     "dds"                              "dds.carriervsnormal"              "dds.cat"                          "dds.cat.exon"                    
[11] "dds.cat.mutantvscarrier"          "ids"                              "jb.data"                          "jb.exon"                          "jb.pca"                          
[16] "jb.pca.1vs2"                      "lfccutoff"                        "mutantvscarrier"                  "mutantvscarriercat"               "mutantvscarriergroup"            
[21] "mutantvsnormal"                   "mutantvsnormalexon"               "mutantvsnormalgroup"              "phenotype"                        "pvalcutoff"                      
[26] "results.carriervsnormal"          "results.carriervsnormal.0.05"     "results.carriervsnormal.0.1"      "results.carriervsnormal.nona"     "results.cat"                     
[31] "results.cat.exon"                 "results.cat.exon.0.05"            "results.cat.exon.0.1"             "results.cat.exon.nona"            "results.cat.exon.order"          
[36] "results.cat.mutantvscarrier"      "results.cat.mutantvscarrier.0.05" "results.cat.mutantvscarrier.0.1"  "results.cat.nona"                 "results.cat.ordered"             
[41] "results.mutantvsnormalnona"       "results.PCA"                      "signi.cat"                        "signi.cat.0.1"                    "signigenes"                      
[46] "signigenes1"                      "testplot"                         "testplot.jpeg"                   
> mut<-results.PCA[1:4,]
> car<-results.PCA[5:8,]
> norm<-results.PCA[9:12,]
> quartz()
> plot(mut$RPKM.PC1, mut$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 0.7, xlab="PC1", ylab="PC2",xlim=c(-1,3),ylim=c(-2,2),col="blue")
> plot(car$RPKM.PC1, car$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 0.7, xlab="PC1", ylab="PC2",xlim=c(-1,3),ylim=c(-2,2),col="red")
> plot(mut$RPKM.PC1, mut$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 0.7, xlab="PC1", ylab="PC2",xlim=c(-1,3),ylim=c(-2,2),col="blue")
> points(car$RPKM.PC1, car$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 0.7, xlab="PC1", ylab="PC2",xlim=c(-1,3),ylim=c(-2,2),col="red")
> points(norm$RPKM.PC1, norm$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 0.7, xlab="PC1", ylab="PC2",xlim=c(-1,3),ylim=c(-2,2),col="green")
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 0.7, xlab="PC1", ylab="PC2",col=ids)
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 0.7, xlab="PC1", ylab="PC2",col=ids)
> legend(col=c(“blue”,"red","green"), c(“Mutant”, “Carrier”, "Normal"))
Error: unexpected input in "legend(col=c(‚"
> legend(“topleft”, pch=c(2,2), col=c(“blue”,"red","green"), c(“Mutant”, “Carrier”, "Normal"))
Error: unexpected input in "legend(‚"
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 0.7, xlab="PC1", ylab="PC2",col=ids, legend(“topleft”, pch=c(2,2), col=c(“blue”,"red","green"), c(“Mutant”, “Carrier”, "Normal")))
Error: unexpected input in "plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 0.7, xlab="PC1", ylab="PC2",col=ids, legend(‚"
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 0.7, xlab="PC1", ylab="PC2",col=ids)
> legend(“topleft”, pch=c(2,2), col=c(“blue”,"red","green"), legend=c(“Mutant”, “Carrier”, "Normal"))
Error: unexpected input in "legend(‚"
> legend(“topleft”, pch=c(1,3), legend=c(“Mutant”, “Carrier”, "Normal"))
Error: unexpected input in "legend(‚"
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 0.7, xlab="PC1", ylab="PC2",col=ids)
> ids
 [1] "blue"  "blue"  "blue"  "blue"  "red"   "red"   "red"   "red"   "green" "green" "green" "green"
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 0.7, xlab="PC1", ylab="PC2",col=ids)
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 0.7, xlab="PC1", ylab="PC2",col=ids)
> legend(“topleft”, col=c(1:3), pch=16, legend=levels(ids))
Error: unexpected input in "legend(‚"
> legend(x=0,y=1.5 col=c(1:3), pch=16, legend=levels(ids))
Error: unexpected symbol in "legend(x=0,y=1.5 col"
> legend(x=0,y=1.5, col=c(1:3), pch=16, legend=levels(ids))
Error in legend(x = 0, y = 1.5, col = c(1:3), pch = 16, legend = levels(ids)) : 
  'legend' is of length 0
> legend(x=1,y=1.5, col=c(1:3), pch=16, legend=levels(ids))
Error in legend(x = 1, y = 1.5, col = c(1:3), pch = 16, legend = levels(ids)) : 
  'legend' is of length 0
> levels(ids)
NULL
> ids
 [1] "blue"  "blue"  "blue"  "blue"  "red"   "red"   "red"   "red"   "green" "green" "green" "green"
> legend(x=1,y=1.5, col=c(1:3), pch=16, legend=ids)
> legend(x=1,y=1.5, col=c(1:4), pch=16, legend=ids)
> legend("topright",col=c(1:4), pch=16, legend=ids)
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 0.7, xlab="PC1", ylab="PC2",col=ids)
> legend("topright",col=c(1:4), pch=16, legend=ids)
> results.PCA[1:5,1:5]
     SL.ID RPKM.PC1 RPKM.PC2 RPKM.PC3 RPKM.PC4
1 SL203073  -0.5494   0.6119   0.6945   1.8405
2 SL203074  -0.3793  -1.8074   1.7056  -0.4541
3 SL203075  -0.4078   0.5003  -1.0303   0.3179
4 SL203076  -0.3519  -1.2133   0.4624  -0.4600
5 SL203077   2.8525  -0.7672  -0.6420   0.8945
> results.PCA<-read.table(file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/aRNApipeOutputs/htseq-gene_pca.txt",sep="\t",header=T)
> results.PCA[1:5,1:5]
     SL.ID   Group RPKM.PC1 RPKM.PC2 RPKM.PC3
1 SL203073  Mutant  -0.5494   0.6119   0.6945
2 SL203074  Mutant  -0.3793  -1.8074   1.7056
3 SL203075  Mutant  -0.4078   0.5003  -1.0303
4 SL203076  Mutant  -0.3519  -1.2133   0.4624
5 SL203077 Carrier   2.8525  -0.7672  -0.6420
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 0.7, xlab="PC1", ylab="PC2",col=ids)
> legend("topright",col=c(1:3), pch=16, legend=levels(results.PCA$Group))
> legend("topright",col=c("blue","red","green"), pch=16, legend=levels(results.PCA$Group))
> legend("topright",col=c("red","blue","green"), pch=16, legend=levels(results.PCA$Group))
> identify(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2,labels=results.PCA$Group)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12
> legend("topright",col=c("red","blue","green"), pch=16, legend=levels(results.PCA$Group))
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 0.7, xlab="PC1", ylab="PC2",col=ids)
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 2.0, xlab="PC1", ylab="PC2",col=ids)
> legend("topright",col=c("red","blue","green"), pch=16, legend=levels(results.PCA$Group))
> legend("topright",col=c("red","blue","green"), pch=16,cex=2.0, legend=levels(results.PCA$Group))
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 2.0, xlab="PC1", ylab="PC2",col=ids)
> legend("topright",col=c("red","blue","green"), pch=16,cex=2.0, legend=levels(results.PCA$Group))
> plot(results.PCA$RPKM.PC1, results.PCA$RPKM.PC2, main = "PC1 vs PC2", pch = 16, cex = 2.0, xlab="PC1", ylab="PC2",col=ids)
> legend("topright",col=c("red","blue","green"), pch=16, legend=levels(results.PCA$Group))
> results.mutantvsnormalnona[1:5,1:7]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj
1 ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923
2 ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169
3 ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356
4 ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861
5 ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903241 0.17098914 0.7470881
> res$ensembl <- sapply( strsplit( rownames(results.mutantvsnormalnona), split="\\+" ), "[", 1 )
Error in res$ensembl <- sapply(strsplit(rownames(results.mutantvsnormalnona),  : 
  object 'res' not found
> results.mutantvsnormalnona$ensembl <- sapply( strsplit( rownames(results.mutantvsnormalnona), split="\\+" ), "[", 1 )
> results.mutantvsnormalnona[1:5,1:7]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj
1 ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923
2 ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169
3 ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356
4 ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861
5 ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903241 0.17098914 0.7470881
> library("biomaRt")
> ensembl = useMart( "ensembl", dataset = "hsapiens_gene_ensembl" )
> genemap <- getBM( attributes = c("ensembl_gene_id", "entrezgene", "hgnc_symbol"),
+                  filters = "ensembl_gene_id",
+                  values = results.mutantvsnormalnona$Ensembl,
+                  mart = ensembl )
> idx <- match( results.mutantvsnormalnona$Ensembl, genemap$ensembl_gene_id )
> results.mutantvsnormalnona$entrez <- genemap$entrezgene[ idx ]
> results.mutantvsnormalnona$hgnc_symbol <- genemap$hgnc_symbol[ idx ]
> results.mutantvsnormalnona[1:5,1:9]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj ensembl entrez
1 ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923       1   <NA>
2 ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169       2   <NA>
3 ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356       3   <NA>
4 ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861       4   <NA>
5 ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903241 0.17098914 0.7470881       5   <NA>
> results.mutantvsnormalnona[1:5,1:10]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj ensembl entrez hgnc_symbol
1 ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923       1   <NA>        <NA>
2 ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169       2   <NA>        <NA>
3 ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356       3   <NA>        <NA>
4 ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861       4   <NA>        <NA>
5 ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903241 0.17098914 0.7470881       5   <NA>        <NA>
> results.mutantvsnormalnona[1:5,1:11]
Error in `[.data.frame`(results.mutantvsnormalnona, 1:5, 1:11) : 
  undefined columns selected
> results.mutantvsnormalnona[1:5,1:10]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj ensembl entrez hgnc_symbol
1 ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923       1   <NA>        <NA>
2 ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169       2   <NA>        <NA>
3 ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356       3   <NA>        <NA>
4 ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861       4   <NA>        <NA>
5 ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903241 0.17098914 0.7470881       5   <NA>        <NA>
> library("biomaRt")
> ensembl = useMart( "ensembl", dataset = "fcatus_gene_ensembl" )
> genemap <- getBM( attributes = c("ensembl_gene_id", "entrezgene", "hgnc_symbol"), filters = "ensembl_gene_id", values = results.mutantvsnormalnona$Ensembl, mart = ensembl )
> 
> idx <- match( results.mutantvsnormalnona$Ensembl, genemap$ensembl_gene_id )
> results.mutantvsnormalnona$entrez <- genemap$entrezgene[ idx ]
> results.mutantvsnormalnona$hgnc_symbol <- genemap$hgnc_symbol[ idx ]
> results.mutantvsnormalnona[1:5,1:10]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj ensembl    entrez hgnc_symbol
1 ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923       1        NA      INTS6L
2 ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169       2        NA            
3 ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356       3 101098922       HMGCR
4 ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861       4 101095689      CEP192
5 ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903241 0.17098914 0.7470881       5 101093362      FAM98B
> write.table(results.mutantvsnormalnona,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsNormal/mutantvsnormal_all_nona_annotated.txt",sep="\t",quote=F)
> library("biomaRt")
> 
> ensembl = useMart( "ensembl", dataset = "fcatus_gene_ensembl" )
> 
> genemap <- getBM( attributes = c("ensembl_gene_id", "entrezgene", "hgnc_symbol", "description"), filters = "ensembl_gene_id", values = results.mutantvsnormalnona$Ensembl, mart = ensembl )

> idx <- match( results.mutantvsnormalnona$Ensembl, genemap$ensembl_gene_id )
> results.mutantvsnormalnona$entrez <- genemap$entrezgene[ idx ]
> results.mutantvsnormalnona$hgnc_symbol <- genemap$hgnc_symbol[ idx ]
> results.mutantvsnormalnona$hgnc_symbol <- genemap$description[ idx ]
> results.mutantvsnormalnona[1:5,1:11]
Error in `[.data.frame`(results.mutantvsnormalnona, 1:5, 1:11) : 
  undefined columns selected
> results.mutantvsnormalnona[1:5,1:10]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj ensembl    entrez                                                                     hgnc_symbol
1 ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923       1        NA           integrator complex subunit 6 like [Source:HGNC Symbol;Acc:HGNC:27334]
2 ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169       2        NA                   Uncharacterized protein  [Source:UniProtKB/TrEMBL;Acc:M3X0H4]
3 ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356       3 101098922     3-hydroxy-3-methylglutaryl-CoA reductase [Source:HGNC Symbol;Acc:HGNC:5006]
4 ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861       4 101095689                     centrosomal protein 192 [Source:HGNC Symbol;Acc:HGNC:25515]
5 ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903241 0.17098914 0.7470881       5 101093362 family with sequence similarity 98 member B [Source:HGNC Symbol;Acc:HGNC:26773]
> results.mutantvsnormalnona$hgnc_symbol <- genemap$hgnc_symbol[ idx ]
> results.mutantvsnormalnona$description <- genemap$description[ idx ]
> results.mutantvsnormalnona[1:5,1:11]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj ensembl    entrez hgnc_symbol                                                                     description
1 ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923       1        NA      INTS6L           integrator complex subunit 6 like [Source:HGNC Symbol;Acc:HGNC:27334]
2 ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169       2        NA                               Uncharacterized protein  [Source:UniProtKB/TrEMBL;Acc:M3X0H4]
3 ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356       3 101098922       HMGCR     3-hydroxy-3-methylglutaryl-CoA reductase [Source:HGNC Symbol;Acc:HGNC:5006]
4 ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861       4 101095689      CEP192                     centrosomal protein 192 [Source:HGNC Symbol;Acc:HGNC:25515]
5 ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903241 0.17098914 0.7470881       5 101093362      FAM98B family with sequence similarity 98 member B [Source:HGNC Symbol;Acc:HGNC:26773]
> ensembl = useMart( "ensembl", dataset = "fcatus_gene_ensembl" )
> genemap <- getBM( attributes = c("ensembl_gene_id", "entrezgene", "hgnc_symbol", "description", "chromosome_name"), filters = "ensembl_gene_id", values = results.mutantvsnormalnona$Ensembl, mart = ensembl )

> 
> 
> idx <- match( results.mutantvsnormalnona$Ensembl, genemap$ensembl_gene_id )
> results.mutantvsnormalnona$entrez <- genemap$entrezgene[ idx ]
> results.mutantvsnormalnona$hgnc_symbol <- genemap$hgnc_symbol[ idx ]
> results.mutantvsnormalnona$description <- genemap$description[ idx ]
> results.mutantvsnormalnona$chromosome_name <- genemap$chromosome_name[ idx ]
> results.mutantvsnormalnona[1:5,1:12]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj ensembl    entrez hgnc_symbol                                                                     description
1 ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923       1        NA      INTS6L           integrator complex subunit 6 like [Source:HGNC Symbol;Acc:HGNC:27334]
2 ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169       2        NA                               Uncharacterized protein  [Source:UniProtKB/TrEMBL;Acc:M3X0H4]
3 ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356       3 101098922       HMGCR     3-hydroxy-3-methylglutaryl-CoA reductase [Source:HGNC Symbol;Acc:HGNC:5006]
4 ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861       4 101095689      CEP192                     centrosomal protein 192 [Source:HGNC Symbol;Acc:HGNC:25515]
5 ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903241 0.17098914 0.7470881       5 101093362      FAM98B family with sequence similarity 98 member B [Source:HGNC Symbol;Acc:HGNC:26773]
  chromosome_name
1               X
2              C2
3              A1
4              D3
5              B3
> ensembl = useMart( "ensembl", dataset = "fcatus_gene_ensembl" )
> genemap <- getBM( attributes = c("ensembl_gene_id", "entrezgene", "hgnc_symbol", "description", "chromosome_name", "gene_start", "gene_end"), filters = "ensembl_gene_id", values = results.mutantvsnormalnona$Ensembl, mart = ensembl )
Error in getBM(attributes = c("ensembl_gene_id", "entrezgene", "hgnc_symbol",  : 

> genemap <- getBM( attributes = c("ensembl_gene_id", "entrezgene", "hgnc_symbol", "description", "chromosome_name", "start_position", "end_position"), filters = "ensembl_gene_id", values = results.mutantvsnormalnona$Ensembl, mart = ensembl )

> 
> genemap <- getBM( attributes = c("ensembl_gene_id", "entrezgene", "hgnc_symbol","external_gene_name","description", "chromosome_name", "gene_start", "gene_end"), filters = "ensembl_gene_id", values = results.mutantvsnormalnona$Ensembl, mart = ensembl )
Error in getBM(attributes = c("ensembl_gene_id", "entrezgene", "hgnc_symbol",  : 
  Invalid attribute(s): gene_start, gene_end 
Please use the function 'listAttributes' to get valid attribute names
> genemap <- getBM( attributes = c("ensembl_gene_id", "entrezgene", "hgnc_symbol","external_gene_name", "description", "chromosome_name", "start_position", "end_position"), filters = "ensembl_gene_id", values = results.mutantvsnormalnona$Ensembl, mart = ensembl )

> 
> idx <- match( results.mutantvsnormalnona$Ensembl, genemap$ensembl_gene_id )
> results.mutantvsnormalnona$entrez_gene_id <- genemap$entrezgene[ idx ]
> results.mutantvsnormalnona$hgnc_symbol <- genemap$hgnc_symbol[ idx ]
> results.mutantvsnormalnona$gene_name <- genemap$external_gene_name[ idx ]
> results.mutantvsnormalnona$description <- genemap$description[ idx ]
> results.mutantvsnormalnona$chromosome_name <- genemap$chromosome_name[ idx ]
> results.mutantvsnormalnona$gene_start <- genemap$start_position[ idx ]
> results.mutantvsnormalnona$gene_end <- genemap$end_position[ idx ]
> results.mutantvsnormalnona[1:5,1:10]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj ensembl    entrez hgnc_symbol
1 ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923       1        NA      INTS6L
2 ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169       2        NA            
3 ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356       3 101098922       HMGCR
4 ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861       4 101095689      CEP192
5 ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903241 0.17098914 0.7470881       5 101093362      FAM98B
> results.mutantvsnormalnona[1:5,1:15]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj ensembl    entrez hgnc_symbol                                                                     description
1 ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923       1        NA      INTS6L           integrator complex subunit 6 like [Source:HGNC Symbol;Acc:HGNC:27334]
2 ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169       2        NA                               Uncharacterized protein  [Source:UniProtKB/TrEMBL;Acc:M3X0H4]
3 ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356       3 101098922       HMGCR     3-hydroxy-3-methylglutaryl-CoA reductase [Source:HGNC Symbol;Acc:HGNC:5006]
4 ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861       4 101095689      CEP192                     centrosomal protein 192 [Source:HGNC Symbol;Acc:HGNC:25515]
5 ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903241 0.17098914 0.7470881       5 101093362      FAM98B family with sequence similarity 98 member B [Source:HGNC Symbol;Acc:HGNC:26773]
  chromosome_name entrez_gene_id gene_name gene_start
1               X             NA    INTS6L  110556898
2              C2             NA            103066876
3              A1      101098922     HMGCR  140213418
4              D3      101095689    CEP192   33299324
5              B3      101093362    FAM98B   66284128
> results.mutantvsnormalnona[1:5,1:16]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj ensembl    entrez hgnc_symbol                                                                     description
1 ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923       1        NA      INTS6L           integrator complex subunit 6 like [Source:HGNC Symbol;Acc:HGNC:27334]
2 ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169       2        NA                               Uncharacterized protein  [Source:UniProtKB/TrEMBL;Acc:M3X0H4]
3 ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356       3 101098922       HMGCR     3-hydroxy-3-methylglutaryl-CoA reductase [Source:HGNC Symbol;Acc:HGNC:5006]
4 ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861       4 101095689      CEP192                     centrosomal protein 192 [Source:HGNC Symbol;Acc:HGNC:25515]
5 ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903241 0.17098914 0.7470881       5 101093362      FAM98B family with sequence similarity 98 member B [Source:HGNC Symbol;Acc:HGNC:26773]
  chromosome_name entrez_gene_id gene_name gene_start  gene_end
1               X             NA    INTS6L  110556898 110612747
2              C2             NA            103066876 103067629
3              A1      101098922     HMGCR  140213418 140228178
4              D3      101095689    CEP192   33299324  33424858
5              B3      101093362    FAM98B   66284128  66312631
> write.table(results.mutantvsnormalnona,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsNormal/mutantvsnormal_all_nona_annotated.txt",sep="\t",quote=F)
> ensembl = useMart( "ensembl", dataset = "fcatus_gene_ensembl" )
> genemap <- getBM( attributes = c("ensembl_gene_id", "entrezgene","external_gene_name", "description", "chromosome_name", "start_position", "end_position"), filters = "ensembl_gene_id", values = results.mutantvsnormalnona$Ensembl, mart = ensembl )

> 
> idx <- match( results.mutantvsnormalnona$Ensembl, genemap$ensembl_gene_id )
> results.mutantvsnormalnona$entrez_gene_id <- genemap$entrezgene[ idx ]
> results.mutantvsnormalnona$hgnc_symbol <- genemap$hgnc_symbol[ idx ]
> results.mutantvsnormalnona[1:5,1:16]
Error in `[.data.frame`(results.mutantvsnormalnona, 1:5, 1:16) : 
  undefined columns selected
> results.mutantvsnormalnona[1:5,1:15]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj ensembl    entrez                                                                     description chromosome_name
1 ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923       1        NA           integrator complex subunit 6 like [Source:HGNC Symbol;Acc:HGNC:27334]               X
2 ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169       2        NA                   Uncharacterized protein  [Source:UniProtKB/TrEMBL;Acc:M3X0H4]              C2
3 ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356       3 101098922     3-hydroxy-3-methylglutaryl-CoA reductase [Source:HGNC Symbol;Acc:HGNC:5006]              A1
4 ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861       4 101095689                     centrosomal protein 192 [Source:HGNC Symbol;Acc:HGNC:25515]              D3
5 ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903241 0.17098914 0.7470881       5 101093362 family with sequence similarity 98 member B [Source:HGNC Symbol;Acc:HGNC:26773]              B3
  entrez_gene_id gene_name gene_start  gene_end
1             NA    INTS6L  110556898 110612747
2             NA            103066876 103067629
3      101098922     HMGCR  140213418 140228178
4      101095689    CEP192   33299324  33424858
5      101093362    FAM98B   66284128  66312631
> idx <- match( results.mutantvsnormalnona$Ensembl, genemap$ensembl_gene_id )
> results.mutantvsnormalnona$entrez_gene_id <- genemap$entrezgene[ idx ]
> results.mutantvsnormalnona$gene_name <- genemap$external_gene_name[ idx ]
> results.mutantvsnormalnona$description <- genemap$description[ idx ]
> results.mutantvsnormalnona$chromosome_name <- genemap$chromosome_name[ idx ]
> results.mutantvsnormalnona$gene_start <- genemap$start_position[ idx ]
> results.mutantvsnormalnona$gene_end <- genemap$end_position[ idx ]
> results.mutantvsnormalnona[1:5,1:15]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj ensembl    entrez                                                                     description chromosome_name
1 ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923       1        NA           integrator complex subunit 6 like [Source:HGNC Symbol;Acc:HGNC:27334]               X
2 ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169       2        NA                   Uncharacterized protein  [Source:UniProtKB/TrEMBL;Acc:M3X0H4]              C2
3 ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356       3 101098922     3-hydroxy-3-methylglutaryl-CoA reductase [Source:HGNC Symbol;Acc:HGNC:5006]              A1
4 ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861       4 101095689                     centrosomal protein 192 [Source:HGNC Symbol;Acc:HGNC:25515]              D3
5 ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903241 0.17098914 0.7470881       5 101093362 family with sequence similarity 98 member B [Source:HGNC Symbol;Acc:HGNC:26773]              B3
  entrez_gene_id gene_name gene_start  gene_end
1             NA    INTS6L  110556898 110612747
2             NA            103066876 103067629
3      101098922     HMGCR  140213418 140228178
4      101095689    CEP192   33299324  33424858
5      101093362    FAM98B   66284128  66312631
> results.mutantvsnormalnona<-read.table(file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsNormal/mutantvsnormal_all_nona.txt",sep="\t",header=T)
> results.mutantvsnormalnona[1:5,1:7]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj
1 ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923
2 ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169
3 ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356
4 ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861
5 ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903241 0.17098914 0.7470881
> library("biomaRt")
> ensembl = useMart( "ensembl", dataset = "fcatus_gene_ensembl" )
library("biomaRt")
> genemap <- getBM( attributes = c("ensembl_gene_id", "entrezgene","external_gene_name", "description", "chromosome_name", "start_position", "end_position"), filters = "ensembl_gene_id", values = results.mutantvsnormalnona$Ensembl, mart = ensembl )

> 
> idx <- match( results.mutantvsnormalnona$Ensembl, genemap$ensembl_gene_id )
> results.mutantvsnormalnona$entrez_gene_id <- genemap$entrezgene[ idx ]
> results.mutantvsnormalnona$gene_name <- genemap$external_gene_name[ idx ]
> results.mutantvsnormalnona$description <- genemap$description[ idx ]
> results.mutantvsnormalnona$chromosome_name <- genemap$chromosome_name[ idx ]
> results.mutantvsnormalnona$gene_start <- genemap$start_position[ idx ]
> results.mutantvsnormalnona$gene_end <- genemap$end_position[ idx ]
> results.mutantvsnormalnona[1:5,1:15]
Error in `[.data.frame`(results.mutantvsnormalnona, 1:5, 1:15) : 
  undefined columns selected
> results.mutantvsnormalnona[1:5,1:14]
Error in `[.data.frame`(results.mutantvsnormalnona, 1:5, 1:14) : 
  undefined columns selected
> results.mutantvsnormalnona[1:5,1:7]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj
1 ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923
2 ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169
3 ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356
4 ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861
5 ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903241 0.17098914 0.7470881
> results.mutantvsnormalnona[1:5,1:11]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj entrez_gene_id gene_name                                                                     description chromosome_name
1 ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923             NA    INTS6L           integrator complex subunit 6 like [Source:HGNC Symbol;Acc:HGNC:27334]               X
2 ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169             NA                             Uncharacterized protein  [Source:UniProtKB/TrEMBL;Acc:M3X0H4]              C2
3 ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356      101098922     HMGCR     3-hydroxy-3-methylglutaryl-CoA reductase [Source:HGNC Symbol;Acc:HGNC:5006]              A1
4 ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861      101095689    CEP192                     centrosomal protein 192 [Source:HGNC Symbol;Acc:HGNC:25515]              D3
5 ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903241 0.17098914 0.7470881      101093362    FAM98B family with sequence similarity 98 member B [Source:HGNC Symbol;Acc:HGNC:26773]              B3
> results.mutantvsnormalnona[1:5,1:13]
             Ensembl    baseMean log2FoldChange     lfcSE        stat     pvalue      padj entrez_gene_id gene_name                                                                     description chromosome_name
1 ENSFCAG00000000001  148.949879   -0.079318811 0.1694898 -0.46798569 0.63979482 0.9357923             NA    INTS6L           integrator complex subunit 6 like [Source:HGNC Symbol;Acc:HGNC:27334]               X
2 ENSFCAG00000000006    8.922305    0.304360481 0.2356122  1.29178550 0.19643144 0.7764169             NA                             Uncharacterized protein  [Source:UniProtKB/TrEMBL;Acc:M3X0H4]              C2
3 ENSFCAG00000000007 2302.198991   -0.003030265 0.1914646 -0.01582676 0.98737260 0.9979356      101098922     HMGCR     3-hydroxy-3-methylglutaryl-CoA reductase [Source:HGNC Symbol;Acc:HGNC:5006]              A1
4 ENSFCAG00000000015  227.277399    0.299026616 0.1607764  1.85989080 0.06290098 0.5897861      101095689    CEP192                     centrosomal protein 192 [Source:HGNC Symbol;Acc:HGNC:25515]              D3
5 ENSFCAG00000000021  399.722691    0.192431619 0.1405603  1.36903241 0.17098914 0.7470881      101093362    FAM98B family with sequence similarity 98 member B [Source:HGNC Symbol;Acc:HGNC:26773]              B3
  gene_start  gene_end
1  110556898 110612747
2  103066876 103067629
3  140213418 140228178
4   33299324  33424858
5   66284128  66312631
> write.table(results.mutantvsnormalnona,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsNormal/mutantvsnormal_all_nona_annotated.txt",sep="\t",quote=F)
> write.table(results.mutantvsnormalnona,file="/Users/jbenito/Desktop/Myerslabdocs/ShakyCatsRNASeq/RResults/MutantvsNormal/mutantvsnormal_all_nona_annotated.txt",sep="\t",quote=F) 
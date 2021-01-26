# Chernobyl Thyroid Cancer - Methylation
## I. Description
This workflow was used for the detection of differentially methylated cpg islands in the Chernobyl Thyroid Cancer study.

Major steps in the workflow are:
1) Reading in normalized beta value data and sample table and preparing related data for the following analysis
2) Detecting differentially methylated cpg islands using the tool minfi
3) Detecting differentially methylated cpg islands using the tool ChAMP
4) Reporting the overlap of differntially methylated cpg islands detected by the two tools

## II. Dependencies
* [Snakemake](https://snakemake.readthedocs.io/en/stable/)
* [R](https://www.r-project.org):
  * [rmakrdown](https://cran.r-project.org/web/packages/rmarkdown/index.html)
  * [data.table](https://cran.r-project.org/web/packages/data.table/index.html)
  * [minfi](https://bioconductor.org/packages/release/bioc/html/minfi.html)
  * [ChAMP](https://bioconductor.org/packages/release/bioc/html/ChAMP.html)
  * [ggfortify](https://cran.r-project.org/web/packages/ggfortify/index.html)
  * [ggplot2](https://cran.r-project.org/web/packages/ggplot2/index.html)
  * [pheatmap](https://cran.r-project.org/web/packages/pheatmap/index.html)
  * [plotly](https://cran.r-project.org/web/packages/plotly/index.html)
## III. Input requirements
* [config.yaml](https://github.com/NCI-CGR/ChernobylThyroidCancer-Methylation/blob/main/config.yaml): select the type of phenotype data
* [data/normBeta.txt](https://github.com/NCI-CGR/ChernobylThyroidCancer-Methylation/tree/main/data): normalized beta value data stored in the directory: data/
* [data/pheno.csv](https://github.com/NCI-CGR/ChernobylThyroidCancer-Methylation/tree/main/data): sample table stored in the direcotry: data/ 
* [data/MethylationEPIC_v-1-0_B2_anno.csv](https://github.com/NCI-CGR/ChernobylThyroidCancer-Methylation/tree/main/data): probe annotation file stored i the directory: data/
## IV. Output
* Results from minfi in directory: minfi/
* Results from ChAMP in directory: champ/
* Final results in directory: overlap/
## V. Working directory structure
```bash
.
├── champ                                               
│   ├── champ_data.Rdata
│   ├── champ.html
│   ├── phenotype_champ_dmp_q0.01.csv
│   ├── phenotype_champ_dmp_q0.05.csv
│   ├── phenotype_champ_GSEA_path_sig_dmp_q0.01.csv
│   ├── phenotype_champ_GSEA_path_sig_dmr_q0.05.csv
│   └── phenotype_champ_sig_dmr_q0.05.csv
├── cluster_config.yaml
├── config.yaml 
├── data 
│   ├── data_read_in.html
│   ├── inital_data.Rdata
│   ├── MethylationEPIC_v-1-0_B2_anno.csv 
│   ├── normBeta.txt 
│   └── pheno.csv 
├── log 
├── minfi 
│   ├── minfi_cat.html
│   ├── minfi_data.Rdata
│   └── phenotype_minfi_dmp_q0.01_annot.csv
├── overlap 
│   ├── check_overlap.html
│   ├── overlap_phenotype_dmp_q0.01.csv
│   ├── overlap_phenotype_dmp_q0.01fc2.csv
│   ├── overlap_phenotype_sig_dmp_q0.01fc2_beta_data.csv
│   └── overlap.Rdata
├── R_code 
│   ├── champ.Rmd
│   ├── check_overlap.Rmd
│   ├── data_read_in.Rmd
│   ├── minfi_cat.Rmd
│   └── minfi_con.Rmd
├── README.md
├── run.sh 
├── Snakefile
└── snakemake.batch
```

# Chernobyl Thyroid Cancer - Methylation
## I. Description
This workflow was used for the detection of differentially methylated cpg islands in the Chernobyl Thyroid Cancer study.
Major steps in the workflow are:
1. Read in normalized beta value data and sample table, and prepare related data for the following analysis
2. Detect differentially methylated cpg islands using the tool minfi
3. Detect differentially methylated cpg islands using the tool ChAMP
4) Report the overlap of the detected differntially methylated cpg islands by the two tools
## II. Dependencies
* [Python](https://www.python.org)
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
* [config.yaml](https://github.com/NCI-CGR/ChernobylThyroidCancer-Methylation/blob/main/config.yaml): select the right type of the phenotype data
* [data/normBeta.txt](https://github.com/NCI-CGR/ChernobylThyroidCancer-Methylation/tree/main/data): normalized beta value data stored in the directory: data/
* [data/pheno.csv](https://github.com/NCI-CGR/ChernobylThyroidCancer-Methylation/tree/main/data): sample table stored in the direcotry: data/ 
* [data/MethylationEPIC_v-1-0_B2_anno.csv](https://github.com/NCI-CGR/ChernobylThyroidCancer-Methylation/tree/main/data): probe annotation file stored i the directory: data/

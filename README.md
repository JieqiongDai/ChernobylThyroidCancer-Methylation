# Chernobyl Thyroid Cancer - Methylation
## I. Description
This workflow was used for the detection of differentially methylated cpg islands in the Chernobyl Thyroid Cancer study.
Major steps in the workflow are:
1. Read in normalized beta value data and sample table, and select required samples for the following analysis
2. Detect differentially methylated cpg islands using the tool minfi
3. Detect differentially methylated cpg islands using the tool ChAMP 
4) Report the overlap of the detected differntially methylated cpg islands by the two tools
## II. Dependencies
* [Python](https://www.python.org)
* [Snakemake](https://snakemake.readthedocs.io/en/stable/)
* [R](https://www.r-project.org):
    * [rmakrdown](https://cran.r-project.org/web/packages/rmarkdown/index.html)
    * [data.table](https://cran.r-project.org/web/packages/data.table/index.html)
    3) [minfi](https://bioconductor.org/packages/release/bioc/html/minfi.html)
    4) [ChAMP](https://bioconductor.org/packages/release/bioc/html/ChAMP.html)
    5) [ggfortify](https://cran.r-project.org/web/packages/ggfortify/index.html)
    6) [ggplot2](https://cran.r-project.org/web/packages/ggplot2/index.html)
    7) [pheatmap](https://cran.r-project.org/web/packages/pheatmap/index.html)
    8) [plotly](https://cran.r-project.org/web/packages/plotly/index.html)
## III. Input requirements
1) config.yaml: select the right type of the phenotype data
2) data/normBeta.txt: normalized beta value data stored in the directory: data/
3) data/pheno.csv: sample table stored in the direcotry: data/ 
4) data/MethylationEPIC_v-1-0_B2_anno.csv: probe annotation file stored i the directory: data/

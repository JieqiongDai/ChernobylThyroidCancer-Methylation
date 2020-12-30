# Chernobyl Thyroid Cancer - Methylation
## I. Description
This workflow was used for the detection of differentially methylated cpg islands in the Chernobyl Thyroid Cancer study.
Major steps in the workflow are:
1. Read in normalized beta value data and sample table, and select required samples for the following analysis
2. Detect differentially methylated cpg islands using the tool minfi
3. Detect differentially methylated cpg islands using the tool ChAMP
4) Report the overlap of the detected differntially methylated cpg islands by the two tools
## II. Dependencies
1) Python
2) Snakemake
3) R:
    1) rmakrdown
    2) data.table
    3) minfi
    4) ChAMP
    5) ggfortify
    6) ggplot2
    7) pheatmap
    8) plotly
## III. Input requirements
1) config.yaml: select the right type of the phenotype data
2) data/normBeta.txt: normalized beta value data stored in the directory: data/
3) data/pheno.csv: sample table stored in the direcotry: data/ 
4) data/MethylationEPIC_v-1-0_B2_anno.csv: probe annotation file stored i the directory: data/

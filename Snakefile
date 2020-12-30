### This workflow is for the detection of differentially methylated cpg islands

## vim: ft=python
import sys
import os
from snakemake.utils import R

shell.prefix("set -eo pipefail; ")
localrules: all
configfile:"config.yaml"

rule all:
     input:
        "data/inital_data.Rdata",
        "minfi/minfi_data.Rdata",
        "champ/champ_data.Rdata",
        "overlap/overlap.Rdata"

rule read_in:
    input:
         "data/norBeta.txt",
         "data/pheno.csv"
    output:
         "data/inital_data.Rdata"
    threads:2
    shell:
          """
          Rscript -e "rmarkdown::render('R_code/data_read_in.Rmd', output_file='../data/data_read_in.html')" 2>log/data_read_in.err
          """

rule minfi:
    input: "data/inital_data.Rdata"
    output: "minfi/minfi_data.Rdata"
    threads:2
    params:
      type = config["minfi_type"] 
    shell:
          """
          Rscript -e "rmarkdown::render('R_code/{params.type}.Rmd', output_file='../minfi/{params.type}.html')" 2>log/minfi.err
          """

rule champ:
    input:  "minfi/minfi_data.Rdata","data/inital_data.Rdata"
    output: "champ/champ_data.Rdata"
    threads:2
    shell:
          """
          Rscript -e "rmarkdown::render('R_code/champ.Rmd', output_file='../champ/champ.html')" 2>log/champ.err
          """

rule overlap:
    input: "minfi/minfi_data.Rdata","champ/champ_data.Rdata"
    output: "overlap/overlap.Rdata"
    threads:2
    shell:
          """
          Rscript -e "rmarkdown::render('R_code/check_overlap.Rmd', output_file='../overlap/check_overlap.html')" 2>log/check_overlap.err
          """


      

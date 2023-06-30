# Repository tutorial for running bd-rhapsody alignment on BIH cluster

## Instructions
To run the alignment you will need:
- singularity image (should be downloaded automatically on running the alignment)
- cwl pipeline (.cwl file in this repositor)
- config file (config.yml template in this repository)
- fastq.gz sequencing files
- reference type based on your analysis
- conda environment (recipe in this repository)
- run script for job submission (example in this repository)

## Reference
The reference for version 2.0 is combination of genomic reference and gtf file. Prebuild option can be found here:
human: <https://bd-rhapsody-public.s3.amazonaws.com/Rhapsody-WTA/RhapRef_Human_WTA_2023-02.tar.gz>
mouse: <https://bd-rhapsody-public.s3.amazonaws.com/Rhapsody-WTA/RhapRef_Mouse_WTA_2023-02.tar.gz>
How to build your own reference is here: <https://bitbucket.org/CRSwDev/cwl/src/master/v2.0/Extra_Utilities/>
### AB reference
Make sure you have the correct AB oligo reference. If you don't see any signal for an antibody in the results, you might have the wrong antibody clone as a reference.

## Step-wise guide
1. Create conda environment:
```
conda env create --name bd_rhapsody_alignment --file=bd_rhapsody_conda.yml
conda activate bd_rhapsody_alignment
```
2. Rewrite your config file
- make sure you set a directory, where large amounts of temporary files can be saved, ideally scratch directory
3. Submit the run script as a job
- depending on the size of the dataset, high memory nodes may be needed(>200GB): you need to apply for these via CUBI
sbatch --cpus-per-task=30 --mem=190GB run_script.sh --time 5-00

## More information
More detailed information can be found in the pdf files in this repository

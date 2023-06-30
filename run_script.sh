#!/bin/bash
cwltool --singularity --parallel --cachedir /fast/projects/your_project/scratch/s1 --outdir output_direcotry/ rhapsody_wta_2.0b2.cwl config.yml

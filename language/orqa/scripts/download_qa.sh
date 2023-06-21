#!/bin/bash

#SBATCH --partition=cpu-short
mkdir resplit
gsutil -m cp -R gs://orqa-data/resplit resplit


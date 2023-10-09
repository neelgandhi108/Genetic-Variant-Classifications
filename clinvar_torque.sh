#!/bin/bash
#PBS -N notebook_analysis
#PBS -l nodes=1:ppn=8
#PBS -l walltime=2:00:00
#PBS -q clinvar_torque

# Load necessary modules (if needed)
# module load anaconda

# Activate your conda environment (if needed)
# conda activate clinvar

# Change to the directory containing your notebooks
cd /neelg/dartmouth/

# Run the Jupyter notebooks
jupyter nbconvert --execute ExploratoryDataAnalysis.ipynb
jupyter nbconvert --execute Preprocessing.ipynb
jupyter nbconvert --execute MachineLearningModels.ipynb

# Deactivate your conda environment (if needed)
# conda deactivate

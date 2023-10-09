#!/bin/bash
#SBATCH --job-name=notebook_analysis
#SBATCH --partition=your_partition_name
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --time=2:00:00

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

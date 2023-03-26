
## Predicting Genetic Variant Classifications and Analyzing the Best Feature Predicators

# Project Breakdown

Our project has 3 main jupyter notebooks:
1. `ExploratoryDataAnalysis.ipynb`: This notebook analyzes the data from `clinvar_conflicting.csv` and creates 14 graphs, which analyzes and shows the data.
2. `Preprocessing.ipynb`: This notebook takes in `clinvar_conflicting.csv` and creates a clean, processed file named `processedData.csv`
3. `MachineLearningModels.ipynb`: This is our main notebook that takes in `processedData.csv` and creates 10 models, with our `StackedEnsemble` model having the best result.


## Predicting Genetic Variant Classifications and Analyzing the Best Feature Predicators

In the era of next-generation sequencing, the exponential growth of genomic data has presented a significant challenge for clinicians. This challenge revolves around the conflicting classifications of genetic variants' pathogenicity. Despite the establishment of standardized guidelines by the American College of Genetics and Genomics (AMCG), inconsistencies in variant classification persist, profoundly affecting patient care decisions.

![EDA-Genetics](https://github.com/neelgandhi108/Genetic-Variant-Classifications/blob/main/Assets/SMOTE-Genetics.pngEDA-Genetics.png)

Previous research has not delved into the exploration of the key factors that influence the ultimate classification of these variants. Our primary objective is not only to develop a high-performing classification model but also to identify the pivotal features that enhance classification efficiency.

![PermutationFeature](https://github.com/neelgandhi108/Genetic-Variant-Classifications/blob/main/Assets/PermutationFeature.png)

We began our investigation by working with a refined dataset sourced from ClinVar, a publicly accessible repository of genetic variants. We employed various techniques such as one-hot encoding, categorical variable assignment, and data type conversion to construct feature sets. Addressing the challenge of imbalanced data, we applied the Synthetic Minority Oversampling Technique (SMOTE) and performed feature normalization to mitigate differences in feature magnitudes.

![SMOTE-Genetics](https://github.com/neelgandhi108/Genetic-Variant-Classifications/blob/main/Assets/SMOTE-Genetics.png)

Our analysis involved the evaluation of multiple machine learning models, resulting in the identification of the top three performers. Two of these models underwent tuning, and all three were integrated into a unified stacked ensemble model, surpassing the performance of any individual model while maintaining efficiency.

![FlowChart](https://github.com/neelgandhi108/Genetic-Variant-Classifications/blob/main/Assets/FlowChart.png)

Subsequently, we conducted an in-depth analysis to discern the features that exerted the most significant influence on binary classification. Tools like local interpretable model-agnostic explanations (LIME), SHapley Additive exPlanations (SHAP), permutation feature importance, and partial dependence plots (PDP) were instrumental in this endeavor.

![LIME](https://github.com/neelgandhi108/Genetic-Variant-Classifications/blob/main/Assets/LIME.png)
![SHAP](https://github.com/neelgandhi108/Genetic-Variant-Classifications/blob/main/Assets/SHAP.png)

Our findings shed light on the critical features that drive the classification of genetic variants. This research contribution to the field of computational genetics is twofold. Firstly, we introduce a novel stacked ensemble approach that attains exceptional accuracy, sensitivity, specificity, and Area Under the Receiver Operating Characteristics (AUROC). Additionally, we expand our understanding of the ClinVar dataset by pinpointing the most salient features in the context of classification.

![AUC_ROC_Curve](https://github.com/neelgandhi108/Genetic-Variant-Classifications/blob/main/Assets/AUC_ROC_Curve.png)
![Confusion_Mat](https://github.com/neelgandhi108/Genetic-Variant-Classifications/blob/main/Assets/Confusion_Mat.png)



In the pursuit of this research, we harnessed the capabilities of High-Performance Computing (HPC) clusters and containerization technology through Docker. These tools played a pivotal role in executing our computational tasks efficiently and reproducibly.
For scalable and parallelized computation, we utilized Torque and SLURM, popular job scheduling and resource management systems for HPC clusters. These systems enabled us to distribute and manage the execution of our computational workflows across multiple computing nodes, ensuring optimal resource utilization and reduced processing time.

![SLURM](https://github.com/neelgandhi108/Genetic-Variant-Classifications/blob/main/Assets/SLURM.png)

Docker, a powerful containerization platform, allowed us to encapsulate our computational environment and dependencies. By containerizing our work, we ensured that our analysis could be executed consistently across different systems and environments, eliminating compatibility issues and enhancing reproducibility.By leveraging Torque, SLURM, and Docker, we empowered our research with the computational resources and flexibility necessary to tackle the challenges of genetic variant classification effectively.

![Docker](https://github.com/neelgandhi108/Genetic-Variant-Classifications/blob/main/Assets/Docker.png)



# Project Breakdown

Our project has 3 main jupyter notebooks:
1. `ExploratoryDataAnalysis.ipynb`: This notebook analyzes the data from `clinvar_conflicting.csv` and creates 14 graphs, which analyzes and shows the data.
2. `Preprocessing.ipynb`: This notebook takes in `clinvar_conflicting.csv` and creates a clean, processed file named `processedData.csv`
3. `MachineLearningModels.ipynb`: This is our main notebook that takes in `processedData.csv` and creates 10 models, with our `StackedEnsemble` model having the best result.

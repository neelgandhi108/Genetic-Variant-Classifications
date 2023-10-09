# Use a base image with Python and Jupyter installed
FROM jupyter/base-notebook

# Copy your Jupyter notebooks to the container
COPY ./notebooks /notebooks

# Install any required dependencies inside the container (if needed)
RUN pip install requirements.txt

# Run the Jupyter notebooks when the container starts
CMD ["jupyter", "nbconvert", "--execute", "/notebooks/ExploratoryDataAnalysis.ipynb", "--execute", "/notebooks/Preprocessing.ipynb", "--execute", "/notebooks/MachineLearningModels.ipynb"]

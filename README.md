# An Introduction to Plotting in Python

The Jupyter Notebook in this repository (i.e., `Plotting_in_Python.ipynb` in the **code** subfolder) provides a high-level overview of how to generate basic charts—from scatterplots to heatmaps—using the `seaborn` and `plotnine` libraries in Python. Along the way, you’ll be using methods from `pandas`, `matplotlib` and cognate libraries to modify your data, customize your plotting aesthetics and export your visualizations.[^1]

In addition, this repository includes code that briefly details how to use `reticulate` as a portal to Python from R. To work your way though this example (in the `code.R` script file), make sure to:

1. Clone, fork or download the contents of this repository.

2. Open `python_plotting.Rproj` in RStudio.

3. Retrieve `code.R` from the code subfolder.

4. Run `renv::restore()` in R before executing the rest of the script file.

[^1]: If you choose to run this notebook locally, do **not** use `pip` to install or update packages if you generally use `conda` to manage your Python libraries.

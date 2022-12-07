
# PREAMBLE ----------------------------------------------------------------

#renv::restore()
library(palmerpenguins)
library(tidyverse)
library(reticulate)

# SETTING UP PYTHON IN R --------------------------------------------------

# Create new Anaconda directory featuring select packages:

conda_create("r-reticulate")

# Add pandas to your new Anaconda (conda) environment:

conda_install("r-reticulate", "pandas")

# Add seaborn to your new conda environment:

conda_install("r-reticulate", "seaborn")

# GENERATING PLOTS VIA SEABORN AND GGPLOT ---------------------------------

# Let's import some Python packages of interest:

sns <- import("seaborn")

plt <- import("matplotlib.pyplot")

# Let's visualize data from {palmerpenguins} using ggplot2:

palmerpenguins::penguins %>%
                ggplot(., aes(x = bill_depth_mm,
                              y = bill_length_mm,
                              colour = species)) +
                geom_point()

# Let's generate the same kind of plot via seaborn:

sns$set_theme()

sns$scatterplot(x = "bill_depth_mm",
                y = "bill_length_mm",
                hue = "species",
                data = palmerpenguins::penguins)

plt$show()

plt$savefig("files/example_plot.png",
            dpi = 300,
            bbox_inches = "tight")

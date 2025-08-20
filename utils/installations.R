#!/usr/bin/R
# Installation of needed packages
cran_dependencies <- c("BiocManager",
      "devtools",
      "pak")

install.packages(cran_dependencies, Ncpus = 4)

# CRAN
needed_packages_cran <- c(
    "dplyr",
    "gstat",
    "hdf5r",
    "miniUI",
    "shiny",
    "xml2",
    "future",
    "future.apply",
    "exactextractr",
    "tidyr",
    "viridis",
    "quadprog",
    "Rfast",
    "pheatmap",
    "patchwork",
    "Seurat",
    "harmony",
    "scatterpie",
    "R.utils",
    "qs"
)

# Bioconductor
bioc_dependencies <- c(
    "scran",
    "ComplexHeatmap",
    "SpatialExperiment",
    "ggspavis",
    "scater",
    "nnSVG"
)


pak::pkg_install(c(bioc_dependencies,
                   needed_packages_cran))

# Github
github_packages <- c(
    "satijalab/seurat-data"
)
pak::pkg_install(github_packages)

# Giotto installation
install.packages("terra")
pak::pak("drieslab/Giotto")
pak::pak("drieslab/GiottoData")

# Liana installation
pak::pkg_install("saezlab/liana")

# Ensure the Python environment for Giotto has been installed.
#genv_exists <- Giotto::checkGiottoEnvironment()

#if (!genv_exists) {
#    # The following command need only be run once to install the Giotto environment.
#    Giotto::installGiottoEnvironment()
#}
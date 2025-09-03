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
    "qs",
    "clustermole"
    "smfishHmrf",
    "terra")


# Bioconductor
bioc_dependencies <- c(
    "scran",
    "ComplexHeatmap",
    "SpatialExperiment",
    "ggspavis",
    "scater",
    "nnSVG",
    "GSVA",
    "singscore"
)


pak::pkg_install(c(bioc_dependencies,
                   needed_packages_cran))

# Github
github_packages <- c(
    "satijalab/seurat-data",
    "drieslab/Giotto",
    "drieslab/GiottoData",
    "jinworks/CellChat",
    "immunogenomics/presto"
)
pak::pkg_install(github_packages)

# Setup for giotto python packages (HRMF)
reticulate::py_install(envname = "~/.virtualenvs/giotto_env", packages = c("smfishhmrf"), pip = TRUE)

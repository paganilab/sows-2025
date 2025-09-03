#!/usr/bin/R
# Load all libraries needed for the workshop
library(ggplot2)
library(patchwork)
library(dplyr)
library(Giotto)

# Custom environment without conda
GiottoClass::set_giotto_python_path("~/.virtualenvs/giotto_env")
# Ensure the Python environment for Giotto has been installed.
Giotto::checkGiottoEnvironment()

library(Seurat)
library(SeuratData)
library(clustermole)
library(CellChat)
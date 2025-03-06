# global.R
library(shiny)
library(shinythemes)
library(DT)  # For DataTables
library(ggplot2)

# Load the predefined datasets
ATACseq <- read.csv("data/csv/ATACseq_MACS2.csv", stringsAsFactors = FALSE)
RNAseq <- read.csv("data/csv/RNAseq_Deseq2.csv", stringsAsFactors = FALSE)
Whole_Genome_Methylation <- read.csv("data/csv/Whole_genome_methylation_Methylkit.csv", stringsAsFactors = FALSE)

# Store datasets in a named list
datasets <- list("ATACseq" = ATACseq, "RNAseq" = RNAseq, "Whole Genome Methylation" = Whole_Genome_Methylation)


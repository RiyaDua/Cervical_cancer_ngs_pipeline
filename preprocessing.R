### preprocessing.R
# This script downloads and preprocesses GEO data for analysis

# Install and load necessary packages
install.packages("BiocManager")
BiocManager::install("GEOquery")
BiocManager::install("DESeq2")
install.packages("dplyr")
install.packages("tidyr")
library(GEOquery)
library(dplyr)
library(tidyr)

# Loading dataset from GEO
gse_id <- "GSE63678"
gse <- getGEO(gse_id)[[1]]

# Viewing sample information
sampleInfo <- pData(gse)
View(sampleInfo)

# Extracting expression data
exprs_data <- exprs(gse)
summary(exprs_data)

# Log2 transformation
exprs_data <- log2(exprs_data)
boxplot(exprs_data, outline=FALSE)

# Saving cleaned dataset
write.csv(exprs_data, "../data/processed_expression_data.csv")

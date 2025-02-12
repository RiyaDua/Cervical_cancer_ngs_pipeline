### differential_expression.R
# Perform differential gene expression analysis

library(DESeq2)
library(limma)
library(ggplot2)
library(pheatmap)

# Loading processed data
exprs_data <- read.csv("../data/processed_expression_data.csv", row.names=1)

# Defining experimental groups
design <- model.matrix(~0 + sampleInfo$group)
colnames(design) <- c("cervical_cancer", "normal")

# Applying limma for differential expression
fit <- lmFit(exprs_data, design)
contrasts <- makeContrasts(cervical_cancer - normal, levels=design)
fit2 <- contrasts.fit(fit, contrasts)
fit2 <- eBayes(fit2)

deg_results <- topTable(fit2, adjust="fdr", number=250)
View(deg_results)

# Saving results
write.csv(deg_results, "../results/differential_expression_results.csv")

# Plot volcano plot
ggplot(deg_results, aes(x=logFC, y=-log10(P.Value))) + geom_point()

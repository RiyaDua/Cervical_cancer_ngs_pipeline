### survival_analysis.R
# Perform survival analysis using survival & survminer

library(survival)
library(survminer)
library(dplyr)

# Loading clinical data
s_data <- pData(gse) %>% select(geo_accession, contains("characteristics"))

# Fit survival model
fit <- survfit(Surv(time, event) ~ group, data=s_data)
ggsurvplot(fit, data=s_data, pval=TRUE)

# Saving survival plot
ggsave("../results/survival_plot.png")

library(ggplot2)
library(dplyr)
library(openxlsx)
library(ggrepel)
library(DBI)
library(ggcorrplot)

hippo_cortex_RNA_protein_corr<- read.table(file= "data/Figure2/hippo_cortex_RNA_protein.txt", header=T, row.names=1)
corr <- round(cor(hippo_cortex_RNA_protein_corr), 1)
ggcorrplot(corr, hc.order = TRUE,
           type = "lower",
           lab = TRUE,
           lab_size = 3,
           method="circle",
           colors = c( "springgreen3","white", "tomato2"),
           lab_col = "black",
           outline.color = "black",
           title="Correlogram of Hippocampus and Cortex for RNA & Protein",
           ggtheme=theme_bw)+
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),panel.background = element_blank())

library(ggplot2)
library(dplyr)
library(ComplexHeatmap)
library(circlize)
library(openxlsx)

#First find the optimum scale bar for the GO terms
Human_hippo_cortex_RNA_protein_DAVID_all<-read.xlsx("data/Figure2/DAVID_hippo_cortex_RNA_protein.xlsx",sheet=4)
row.names(Human_hippo_cortex_RNA_protein_DAVID_all)<-Human_hippo_cortex_RNA_protein_DAVID_all$Sample
Human_hippo_cortex_RNA_protein_DAVID_all_filt<-as.data.frame(Human_hippo_cortex_RNA_protein_DAVID_all[,-c(1)])
f3 = colorRamp2(seq(min(Human_hippo_cortex_RNA_protein_DAVID_all_filt), max(Human_hippo_cortex_RNA_protein_DAVID_all_filt), length = 3), c("#EEEEEE","blue", "red"), space = "RGB")

#GO terms unique to hippocampus
Human_hippo_RNA_protein_DAVID_unique<-read.xlsx("data/Figure2/DAVID_hippo_cortex_RNA_protein.xlsx",sheet=1)
row.names(Human_hippo_RNA_protein_DAVID_unique)<-Human_hippo_RNA_protein_DAVID_unique$Sample
Human_hippo_RNA_protein_DAVID_unique_filt<-as.data.frame(Human_hippo_RNA_protein_DAVID_unique[,-c(1)])
complex_DAVID_hippo_gene_protein_unique_001<-Heatmap(Human_hippo_RNA_protein_DAVID_unique_filt, col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
row_order = order(as.numeric(gsub("row", "", rownames(Human_hippo_RNA_protein_DAVID_unique_filt)))),
column_order = order(as.numeric(gsub("column", "", colnames(Human_hippo_RNA_protein_DAVID_unique_filt)))),
row_names_gp = gpar(fontsize = 6),column_names_gp = gpar(fontsize=6),
column_names_centered = TRUE)


#GO terms unique to cortex
Human_cortex_RNA_protein_DAVID_unique<-read.xlsx("data/Figure2//DAVID_hippo_cortex_RNA_protein.xlsx",sheet=2)
row.names(Human_cortex_RNA_protein_DAVID_unique)<-Human_cortex_RNA_protein_DAVID_unique$Sample
Human_cortex_RNA_protein_DAVID_unique_filt<-as.data.frame(Human_cortex_RNA_protein_DAVID_unique[,-c(1)])
complex_DAVID_cortex_gene_protein_unique_001<-Heatmap(Human_cortex_RNA_protein_DAVID_unique_filt, col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
row_order = order(as.numeric(gsub("row", "", rownames(Human_cortex_RNA_protein_DAVID_unique_filt)))),
column_order = order(as.numeric(gsub("column", "", colnames(Human_cortex_RNA_protein_DAVID_unique_filt)))),
row_names_gp = gpar(fontsize = 6),column_names_gp = gpar(fontsize=6),
column_names_centered = TRUE)

#GO terms shared between hippocampus and cortex
Human_hippo_cortex_RNA_protein_DAVID_shared<-read.xlsx("data/Figure2/DAVID_hippo_cortex_RNA_protein.xlsx",sheet=3)
row.names(Human_hippo_cortex_RNA_protein_DAVID_shared)<-Human_hippo_cortex_RNA_protein_DAVID_shared$Sample
Human_hippo_cortex_RNA_protein_DAVID_shared_filt<-as.data.frame(Human_hippo_cortex_RNA_protein_DAVID_shared[,-c(1)])
complex_DAVID_hippo_cortex_gene_protein_shared_001<-Heatmap(Human_hippo_cortex_RNA_protein_DAVID_shared_filt, col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
row_order = order(as.numeric(gsub("row", "", rownames(Human_hippo_cortex_RNA_protein_DAVID_shared_filt)))),
column_order = order(as.numeric(gsub("column", "", colnames(Human_hippo_cortex_RNA_protein_DAVID_shared_filt)))),
row_names_gp = gpar(fontsize = 10),column_names_gp = gpar(fontsize=6),
column_names_centered = TRUE, show_heatmap_legend = FALSE)





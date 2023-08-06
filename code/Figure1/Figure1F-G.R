library(ggplot2)
library(dplyr)
library(ComplexHeatmap)
library(circlize)
library(openxlsx)

#First find the optimum scale bar for the GO terms
human_gene_transcript_DAVID_all<-read.xlsx("data/Figure1/GO_analysis_gene_transcript_hippocampus_cortex.xlsx",sheet=4)
human_gene_transcript_DAVID_all_filt<-as.data.frame(human_gene_transcript_DAVID_all[,-c(1)])
f2 = colorRamp2(seq(min(human_gene_transcript_DAVID_all_filt), max(human_gene_transcript_DAVID_all_filt), length = 3), c("#EEEEEE","blue", "red"), space = "RGB")

#GO terms unique to hippocampus
human_hippo_gene_transcript_DAVID_unique<-read.xlsx("data/Figure1/GO_analysis_gene_transcript_hippocampus_cortex.xlsx",sheet=1)
row.names(human_hippo_gene_transcript_DAVID_unique)<-human_hippo_gene_transcript_DAVID_unique$Sample
human_hippo_gene_transcript_DAVID_unique_filt<-as.data.frame(human_hippo_gene_transcript_DAVID_unique[,-c(1)])
complex_DAVID_hippo_unique_001<-Heatmap(human_hippo_gene_transcript_DAVID_unique_filt, col = f2, cluster_rows = FALSE,cluster_columns = FALSE,
row_order = order(as.numeric(gsub("row", "", rownames(human_hippo_gene_transcript_DAVID_unique_filt)))),
column_order = order(as.numeric(gsub("column", "", colnames(human_hippo_gene_transcript_DAVID_unique_filt)))),
row_names_gp = gpar(fontsize = 6),column_names_gp = gpar(fontsize=6),
column_names_centered = TRUE)

#GO terms unique to cortex
human_cortex_gene_transcript_DAVID_unique<-read.xlsx("data/Figure1/GO_analysis_gene_transcript_hippocampus_cortex.xlsx",sheet=2)
row.names(human_cortex_gene_transcript_DAVID_unique)<-human_cortex_gene_transcript_DAVID_unique$Sample
human_cortex_gene_transcript_DAVID_unique_filt<-as.data.frame(human_cortex_gene_transcript_DAVID_unique[,-c(1)])
complex_DAVID_cortex_unique_001<-Heatmap(human_cortex_gene_transcript_DAVID_unique_filt, col = f2, cluster_rows = FALSE,cluster_columns = FALSE,
row_order = order(as.numeric(gsub("row", "", rownames(human_cortex_gene_transcript_DAVID_unique_filt)))),
column_order = order(as.numeric(gsub("column", "", colnames(human_cortex_gene_transcript_DAVID_unique_filt)))),
row_names_gp = gpar(fontsize = 6),column_names_gp = gpar(fontsize=6),
column_names_centered = TRUE)

#GO terms shared between hippocampus and cortex
human_gene_transcript_DAVID_shared<-read.xlsx("data/Figure1/GO_analysis_gene_transcript_hippocampus_cortex.xlsx",sheet=3)
row.names(human_gene_transcript_DAVID_shared)<-human_gene_transcript_DAVID_shared$Sample
human_gene_transcript_DAVID_shared_filt<-as.data.frame(human_gene_transcript_DAVID_shared[,-c(1)])
complex_DAVID_gene_transcript_shared_001<-Heatmap(human_gene_transcript_DAVID_shared_filt, col = f2, cluster_rows = FALSE,cluster_columns = FALSE,
row_order = order(as.numeric(gsub("row", "", rownames(human_gene_transcript_DAVID_shared_filt)))),
column_order = order(as.numeric(gsub("column", "", colnames(human_gene_transcript_DAVID_shared_filt)))),
row_names_gp = gpar(fontsize = 6),column_names_gp = gpar(fontsize=6),
column_names_centered = TRUE)




library(openxlsx)
library(ggrepel)
library(ggplot2)
library(ComplexHeatmap)
library(circlize)

DAVID_all_BP<-read.xlsx("data/Supp_Figure11/DAVID_ALL_BP.xlsx",sheet=3)
row.names(DAVID_all_BP)<-DAVID_all_BP$Term
DAVID_all_BP_filt<-as.data.frame(DAVID_all_BP[,-c(1)])
col_fun = colorRamp2(c(0, 10,22.5,35, 45), c("#EEEEEE","blue","#e5383b","#d00000","#6a040f"))
complex_DAVID_all_BP_001<-Heatmap(DAVID_all_BP_filt, col = col_fun, cluster_rows = FALSE,cluster_columns = FALSE,
row_order = order(as.numeric(gsub("row", "", rownames(DAVID_all_BP_filt)))),column_order = order(as.numeric(gsub("column", "", colnames(DAVID_all_BP_filt)))),
row_names_gp = gpar(fontsize = 10),column_names_gp = gpar(fontsize=6),
column_names_centered = TRUE)

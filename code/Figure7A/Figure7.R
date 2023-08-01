library(ComplexHeatmap)
library(circlize)
library(openxlsx)
ineurons_DIV30_DAVID<-read.xlsx("data/DAVID_DIV30_iNeurons_compiled.xlsx",sheet=1)
row.names(ineurons_DIV30_DAVID)<-ineurons_DIV30_DAVID$Term
ineurons_DIV30_DAVID_filt<-as.data.frame(ineurons_DIV30_DAVID[,-c(1)])
f2 = colorRamp2(seq(min(ineurons_DIV30_DAVID_filt), max(ineurons_DIV30_DAVID_filt), length = 3), c("#EEEEEE","blue", "red"), space = "RGB")
complex_DAVID_ineurons_DIV30_001<-Heatmap(ineurons_DIV30_DAVID_filt, col = f2, cluster_rows = FALSE,cluster_columns = FALSE,
row_order = order(as.numeric(gsub("row", "", rownames(ineurons_DIV30_DAVID_filt)))),
column_order = order(as.numeric(gsub("column", "", colnames(ineurons_DIV30_DAVID_filt)))),
row_names_gp = gpar(fontsize = 10),column_names_gp = gpar(fontsize=6),
column_names_centered = TRUE)
tiff("complex_DAVID_ineurons_DIV30_001.tiff",units="in",height = 9,width = 4,res=1200)
complex_DAVID_ineurons_DIV30_001
dev.off()

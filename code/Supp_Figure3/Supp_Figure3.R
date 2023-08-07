library(openxlsx)
library(ggrepel)
library(ggplot2)
library(ComplexHeatmap)
library(circlize)

#Supp_Figure3A
Corrected_hippo_cortex_DM_music_DAVID<-read.xlsx("data/Supp_Figure3/DAVID_compiled_hippo_cortex_DM_corrected.xlsx",sheet=2)
row.names(Corrected_hippo_cortex_DM_music_DAVID)<-Corrected_hippo_cortex_DM_music_DAVID$Term
Corrected_hippo_cortex_DM_music_DAVID_filt<-as.data.frame(Corrected_hippo_cortex_DM_music_DAVID[,-c(1)])
f2 = colorRamp2(seq(min(Corrected_hippo_cortex_DM_music_DAVID_filt), max(Corrected_hippo_cortex_DM_music_DAVID_filt), length = 3), c("#EEEEEE","blue", "red"), space = "RGB")
complex_Corrected_hippo_cortex_DM_music_DAVID_001<-Heatmap(Corrected_hippo_cortex_DM_music_DAVID_filt, col = f2, cluster_rows = FALSE,cluster_columns = FALSE,
                                                           row_order = order(as.numeric(gsub("row", "", rownames(Corrected_hippo_cortex_DM_music_DAVID_filt)))),
                                                           column_order = order(as.numeric(gsub("column", "", colnames(Corrected_hippo_cortex_DM_music_DAVID_filt)))),
                                                           row_names_gp = gpar(fontsize = 10),column_names_gp = gpar(fontsize=6),
                                                           column_names_centered = TRUE)


#Supp_Figure3B
Lockstone_olmos_DAVID<-read.xlsx("data/Supp_Figure3/DAVID_lockstone_Olmos.xlsx",sheet=3)
row.names(Lockstone_olmos_DAVID)<-Lockstone_olmos_DAVID$Term
Lockstone_olmos_DAVID_filt<-as.data.frame(Lockstone_olmos_DAVID[,-c(1)])
f2 = colorRamp2(seq(min(Lockstone_olmos_DAVID_filt), max(Lockstone_olmos_DAVID_filt), length = 3), c("#EEEEEE","blue", "red"), space = "RGB")
complex_Lockstone_olmos_DAVID_001<-Heatmap(Lockstone_olmos_DAVID_filt, col = f2, cluster_rows = FALSE,cluster_columns = FALSE,
                                           row_order = order(as.numeric(gsub("row", "", rownames(Lockstone_olmos_DAVID_filt)))),
                                           column_order = order(as.numeric(gsub("column", "", colnames(Lockstone_olmos_DAVID_filt)))),
                                           row_names_gp = gpar(fontsize = 10),column_names_gp = gpar(fontsize=6),
                                           column_names_centered = TRUE)


#Supp_Figure3C
Palmer_DAVID<-read.xlsx("data/Supp_Figure3/Palmer_GO_DAVID.xlsx",sheet=3)
row.names(Palmer_DAVID)<-Palmer_DAVID$Term
Palmer_DAVID_filt<-as.data.frame(Palmer_DAVID[,-c(1)])
f2 = colorRamp2(seq(min(Palmer_DAVID_filt), max(Palmer_DAVID_filt), length = 3), c("#EEEEEE","blue", "red"), space = "RGB")
complex_Palmer_DAVID_002<-Heatmap(Palmer_DAVID_filt, col = f2, cluster_rows = FALSE,cluster_columns = FALSE,
row_order = order(as.numeric(gsub("row", "", rownames(Palmer_DAVID_filt)))),
column_order = order(as.numeric(gsub("column", "", colnames(Palmer_DAVID_filt)))),
row_names_gp = gpar(fontsize = 10),column_names_gp = gpar(fontsize=6),
column_names_centered = TRUE)




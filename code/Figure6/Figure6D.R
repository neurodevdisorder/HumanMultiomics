library(openxlsx)
library(ggrepel)
library(ggplot2)
library(ComplexHeatmap)
library(circlize)

#top_rbp_exon_skipping_correlation
hippo_top_rbp_ex_corr_ZC3H15<-read.xlsx("data/Figure6/TopRBP_exon_skipping_correlation.xlsx",sheet=2)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_ex_corr_ZC3H15)<-hippo_top_rbp_ex_corr_ZC3H15$ZC3H15
hippo_top_rbp_ex_corr_ZC3H15_filt<-hippo_top_rbp_ex_corr_ZC3H15[,-c(1)]
tiff("heatmap_hippo_top_rbp_ex_corr_ZC3H15_001.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_ex_corr_ZC3H15_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()

hippo_top_rbp_ex_corr_PRDX1<-read.xlsx("data/Figure6/TopRBP_exon_skipping_correlation.xlsx",sheet=3)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_ex_corr_PRDX1)<-hippo_top_rbp_ex_corr_PRDX1$PRDX1
hippo_top_rbp_ex_corr_PRDX1_filt<-hippo_top_rbp_ex_corr_PRDX1[,-c(1)]
tiff("heatmap_hippo_top_rbp_ex_corr_PRDX1_001.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_ex_corr_PRDX1_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()

hippo_top_rbp_ex_corr_SLIRP<-read.xlsx("data/Figure6/TopRBP_exon_skipping_correlation.xlsx",sheet=4)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_ex_corr_SLIRP)<-hippo_top_rbp_ex_corr_SLIRP$SLIRP
hippo_top_rbp_ex_corr_SLIRP_filt<-hippo_top_rbp_ex_corr_SLIRP[,-c(1)]
tiff("heatmap_hippo_top_rbp_ex_corr_SLIRP_001.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_ex_corr_SLIRP_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()

hippo_top_rbp_ex_corr_CNOT1<-read.xlsx("data/Figure6/TopRBP_exon_skipping_correlation.xlsx",sheet=5)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_ex_corr_CNOT1)<-hippo_top_rbp_ex_corr_CNOT1$CNOT1
hippo_top_rbp_ex_corr_CNOT1_filt<-hippo_top_rbp_ex_corr_CNOT1[,-c(1)]
tiff("heatmap_hippo_top_rbp_ex_corr_CNOT1_001.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_ex_corr_CNOT1_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()


hippo_top_rbp_ex_corr_HNRNPUL2<-read.xlsx("data/Figure6/TopRBP_exon_skipping_correlation.xlsx",sheet=6)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_ex_corr_HNRNPUL2)<-hippo_top_rbp_ex_corr_HNRNPUL2$HNRNPUL2
hippo_top_rbp_ex_corr_HNRNPUL2_filt<-hippo_top_rbp_ex_corr_HNRNPUL2[,-c(1)]
tiff("heatmap_hippo_top_rbp_ex_corr_HNRNPUL2_001.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_ex_corr_HNRNPUL2_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()

hippo_top_rbp_ex_corr_SRRT<-read.xlsx("data/Figure6/TopRBP_exon_skipping_correlation.xlsx",sheet=7)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_ex_corr_SRRT)<-hippo_top_rbp_ex_corr_SRRT$SRRT
hippo_top_rbp_ex_corr_SRRT_filt<-hippo_top_rbp_ex_corr_SRRT[,-c(1)]
tiff("heatmap_hippo_top_rbp_ex_corr_SRRT_001.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_ex_corr_SRRT_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()

hippo_top_rbp_ex_corr_PDE12<-read.xlsx("data/Figure6/TopRBP_exon_skipping_correlation.xlsx",sheet=8)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_ex_corr_PDE12)<-hippo_top_rbp_ex_corr_PDE12$PDE12
hippo_top_rbp_ex_corr_PDE12_filt<-hippo_top_rbp_ex_corr_PDE12[,-c(1)]
tiff("heatmap_hippo_top_rbp_ex_corr_PDE12_001.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_ex_corr_PDE12_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()

hippo_top_rbp_ex_corr_TRMT10C<-read.xlsx("data/Figure6/TopRBP_exon_skipping_correlation.xlsx",sheet=9)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_ex_corr_TRMT10C)<-hippo_top_rbp_ex_corr_TRMT10C$TRMT10C
hippo_top_rbp_ex_corr_TRMT10C_filt<-hippo_top_rbp_ex_corr_TRMT10C[,-c(1)]
tiff("heatmap_hippo_top_rbp_ex_corr_TRMT10C_001.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_ex_corr_TRMT10C_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()

hippo_top_rbp_ex_corr_EIF2S1<-read.xlsx("data/Figure6/TopRBP_exon_skipping_correlation.xlsx",sheet=10)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_ex_corr_EIF2S1)<-hippo_top_rbp_ex_corr_EIF2S1$EIF2S1
hippo_top_rbp_ex_corr_EIF2S1_filt<-hippo_top_rbp_ex_corr_EIF2S1[,-c(1)]
tiff("heatmap_hippo_top_rbp_ex_corr_EIF2S1_001.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_ex_corr_EIF2S1_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()

hippo_top_rbp_ex_corr_PTBP2<-read.xlsx("data/Figure6/TopRBP_exon_skipping_correlation.xlsx",sheet=11)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_ex_corr_PTBP2)<-hippo_top_rbp_ex_corr_PTBP2$PTBP2
hippo_top_rbp_ex_corr_PTBP2_filt<-hippo_top_rbp_ex_corr_PTBP2[,-c(1)]
tiff("heatmap_hippo_top_rbp_ex_corr_PTBP2_001.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_ex_corr_PTBP2_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()

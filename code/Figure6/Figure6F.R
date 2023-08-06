library(openxlsx)
library(ggrepel)
library(ggplot2)
library(ComplexHeatmap)
library(circlize)

#top_rbp_gene_correlation
hippo_top_rbp_gene_corr_SLIRP<-read.xlsx("data/Figure6/TopRBP_gene_correlation.xlsx",sheet=1)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_gene_corr_SLIRP)<-hippo_top_rbp_gene_corr_SLIRP$SLIRP
hippo_top_rbp_gene_corr_SLIRP_filt<-hippo_top_rbp_gene_corr_SLIRP[,-c(1)]
tiff("heatmap_hippo_top_rbp_gene_corr_SLIRP_003.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_gene_corr_SLIRP_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()


hippo_top_rbp_gene_corr_AARS1<-read.xlsx("data/Figure6/TopRBP_gene_correlation.xlsx",sheet=2)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_gene_corr_AARS1)<-hippo_top_rbp_gene_corr_AARS1$AARS1
hippo_top_rbp_gene_corr_AARS1_filt<-hippo_top_rbp_gene_corr_AARS1[,-c(1)]
tiff("heatmap_hippo_top_rbp_gene_corr_AARS1_003.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_gene_corr_AARS1_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()


hippo_top_rbp_gene_corr_TNPO2<-read.xlsx("data/Figure6/TopRBP_gene_correlation.xlsx",sheet=3)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_gene_corr_TNPO2)<-hippo_top_rbp_gene_corr_TNPO2$TNPO2
hippo_top_rbp_gene_corr_TNPO2_filt<-hippo_top_rbp_gene_corr_TNPO2[,-c(1)]
tiff("heatmap_hippo_top_rbp_gene_corr_TNPO2_003.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_gene_corr_TNPO2_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()


hippo_top_rbp_gene_corr_LRRC47<-read.xlsx("data/Figure6/TopRBP_gene_correlation.xlsx",sheet=4)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_gene_corr_LRRC47)<-hippo_top_rbp_gene_corr_LRRC47$LRRC47
hippo_top_rbp_gene_corr_LRRC47_filt<-hippo_top_rbp_gene_corr_LRRC47[,-c(1)]
tiff("heatmap_hippo_top_rbp_gene_corr_LRRC47_003.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_gene_corr_LRRC47_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()

hippo_top_rbp_gene_corr_LRPPRC<-read.xlsx("data/Figure6/TopRBP_gene_correlation.xlsx",sheet=5)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_gene_corr_LRPPRC)<-hippo_top_rbp_gene_corr_LRPPRC$LRPPRC
hippo_top_rbp_gene_corr_LRPPRC_filt<-hippo_top_rbp_gene_corr_LRPPRC[,-c(1)]
tiff("heatmap_hippo_top_rbp_gene_corr_LRPPRC_003.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_gene_corr_LRPPRC_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()


hippo_top_rbp_gene_corr_SRRT<-read.xlsx("data/Figure6/TopRBP_gene_correlation.xlsx",sheet=6)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_gene_corr_SRRT)<-hippo_top_rbp_gene_corr_SRRT$SRRT
hippo_top_rbp_gene_corr_SRRT_filt<-hippo_top_rbp_gene_corr_SRRT[,-c(1)]
tiff("heatmap_hippo_top_rbp_gene_corr_SRRT_003.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_gene_corr_SRRT_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()

hippo_top_rbp_gene_corr_ZC3H15<-read.xlsx("data/Figure6/TopRBP_gene_correlation.xlsx",sheet=7)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_gene_corr_ZC3H15)<-hippo_top_rbp_gene_corr_ZC3H15$ZC3H15
hippo_top_rbp_gene_corr_ZC3H15_filt<-hippo_top_rbp_gene_corr_ZC3H15[,-c(1)]
tiff("heatmap_hippo_top_rbp_gene_corr_ZC3H15_003.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_gene_corr_ZC3H15_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()

hippo_top_rbp_gene_corr_PTBP2<-read.xlsx("data/Figure6/TopRBP_gene_correlation.xlsx",sheet=13)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_gene_corr_PTBP2)<-hippo_top_rbp_gene_corr_PTBP2$PTBP2
hippo_top_rbp_gene_corr_PTBP2_filt<-hippo_top_rbp_gene_corr_PTBP2[,-c(1)]
tiff("heatmap_hippo_top_rbp_gene_corr_PTBP2_003.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_gene_corr_PTBP2_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()

hippo_top_rbp_gene_corr_BZW1<-read.xlsx("data/Figure6/TopRBP_gene_correlation.xlsx",sheet=14)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_gene_corr_BZW1)<-hippo_top_rbp_gene_corr_BZW1$BZW1
hippo_top_rbp_gene_corr_BZW1_filt<-hippo_top_rbp_gene_corr_BZW1[,-c(1)]
tiff("heatmap_hippo_top_rbp_gene_corr_BZW1_003.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_gene_corr_BZW1_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()

hippo_top_rbp_gene_corr_DDX17<-read.xlsx("data/Figure6/TopRBP_gene_correlation.xlsx",sheet=9)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_gene_corr_DDX17)<-hippo_top_rbp_gene_corr_DDX17$DDX17
hippo_top_rbp_gene_corr_DDX17_filt<-hippo_top_rbp_gene_corr_DDX17[,-c(1)]
tiff("heatmap_hippo_top_rbp_gene_corr_DDX17_003.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_gene_corr_DDX17_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()

hippo_top_rbp_gene_corr_IFIT3<-read.xlsx("data/Figure6/TopRBP_gene_correlation.xlsx",sheet=8)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_gene_corr_IFIT3)<-hippo_top_rbp_gene_corr_IFIT3$IFIT3
hippo_top_rbp_gene_corr_IFIT3_filt<-hippo_top_rbp_gene_corr_IFIT3[,-c(1)]
tiff("heatmap_hippo_top_rbp_gene_corr_IFIT3_003.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_gene_corr_IFIT3_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()

hippo_top_rbp_gene_corr_PSMA1<-read.xlsx("data/Figure6/TopRBP_gene_correlation.xlsx",sheet=11)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_gene_corr_PSMA1)<-hippo_top_rbp_gene_corr_PSMA1$PSMA1
hippo_top_rbp_gene_corr_PSMA1_filt<-hippo_top_rbp_gene_corr_PSMA1[,-c(1)]
tiff("heatmap_hippo_top_rbp_gene_corr_PSMA1_003.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_gene_corr_PSMA1_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()

hippo_top_rbp_gene_corr_GFM1<-read.xlsx("data/Figure6/TopRBP_gene_correlation.xlsx",sheet=12)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_gene_corr_GFM1)<-hippo_top_rbp_gene_corr_GFM1$GFM1
hippo_top_rbp_gene_corr_GFM1_filt<-hippo_top_rbp_gene_corr_GFM1[,-c(1)]
tiff("heatmap_hippo_top_rbp_gene_corr_GFM1_003.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_gene_corr_GFM1_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()

hippo_top_rbp_gene_corr_SND1<-read.xlsx("data/Figure6/TopRBP_gene_correlation.xlsx",sheet=10)
f3 = colorRamp2(c(-1,0,1), c("blue","#EEEEEE", "red"), space = "RGB")
row.names(hippo_top_rbp_gene_corr_SND1)<-hippo_top_rbp_gene_corr_SND1$SND1
hippo_top_rbp_gene_corr_SND1_filt<-hippo_top_rbp_gene_corr_SND1[,-c(1)]
tiff("heatmap_hippo_top_rbp_gene_corr_SND1_003.tiff",units="in",height = 4,width = 2,res=300)
Heatmap(hippo_top_rbp_gene_corr_SND1_filt[,-c(2)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        row_names_gp = gpar(fontsize = 6),show_column_names = FALSE,show_row_names = TRUE,width = unit(1, "cm"),
        row_title = NULL,name="Estimate",row_names_side = "left")
dev.off()

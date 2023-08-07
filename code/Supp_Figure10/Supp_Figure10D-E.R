library(openxlsx)
library(ggrepel)
library(ggplot2)

#Go to excel sheet for the annotated result and add a column containing up-, down- triplicated, non significant
#then read it here
#Ts65Dn non-triplicated proteins
Ts65Dn_hippo_protein_list1<-read.xlsx("data/Supp_Figure10/Ts_Dp16_protein_hippo_matrix.xlsx",sheet=1)

volcano_Ts65Dn_hippo_protein_list1_diff_label<- ggplot(Ts65Dn_hippo_protein_list1, aes(x = logFC, y = -log10(FDR))) +
  geom_point(aes(color =  factor(Significance)), alpha=1, size=1.0) +
  xlim(-9,9)+
  ylim(0,6)+
  scale_color_manual(values = c("#219EBC","#CED4DA","#DB5256")) +
  xlab("log2 fold change") + ylab("-log10(FDR)")+
  theme_bw() +
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())
volcano_Ts65Dn_hippo_protein_list1_diff_label+geom_hline(yintercept=1.30, linetype="dashed", color = "black")+
  geom_vline(xintercept = 0,linetype="dashed",color="black")

#Ts65Dn triplicated proteins
Ts65Dn_hippo_protein_list2<-read.xlsx("data/Supp_Figure10/Ts_Dp16_protein_hippo_matrix.xlsx",sheet=2)

volcano_Ts65Dn_hippo_protein_list1_triplicated<- ggplot(Ts65Dn_hippo_protein_list2, aes(x = logFC, y = -log10(FDR))) +
  geom_point(aes(color =  factor(Significance)), alpha=1, size=1.0) +
  scale_color_manual(values = c("BLACK")) +
  xlab("log2 fold change") + ylab("-log10(FDR)")+
  theme_bw() +
  xlim(-9,9)+
  ylim(0,6)+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())
volcano_Ts65Dn_hippo_protein_list1_triplicated+geom_hline(yintercept=1.30, linetype="dashed", color = "black")+
  geom_vline(xintercept = 0,linetype="dashed",color="black")

#Once these two above plots are generated, then combined them in Adobe Illustrator.

#Dp16 non-triplicated proteins
Dp16P_hippo_protein_list1<-read.xlsx("data/Supp_Figure10/Ts_Dp16_protein_hippo_matrix.xlsx",sheet=3)

volcano_Dp16P_hippo_protein_list1_diff_label<- ggplot(Dp16P_hippo_protein_list1, aes(x = logFC, y = -log10(FDR))) +
  geom_point(aes(color =  factor(Significance)), alpha=1, size=1.0) +
  xlim(-10,10)+
  ylim(0,6)+
  scale_color_manual(values = c("#219EBC","#CED4DA","#DB5256")) +
  xlab("log2 fold change") + ylab("-log10(FDR)")+
  theme_bw() +
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())
volcano_Dp16P_hippo_protein_list1_diff_label+geom_hline(yintercept=1.30, linetype="dashed", color = "black")+
  geom_vline(xintercept = 0,linetype="dashed",color="black")

#Dp16 triplicated proteins
Dp16P_hippo_protein_list2<-read.xlsx("data/Supp_Figure10/Ts_Dp16_protein_hippo_matrix.xlsx",sheet=4)

volcano_Dp16P_hippo_protein_list1_triplicated<- ggplot(Dp16P_hippo_protein_list2, aes(x = logFC, y = -log10(FDR))) +
  geom_point(aes(color =  factor(Significance)), alpha=1, size=1.0) +
  scale_color_manual(values = c("BLACK")) +
  xlab("log2 fold change") + ylab("-log10(FDR)")+
  theme_bw() +
  xlim(-10,10)+
  ylim(0,6)+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())
volcano_Dp16P_hippo_protein_list1_triplicated+geom_hline(yintercept=1.30, linetype="dashed", color = "black")+
  geom_vline(xintercept = 0,linetype="dashed",color="black")

#Supp_Figure10E
DAVID_Ts_Dp_prot<-read.xlsx("data/Supp_Figure10/Ts_Dp_DEP_DAVID.xlsx",sheet=2)
row.names(DAVID_Ts_Dp_prot)<-DAVID_Ts_Dp_prot$Term
DAVID_Ts_Dp_prot_filt<-as.data.frame(DAVID_Ts_Dp_prot[,-c(1)])
f2 = colorRamp2(seq(min(DAVID_Ts_Dp_prot_filt), max(DAVID_Ts_Dp_prot_filt), length = 3), c("#EEEEEE","blue", "red"), space = "RGB")
complex_DAVID_Ts_Dp_prot_001<-Heatmap(DAVID_Ts_Dp_prot_filt, col = f2, cluster_rows = FALSE,cluster_columns = FALSE,
row_order = order(as.numeric(gsub("row", "", rownames(DAVID_Ts_Dp_prot_filt)))),
column_order = order(as.numeric(gsub("column", "", colnames(DAVID_Ts_Dp_prot_filt)))),
row_names_gp = gpar(fontsize = 10),column_names_gp = gpar(fontsize=6),
column_names_centered = TRUE)




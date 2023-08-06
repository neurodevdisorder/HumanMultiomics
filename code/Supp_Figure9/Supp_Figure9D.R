library(openxlsx)
library(ggrepel)
library(ggplot2)
library(ComplexHeatmap)
library(circlize)


#Region-wise motif enrichment
PTBP2_list1<-read.xlsx("data/Supp_Figure9/PTBP2_overlap_analysis.xlsx",sheet=2)
PTBP2_list1_plot<-ggplot(PTBP2_list1, aes(fill=log2FE, y=Process, x=log10_pvalue)) +
  geom_bar(position="stack", stat="identity")+
  scale_fill_gradientn(colors=viridis_pal()(9),limits=c(0,3))+
  theme(axis.text.x = element_text(angle = 65,vjust = 0.6))+
  #  labs(x="RNA binding Protein", y="Number of significant correlations")+
  theme_bw()+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())
PTBP2_list1_plot


#Gene expression correlation
PTBP2_list2<-read.xlsx("data/Supp_Figure9/PTBP2_overlap_analysis.xlsx",sheet=3)
PTBP2_list2_plot<-ggplot(PTBP2_list2, aes(fill=log2FE, y=Process, x=log10_pvalue)) +
  geom_bar(position="stack", stat="identity")+
  scale_fill_gradientn(colors=viridis_pal()(9),limits=c(0,3))+
  theme(axis.text.x = element_text(angle = 65,vjust = 0.6))+
  #  labs(x="RNA binding Protein", y="Number of significant correlations")+
  theme_bw()+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())
PTBP2_list2_plot

#PSI correlation
PTBP2_list3<-read.xlsx("data/Supp_Figure9/PTBP2_overlap_analysis.xlsx",sheet=4)
PTBP2_list3_plot<-ggplot(PTBP2_list3, aes(fill=log2FE, y=Process, x=log10_pvalue)) +
  geom_bar(position="stack", stat="identity")+
  scale_fill_gradientn(colors=viridis_pal()(9),limits=c(0,3))+
  theme(axis.text.x = element_text(angle = 65,vjust = 0.6))+
  #  labs(x="RNA binding Protein", y="Number of significant correlations")+
  theme_bw()+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())
PTBP2_list3_plot

#Shared regulation
PTBP2_shared<-read.xlsx("data/Supp_Figure9/PTBP2_overlap_analysis.xlsx",sheet=1)
PTBP2_shared_plot<-ggplot(PTBP2_shared, aes(fill=log2FE, y=Process, x=log10_pvalue)) +
  geom_bar(position="stack", stat="identity")+
  scale_fill_gradientn(colors=viridis_pal()(9),limits=c(0,3))+
  theme(axis.text.x = element_text(angle = 65,vjust = 0.6))+
  #  labs(x="RNA binding Protein", y="Number of significant correlations")+
  theme_bw()+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())
PTBP2_shared_plot


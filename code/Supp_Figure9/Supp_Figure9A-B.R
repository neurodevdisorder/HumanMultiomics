library(openxlsx)
library(ggrepel)
library(ggplot2)

#For hippocampus
RBP_ex_corr<-read.xlsx("data/Supp_Figure9/RBP_corr_count.xlsx",sheet=4)
RBP_ex_corr_plot<-ggplot(RBP_ex_corr, aes(fill=Direction, y=Count, x=Symbol)) +
  geom_bar(position="stack", stat="identity")+
  scale_fill_manual(values = c("#3D405B","#E07A5F"))+
  theme(axis.text.x = element_text(angle = 65,vjust = 0.6))+
  labs(x="RNA binding Protein", y="Number of significant correlations")+
  theme_bw()+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())
RBP_ex_corr_plot

RBP_gene_corr<-read.xlsx("data/Supp_Figure9/RBP_corr_count.xlsx",sheet=2)
RBP_gene_corr_plot<-ggplot(RBP_gene_corr, aes(fill=Direction, y=Count, x=Symbol)) +
  geom_bar(position="stack", stat="identity")+
  scale_fill_manual(values = c("#3D405B","#E07A5F"))+
  theme(axis.text.x = element_text(angle = 65,vjust = 0.6))+
  labs(x="RNA binding Protein", y="Number of significant correlations")+
  theme_bw()+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())
RBP_gene_corr_plot

library(openxlsx)
library(ggrepel)
library(ggplot2)

FIMO_RBP_PSI_up<-read.xlsx("data/Figure6/FIMO_RBP_prot_significant.xlsx",sheet=2)
FIMO_RBP_PSI_up_plot<-ggplot(FIMO_RBP_PSI_up, aes(fill=Region, y=Count, x=RBP)) +
  geom_bar(position="stack", stat="identity")+
  scale_fill_manual(values = c("#355070","#6D597A","#B56576","#E56B6F","#EAAC8B"))+
  theme(axis.text.x = element_text(angle = 65,vjust = 0.6))+
  labs(x="RNA binding Protein", y="Number of sites in different regions")+
  theme_bw()+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())
FIMO_RBP_PSI_up_plot


FIMO_RBP_PSI_down<-read.xlsx("data/Figure6/FIMO_RBP_prot_significant.xlsx",sheet=4)
FIMO_RBP_PSI_down_plot<-ggplot(FIMO_RBP_PSI_down, aes(fill=Region, y=Count, x=RBP)) +
  geom_bar(position="stack", stat="identity")+
  scale_fill_manual(values = c("#355070","#6D597A","#B56576","#E56B6F","#EAAC8B"))+
  theme(axis.text.x = element_text(angle = 65,vjust = 0.6))+
  labs(x="RNA binding Protein", y="Number of sites in different regions")+
  theme_bw()+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())
FIMO_RBP_PSI_down_plot

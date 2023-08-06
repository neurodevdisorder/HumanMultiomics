#AS events relationship with DGE

library(openxlsx)
library(ggrepel)
library(ggplot2)
library(ComplexHeatmap)
library(circlize)

#hippocampus
DGE_splicing_hippo<-read.xlsx("data/Figure5/Number_DGE_splicing.xlsx",sheet=1)
DGE_splicing_hippo_plot<- ggplot(DGE_splicing_hippo, aes(logFC))+
  geom_density(aes(color=factor(Event))) +
  #scale_fill_manual(values = c("#003049","#D62828","#F77F00","#FCBF49")) +
  #scale_fill_manual(values = c("#EC9898","#FFBA70","#5CC6FF","#FDDC9B")) +
  scale_color_manual(values = c("#264653","#2A9D8F","#F4A261","#E9C46A"))+
  labs(x="LogFC",
       fill="#Event")+theme_bw()+
  xlim(-2,2)+
  ylim(0,1.5)+
  theme(legend.position="none",text=element_text(size=14),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())
DGE_splicing_hippo_plot


#cortex
DGE_splicing_cortex<-read.xlsx("data/Figure5/Number_DGE_splicing.xlsx",sheet=2)
DGE_splicing_cortex_plot<- ggplot(DGE_splicing_cortex, aes(logFC))+
  geom_density(aes(color=factor(Event))) +
  scale_color_manual(values = c("#264653","#2A9D8F","#F4A261","#E9C46A"))+
  labs(x="LogFC",
       fill="#Event")+theme_bw()+
  xlim(-2,2)+
  ylim(0,1.5)+
  theme(legend.position="none",text=element_text(size=14),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())
DGE_splicing_cortex_plot

exon_size_dPSI<-read.xlsx("data/Figure5/human_hippocortex_EX_events.xlsx",sheet=4)
exon_size_dPSI$Region<-factor(exon_size_dPSI$Region,levels=c("Hippocampus","Cortex"))
exon_size_dPSI_001<-ggplot(exon_size_dPSI,aes(Exon.size,dPSI))+
  geom_boxplot()+
  facet_wrap(~Region, scale="free")+
  theme(axis.text.x = element_text(angle = 65,vjust = 0.6))+
  labs(x="Exon size (nt)", y="dPSI(DS-Control)")+
  theme_bw()+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())
exon_size_dPSI_001

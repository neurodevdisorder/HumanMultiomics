#5' splice site
splicesite5<-read.xlsx("data/Supp_Figure8/IR_GC_SS_hippo_cortex.xlsx",sheet=2)
splicesite5$Region<-factor(splicesite5$Region,levels=c("Hippocampus","Cortex"))
splicesite5_001<-ggplot(splicesite5,aes(Significance,splicesite))+
  geom_boxplot()+
  facet_wrap(~Region, scale="free")+
  theme(axis.text.x = element_text(angle = 65,vjust = 0.6))+
  labs(color="Brain Region")+theme_bw()+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())
splicesite5_001

#3' splice site
splicesite3<-read.xlsx("data/Supp_Figure8/IR_GC_SS_hippo_cortex.xlsx",sheet=1)
splicesite3$Region<-factor(splicesite3$Region,levels=c("Hippocampus","Cortex"))
splicesite3_001<-ggplot(splicesite3,aes(Significance,splicesite))+
  geom_boxplot()+
  facet_wrap(~Region, scale="free")+
  theme(axis.text.x = element_text(angle = 65,vjust = 0.6))+
  labs(color="Brain Region")+theme_bw()+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())
splicesite3_001

#GC content
GC<-read.xlsx("data/Supp_Figure8/IR_GC_SS_hippo_cortex.xlsx",sheet=3)
GC$Region<-factor(GC$Region,levels=c("Hippocampus","Cortex"))
GC_001<-ggplot(GC,aes(Significance,GC))+
  geom_boxplot()+
  facet_wrap(~Region, scale="free")+
  theme(axis.text.x = element_text(angle = 65,vjust = 0.6))+
  labs(color="Brain Region")+theme_bw()+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())

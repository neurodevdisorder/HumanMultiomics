library(openxlsx)
library(ggrepel)
library(ggplot2)

PTBP2_GE<-read.xlsx("data/Supp_Figure9/plotting_correlation_GE_groups.xlsx",sheet = 1)
row.names(PTBP2_GE)<-PTBP2_GE$Ensembl
PTBP2_GE<-PTBP2_GE[,-c(1)]
PTBP2_GE$Group<-factor(PTBP2_GE$Group,levels = c("Control","DS"))

#ENSG00000117569 is PTBP2
#ENSG00000173660 is UQCRH
PTBP2_ENSG00000173660_plot<-ggplot(PTBP2_GE[,-c(1)],aes(x=ENSG00000173660,y=ENSG00000117569,color=factor(PTBP2_GE$Group)))+
  geom_point(size=2.0) +
  scale_y_continuous()+theme_bw()+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_smooth(method=lm,   # Add linear regression lines
              se=FALSE)+
  scale_color_manual(values = c("#A7C957","#AA7DCE"))

#ENSG00000077264 is PAK3
PTBP2_ENSG00000077264_plot<-ggplot(PTBP2_GE[,-c(1)],aes(x=ENSG00000077264,y=ENSG00000117569,color=factor(PTBP2_GE$Group)))+
  geom_point(size=2.0) +
  scale_y_continuous()+theme_bw()+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_smooth(method=lm,   # Add linear regression lines
              se=FALSE)+
  scale_color_manual(values = c("#A7C957","#AA7DCE"))

#ENSG00000082293 is COL19A1
PTBP2_ENSG00000082293_plot<-ggplot(PTBP2_GE[,-c(1)],aes(x=ENSG00000082293,y=ENSG00000117569,color=factor(PTBP2_GE$Group)))+
  geom_point(size=2.0) +
  scale_y_continuous()+theme_bw()+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_smooth(method=lm,   # Add linear regression lines
              se=FALSE)+
  scale_color_manual(values = c("#A7C957","#AA7DCE"))

#ENSG00000135655 is USP15
PTBP2_ENSG00000135655_plot<-ggplot(PTBP2_GE[,-c(1)],aes(x=ENSG00000135655,y=ENSG00000117569,color=factor(PTBP2_GE$Group)))+
  geom_point(size=2.0) +
  scale_y_continuous()+theme_bw()+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_smooth(method=lm,   # Add linear regression lines
              se=FALSE)+
  scale_color_manual(values = c("#A7C957","#AA7DCE"))


#ENSG00000198839 is ZNF277
PTBP2_ENSG00000198839_plot<-ggplot(PTBP2_GE[,-c(1)],aes(x=ENSG00000198839,y=ENSG00000117569,color=factor(PTBP2_GE$Group)))+
  geom_point(size=2.0) +
  scale_y_continuous()+theme_bw()+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_smooth(method=lm,   # Add linear regression lines
              se=FALSE)+
  scale_color_manual(values = c("#A7C957","#AA7DCE"))


#ENSG00000109790 is KLHL5
PTBP2_ENSG00000109790_plot<-ggplot(PTBP2_GE[,-c(1)],aes(x=ENSG00000109790,y=ENSG00000117569,color=factor(PTBP2_GE$Group)))+
  geom_point(size=2.0) +
  scale_y_continuous()+theme_bw()+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_smooth(method=lm,   # Add linear regression lines
              se=FALSE)+
  scale_color_manual(values = c("#A7C957","#AA7DCE"))


PTBP2_PSI<-read.xlsx("data/Supp_Figure9/plotting_correlation_PSI_groups.xlsx",sheet = 1)
row.names(PTBP2_PSI)<-PTBP2_PSI$Ensembl
PTBP2_PSI<-PTBP2_PSI[,-c(1)]
PTBP2_PSI$Group<-factor(PTBP2_PSI$Group,levels = c("Control","DS"))

#HsaEX0069493: UQCRH
PTBP2_HsaEX0069493_plot<-ggplot(PTBP2_PSI[,-c(1)],aes(x=HsaEX0069493,y=ENSG00000117569,color=factor(PTBP2_PSI$Group)))+
  geom_point(size=2.0) +
  scale_y_continuous()+theme_bw()+
  xlim(0,100)+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_smooth(method=lm,   # Add linear regression lines
              se=FALSE)+
  scale_color_manual(values = c("#A7C957","#AA7DCE"))


#HsaEX0045269: PAK3
PTBP2_HsaEX0045269_plot<-ggplot(PTBP2_PSI[,-c(1)],aes(x=HsaEX0045269,y=ENSG00000117569,color=factor(PTBP2_PSI$Group)))+
  geom_point(size=2.0) +
  scale_y_continuous()+theme_bw()+
  xlim(0,100)+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_smooth(method=lm,   # Add linear regression lines
              se=FALSE)+
  scale_color_manual(values = c("#A7C957","#AA7DCE"))


#HsaEX0069607: USP15
PTBP2_HsaEX0069607_plot<-ggplot(PTBP2_PSI[,-c(1)],aes(x=HsaEX0069607,y=ENSG00000117569,color=factor(PTBP2_PSI$Group)))+
  geom_point(size=2.0) +
  scale_y_continuous()+theme_bw()+
  xlim(0,100)+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_smooth(method=lm,   # Add linear regression lines
              se=FALSE)+
  scale_color_manual(values = c("#A7C957","#AA7DCE"))


#HsaEX0016372: COL19A1
PTBP2_HsaEX0016372_plot<-ggplot(PTBP2_PSI[,-c(1)],aes(x=HsaEX0016372,y=ENSG00000117569,color=factor(PTBP2_PSI$Group)))+
  geom_point(size=2.0) +
  scale_y_continuous()+theme_bw()+
  xlim(0,100)+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_smooth(method=lm,   # Add linear regression lines
              se=FALSE)+
  scale_color_manual(values = c("#A7C957","#AA7DCE"))


#HsaEX0073318: ZNF277
PTBP2_HsaEX0073318_plot<-ggplot(PTBP2_PSI[,-c(1)],aes(x=HsaEX0073318,y=ENSG00000117569,color=factor(PTBP2_PSI$Group)))+
  geom_point(size=2.0) +
  scale_y_continuous()+theme_bw()+
  xlim(0,100)+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_smooth(method=lm,   # Add linear regression lines
              se=FALSE)+
  scale_color_manual(values = c("#A7C957","#AA7DCE"))


#HsaEX0034863: KLHL5
PTBP2_HsaEX0034863_plot<-ggplot(PTBP2_PSI[,-c(1)],aes(x=HsaEX0034863,y=ENSG00000117569,color=factor(PTBP2_PSI$Group)))+
  geom_point(size=2.0) +
  scale_y_continuous()+theme_bw()+
  xlim(0,100)+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_smooth(method=lm,   # Add linear regression lines
              se=FALSE)+
  scale_color_manual(values = c("#A7C957","#AA7DCE"))


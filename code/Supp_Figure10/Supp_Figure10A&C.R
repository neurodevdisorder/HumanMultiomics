library(openxlsx)
library(ggrepel)
library(ggplot2)

#Supp_Figure10A
realtime_CLASP2<-read.xlsx("data/Supp_Figure10/NPC_DIV30_gene_exp.xlsx",sheet=1)
realtime_CLASP2_plot<-ggplot(realtime_CLASP2, aes(x = Norm, y =CLASP2,group=Group)) +
  geom_line(linewidth = 1,aes(color=Group)) +
  scale_color_manual(values = c("#A7C957","#AA7DCE")) +
  theme_bw()+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())

realtime_DNM3<-read.xlsx("data/Supp_Figure10/NPC_DIV30_gene_exp.xlsx",sheet=2)
realtime_DNM3_plot<-ggplot(realtime_DNM3, aes(x = Norm, y = DNM3,group=Group)) +
  geom_line(linewidth = 1,aes(color=Group)) +
  scale_color_manual(values = c("#A7C957","#AA7DCE")) +
  theme_bw()+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())

realtime_DVL1<-read.xlsx("data/Supp_Figure10/NPC_DIV30_gene_exp.xlsx",sheet=3)
realtime_DVL1_plot<-ggplot(realtime_DVL1, aes(x = Norm, y = DVL1,group=Group)) +
  geom_line(linewidth = 1,aes(color=Group)) +
  scale_color_manual(values = c("#A7C957","#AA7DCE")) +
  theme_bw()+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())

realtime_GSK3B<-read.xlsx("data/Supp_Figure10/NPC_DIV30_gene_exp.xlsx",sheet=4)
realtime_GSK3B_plot<-ggplot(realtime_GSK3B, aes(x = Norm, y = GSK3B,group=Group)) +
  geom_line(linewidth = 1,aes(color=Group)) +
  scale_color_manual(values = c("#A7C957","#AA7DCE")) +
  theme_bw()+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())

realtime_NEO1<-read.xlsx("data/Supp_Figure10/NPC_DIV30_gene_exp.xlsx",sheet=5)
realtime_NEO1_plot<-ggplot(realtime_NEO1, aes(x = Norm, y = NEO1,group=Group)) +
  geom_line(linewidth = 1,aes(color=Group)) +
  scale_color_manual(values = c("#A7C957","#AA7DCE")) +
  theme_bw()+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())

realtime_NFASC<-read.xlsx("data/Supp_Figure10/NPC_DIV30_gene_exp.xlsx",sheet=6)
realtime_NFASC_plot<-ggplot(realtime_NFASC, aes(x = Norm, y = NFASC,group=Group)) +
  geom_line(linewidth = 1,aes(color=Group)) +
  scale_color_manual(values = c("#A7C957","#AA7DCE")) +
  theme_bw()+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())

realtime_NRCAM<-read.xlsx("data/Supp_Figure10/NPC_DIV30_gene_exp.xlsx",sheet=7)

realtime_NRCAM_plot<-ggplot(realtime_NRCAM, aes(x = Norm, y = NRCAM,group=Group)) +
  geom_line(linewidth = 1,aes(color=Group)) +
  scale_color_manual(values = c("#A7C957","#AA7DCE")) +
  theme_bw()+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())

realtime_RAB3A<-read.xlsx("data/Supp_Figure10/NPC_DIV30_gene_exp.xlsx",sheet=8)
realtime_RAB3A_plot<-ggplot(realtime_RAB3A, aes(x = Norm, y = RAB3A,group=Group)) +
  geom_line(linewidth = 1,aes(color=Group)) +
  scale_color_manual(values = c("#A7C957","#AA7DCE")) +
  theme_bw()+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())

realtime_PTBP2<-read.xlsx("data/Supp_Figure10/NPC_DIV30_gene_exp.xlsx",sheet=9)
realtime_PTBP2_plot<-ggplot(realtime_PTBP2, aes(x = Norm, y = PTBP2,group=Group)) +
  geom_line(linewidth = 1,aes(color=Group)) +
  scale_color_manual(values = c("#A7C957","#AA7DCE")) +
  theme_bw()+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())

realtime_SEMA4D<-read.xlsx("data/Supp_Figure10/NPC_DIV30_gene_exp.xlsx",sheet=10)
realtime_SEMA4D_plot<-ggplot(realtime_SEMA4D, aes(x = Norm, y = SEMA4D,group=Group)) +
  geom_line(linewidth = 1,aes(color=Group)) +
  scale_color_manual(values = c("#A7C957","#AA7DCE")) +
  theme_bw()+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())

realtime_SHTN1<-read.xlsx("data/Supp_Figure10/NPC_DIV30_gene_exp.xlsx",sheet=11)
realtime_SHTN1_plot<-ggplot(realtime_SHTN1, aes(x = Norm, y = SHTN1,group=Group)) +
  geom_line(linewidth = 1,aes(color=Group)) +
  scale_color_manual(values = c("#A7C957","#AA7DCE")) +
  theme_bw()+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())

realtime_SPTBN4<-read.xlsx("data/Supp_Figure10/NPC_DIV30_gene_exp.xlsx",sheet=12)
realtime_SPTBN4_plot<-ggplot(realtime_SPTBN4, aes(x = Norm, y = SPTBN4,group=Group)) +
  geom_line(linewidth = 1,aes(color=Group)) +
  scale_color_manual(values = c("#A7C957","#AA7DCE")) +
  theme_bw()+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())

#Supp_Figure10C
AS_iPSC_neurons<-read.xlsx("data/Supp_Figure10/AS_iPSC_neurons.xlsx",sheet=1)
AS_iNeurons_ANK3_plot<-ggplot(data=AS_iPSC_neurons, aes(x=PSI, y=ANK3, fill=Group)) +
  geom_bar(stat="identity", color="black", position=position_dodge())+
  scale_fill_manual(values = c("#A7C957","#AA7DCE")) +
  theme_minimal()+
  ylim(0,100)+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())

AS_iNeurons_CLASP2_plot<-ggplot(data=AS_iPSC_neurons, aes(x=PSI, y=CLASP2, fill=Group)) +
  geom_bar(stat="identity", color="black", position=position_dodge())+
  scale_fill_manual(values = c("#A7C957","#AA7DCE")) +
  theme_minimal()+
  ylim(0,100)+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())

AS_iNeurons_MARK2_plot<-ggplot(data=AS_iPSC_neurons, aes(x=PSI, y=MARK2, fill=Group)) +
  geom_bar(stat="identity", color="black", position=position_dodge())+
  scale_fill_manual(values = c("#A7C957","#AA7DCE")) +
  theme_minimal()+
  ylim(0,100)+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())

AS_iNeurons_NEO1_plot<-ggplot(data=AS_iPSC_neurons, aes(x=PSI, y=NEO1, fill=Group)) +
  geom_bar(stat="identity", color="black", position=position_dodge())+
  scale_fill_manual(values = c("#A7C957","#AA7DCE")) +
  theme_minimal()+
  ylim(0,100)+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())

AS_iNeurons_PTBP2_plot<-ggplot(data=AS_iPSC_neurons, aes(x=PSI, y=PTBP2, fill=Group)) +
  geom_bar(stat="identity", color="black", position=position_dodge())+
  scale_fill_manual(values = c("#A7C957","#AA7DCE")) +
  theme_minimal()+
  ylim(0,100)+
  theme(legend.position="none",text=element_text(size=12),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())



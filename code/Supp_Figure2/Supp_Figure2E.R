library(openxlsx)
library(ggrepel)
library(ggplot2)

#Palmer et al Table S3 compare each cell type with DGE from cortex data:
#astrocytes
human_cortex_Palmer_overlap_DE_ast<-read.xlsx("data/Supp_Figure2/Palmer_TableS3_HC_DGE_compare.xlsx",sheet=1)
require(stats)
reg<-lm(Cortex_logFC ~ avg_logFC, data = human_cortex_Palmer_overlap_DE_ast)
reg

human_cortex_Palmer_overlap_DE_ast_plot<-ggplot(human_cortex_Palmer_overlap_DE_ast, aes(x = avg_logFC, y = Cortex_logFC)) +
  geom_point(alpha=1, size=2) +
  #  scale_color_manual(values = c("#EF233C","#CED4DA","#05668D","#FB8500")) +
  xlab("Astrocytes average logFC") + ylab("Human cortex logFC")+
  theme_bw() +
  xlim(-3,3)+
  ylim(-3,4)+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_abline(intercept = 0.2764, slope = 1.2788, color="black", linetype="dashed", linewidth=0.5)

cor.test(human_cortex_Palmer_overlap_DE_ast$avg_logFC,human_cortex_Palmer_overlap_DE_ast$Cortex_logFC)

#endothelial cells
human_cortex_Palmer_overlap_DE_end<-read.xlsx("data/Supp_Figure2/Palmer_TableS3_HC_DGE_compare.xlsx",sheet=2)
require(stats)
reg<-lm(Cortex_logFC ~ avg_logFC, data = human_cortex_Palmer_overlap_DE_end)
reg

human_cortex_Palmer_overlap_DE_end_plot<-ggplot(human_cortex_Palmer_overlap_DE_end, aes(x = avg_logFC, y = Cortex_logFC)) +
  geom_point(alpha=1, size=2) +
  #  scale_color_manual(values = c("#EF233C","#CED4DA","#05668D","#FB8500")) +
  xlab("Endothelial average logFC") + ylab("Human cortex logFC")+
  theme_bw() +
  xlim(-3,3)+
  ylim(-3,4)+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_abline(intercept = 0.2485, slope = 0.6544, color="black", linetype="dashed", linewidth=0.5)

cor.test(human_cortex_Palmer_overlap_DE_end$avg_logFC,human_cortex_Palmer_overlap_DE_end$Cortex_logFC)

#Excitatory neurons
human_cortex_Palmer_overlap_DE_Ex<-read.xlsx("data/Supp_Figure2/Palmer_TableS3_HC_DGE_compare.xlsx",sheet=3)
require(stats)
reg<-lm(Cortex_logFC ~ avg_logFC, data = human_cortex_Palmer_overlap_DE_Ex)
reg

human_cortex_Palmer_overlap_DE_Ex_plot<-ggplot(human_cortex_Palmer_overlap_DE_Ex, aes(x = avg_logFC, y = Cortex_logFC)) +
  geom_point(alpha=1, size=2) +
  #  scale_color_manual(values = c("#EF233C","#CED4DA","#05668D","#FB8500")) +
  xlab("Excitatory average logFC") + ylab("Human cortex logFC")+
  theme_bw() +
  xlim(-3,3)+
  ylim(-3,4)+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_abline(intercept = -0.3559, slope = 1.3129, color="black", linetype="dashed", linewidth=0.5)

cor.test(human_cortex_Palmer_overlap_DE_Ex$avg_logFC,human_cortex_Palmer_overlap_DE_Ex$Cortex_logFC)

#Inhibitory neurons
human_cortex_Palmer_overlap_DE_Inh<-read.xlsx("data/Supp_Figure2/Palmer_TableS3_HC_DGE_compare.xlsx",sheet=4)
require(stats)
reg<-lm(Cortex_logFC ~ avg_logFC, data = human_cortex_Palmer_overlap_DE_Inh)
reg

human_cortex_Palmer_overlap_DE_Inh_plot<-ggplot(human_cortex_Palmer_overlap_DE_Inh, aes(x = avg_logFC, y = Cortex_logFC)) +
  geom_point(alpha=1, size=2) +
  #  scale_color_manual(values = c("#EF233C","#CED4DA","#05668D","#FB8500")) +
  xlab("Inhibitory average logFC") + ylab("Human cortex logFC")+
  theme_bw() +
  xlim(-3,3)+
  ylim(-3,4)+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_abline(intercept = -0.5380, slope = 0.8287, color="black", linetype="dashed", linewidth=0.5)

cor.test(human_cortex_Palmer_overlap_DE_Inh$avg_logFC,human_cortex_Palmer_overlap_DE_Inh$Cortex_logFC)

#microglia
human_cortex_Palmer_overlap_DE_mic<-read.xlsx("data/Supp_Figure2/Palmer_TableS3_HC_DGE_compare.xlsx",sheet=5)
require(stats)
reg<-lm(Cortex_logFC ~ avg_logFC, data = human_cortex_Palmer_overlap_DE_mic)
reg

human_cortex_Palmer_overlap_DE_mic_plot<-ggplot(human_cortex_Palmer_overlap_DE_mic, aes(x = avg_logFC, y = Cortex_logFC)) +
  geom_point(alpha=1, size=2) +
  #  scale_color_manual(values = c("#EF233C","#CED4DA","#05668D","#FB8500")) +
  xlab("Microglia average logFC") + ylab("Human cortex logFC")+
  theme_bw() +
  xlim(-3,3)+
  ylim(-3,4)+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_abline(intercept = 0.4174, slope = 0.4879, color="black", linetype="dashed", linewidth=0.5)

cor.test(human_cortex_Palmer_overlap_DE_mic$avg_logFC,human_cortex_Palmer_overlap_DE_mic$Cortex_logFC)

#oligodendrocytes
human_cortex_Palmer_overlap_DE_oli<-read.xlsx("data/Supp_Figure2/Palmer_TableS3_HC_DGE_compare.xlsx",sheet=6)
require(stats)
reg<-lm(Cortex_logFC ~ avg_logFC, data = human_cortex_Palmer_overlap_DE_oli)
reg

human_cortex_Palmer_overlap_DE_oli_plot<-ggplot(human_cortex_Palmer_overlap_DE_oli, aes(x = avg_logFC, y = Cortex_logFC)) +
  geom_point(alpha=1, size=2) +
  #  scale_color_manual(values = c("#EF233C","#CED4DA","#05668D","#FB8500")) +
  xlab("Oligodendrocytes average logFC") + ylab("Human cortex logFC")+
  theme_bw() +
  xlim(-3,3)+
  ylim(-3,4)+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_abline(intercept = -0.01324, slope = 1.35551, color="black", linetype="dashed", linewidth=0.5)

cor.test(human_cortex_Palmer_overlap_DE_oli$avg_logFC,human_cortex_Palmer_overlap_DE_oli$Cortex_logFC)

#OPC
human_cortex_Palmer_overlap_DE_OPC<-read.xlsx("data/Supp_Figure2/Palmer_TableS3_HC_DGE_compare.xlsx",sheet=7)
require(stats)
reg<-lm(Cortex_logFC ~ avg_logFC, data = human_cortex_Palmer_overlap_DE_OPC)
reg

human_cortex_Palmer_overlap_DE_OPC_plot<-ggplot(human_cortex_Palmer_overlap_DE_OPC, aes(x = avg_logFC, y = Cortex_logFC)) +
  geom_point(alpha=1, size=2) +
  #  scale_color_manual(values = c("#EF233C","#CED4DA","#05668D","#FB8500")) +
  xlab("OPC average logFC") + ylab("Human cortex logFC")+
  theme_bw() +
  xlim(-3,3)+
  ylim(-3,4)+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_abline(intercept = 0.08874, slope = 0.69385, color="black", linetype="dashed", linewidth=0.5)

cor.test(human_cortex_Palmer_overlap_DE_OPC$avg_logFC,human_cortex_Palmer_overlap_DE_OPC$Cortex_logFC)


#Pericytes
human_cortex_Palmer_overlap_DE_Per<-read.xlsx("data/Supp_Figure2/Palmer_TableS3_HC_DGE_compare.xlsx",sheet=8)
require(stats)
reg<-lm(Cortex_logFC ~ avg_logFC, data = human_cortex_Palmer_overlap_DE_Per)
reg

human_cortex_Palmer_overlap_DE_Per_plot<-ggplot(human_cortex_Palmer_overlap_DE_Per, aes(x = avg_logFC, y = Cortex_logFC)) +
  geom_point(alpha=1, size=2) +
  #  scale_color_manual(values = c("#EF233C","#CED4DA","#05668D","#FB8500")) +
  xlab("Pericytes average logFC") + ylab("Human cortex logFC")+
  theme_bw() +
  xlim(-3,3)+
  ylim(-3,4)+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_abline(intercept = 0.05851, slope = 0.82626, color="black", linetype="dashed", linewidth=0.5)

cor.test(human_cortex_Palmer_overlap_DE_Per$avg_logFC,human_cortex_Palmer_overlap_DE_Per$Cortex_logFC)


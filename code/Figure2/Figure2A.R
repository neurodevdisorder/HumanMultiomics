library(ggplot2)
library(dplyr)
library(openxlsx)
library(ggrepel)
library(DBI)
library(ggcorrplot)

##### Hippocampus
hippo_rna_protein_overlap<-read.xlsx("data/Figure2/gene_protein_correlation.xlsx",sheet=1)
require(stats)
reg<-lm(logFC_RNA ~ logFC_prot, data = hippo_rna_protein_overlap)
reg

ggplot(hippo_rna_protein_overlap, aes(x = logFC_prot, y = logFC_RNA)) +
  geom_point(aes(color =  factor(DE)), alpha=1, size=2) +
  scale_color_manual(values = c("#EF233C","#CED4DA","#05668D","#FB8500")) +
  xlab("Proteome logFC") + ylab("Transcriptome logFC")+
  theme_bw() +
  xlim(-5,5)+
  ylim(-2,4)+
  theme(text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_abline(intercept = -0.001667, slope = 0.099842, color="black", linetype="dashed", size=0.5)

cor(hippo_rna_protein_overlap$logFC_prot,hippo_rna_protein_overlap$logFC_RNA,method = "pearson")

##### Cortex
cortex_rna_protein_overlap<-read.xlsx("data/Figure2/gene_protein_correlation.xlsx",sheet=2)
require(stats)
reg<-lm(logFC_RNA ~ logFC_prot, data = cortex_rna_protein_overlap)
reg

ggplot(cortex_rna_protein_overlap, aes(x = logFC_prot, y = logFC_RNA)) +
  geom_point(aes(color =  factor(DE)), alpha=1, size=2) +
  scale_color_manual(values = c("#EF233C","#CED4DA","#05668D","#FB8500")) +
  xlab("Proteome logFC") + ylab("Transcriptome logFC")+
  theme_bw() +
  xlim(-5,5)+
  ylim(-2,4)+
  theme(text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_abline(intercept = -0.1244, slope = 0.1551, color="black", linetype="dashed", size=0.5)

cor(cortex_rna_protein_overlap$logFC_prot,cortex_rna_protein_overlap$logFC_RNA,method = "pearson")


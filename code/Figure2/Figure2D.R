library(ggplot2)
library(dplyr)
library(openxlsx)
library(ggrepel)
library(DBI)

##### Hippocampus
hippo_rna_protein_overlap_DE<-read.xlsx("data/Figure2/gene_protein_correlation.xlsx",sheet=3)
reg<-lm(logFC_RNA ~ logFC_prot, data = hippo_rna_protein_overlap_DE)
reg

ggplot(hippo_rna_protein_overlap_DE, aes(x = logFC_prot, y = logFC_RNA)) +
  geom_point(aes(color =  factor(direction)), alpha=1, size=2) +
  scale_color_manual(values = c("#FFB703","#2A9D8F")) +
  xlab("Proteome logFC") + ylab("Transcriptome logFC")+
  theme_bw() +
  xlim(-5,5)+
  ylim(-2,4)+
  theme(text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_hline(yintercept=0, linetype="dashed", color = "black")+
  geom_vline(xintercept = 0,linetype="dashed",color="black")

##### Cortex
cortex_rna_protein_overlap_DE<-read.xlsx("data/Figure2/gene_protein_correlation.xlsx",sheet=4)
reg<-lm(logFC_RNA ~ logFC_prot, data = cortex_rna_protein_overlap_DE)
reg

ggplot(cortex_rna_protein_overlap_DE, aes(x = logFC_prot, y = logFC_RNA)) +
  geom_point(aes(color =  factor(direction)), alpha=1, size=2) +
  scale_color_manual(values = c("#FFB703","#2A9D8F")) +
  xlab("Proteome logFC") + ylab("Transcriptome logFC")+
  theme_bw() +
  xlim(-5,5)+
  ylim(-2,4)+
  theme(text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_hline(yintercept=0, linetype="dashed", color = "black")+
  geom_vline(xintercept = 0,linetype="dashed",color="black")



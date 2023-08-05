library(ggplot2)
library(dplyr)
library(openxlsx)
library(ggrepel)

##### Hippocampus
diff_gene_transcript_hippo<- read.table(file= "data/Figure1/diff_gene_transcript_hippo.txt", header=T, row.names=1)
head(diff_gene_transcript_hippo)
diff_gene_transcript_hippo_density_plot<- ggplot(diff_gene_transcript_hippo, aes(LogFC))+
  geom_density(aes(fill=factor(Type)), alpha=0.8) +
  scale_fill_manual(values = c("#AA7DCE","#FEEAFA")) +
  xlim(-14,14)+
  ylim(0,0.9)+
  labs(x="LogFC",
       fill="#Type")+theme_bw()+
  theme(text=element_text(size=14),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())
diff_gene_transcript_hippo_density_plot

##### Cortex
diff_gene_transcript_cortex<- read.table(file= "data/Figure1/diff_gene_transcript_cortex.txt", header=T, row.names=1)
head(diff_gene_transcript_cortex)
diff_gene_transcript_cortex_density_plot<- ggplot(diff_gene_transcript_cortex, aes(LogFC))+
  geom_density(aes(fill=factor(Type)), alpha=0.8) +
  scale_fill_manual(values = c("#F4A5AE","#F7E5DB")) +
  xlim(-14,14)+
  ylim(0,0.9)+
  labs(x="LogFC",
       fill="#Type")+theme_bw()+
  theme(text=element_text(size=14),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())
diff_gene_transcript_cortex_density_plot

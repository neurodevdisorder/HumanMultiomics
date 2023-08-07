#Perform differential expression analysis for Lockstone et al. and Olmos Serrano et al.

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(c("GEOquery", "limma", "Biobase"))
BiocManager::install("lumi")
BiocManager::install("oligo")
library(openxlsx)
library(ggrepel)
library(ggplot2)
library(ComplexHeatmap)
library(circlize)
library(GEOquery)
library(limma)
library(Biobase)
library(limma)
library(lumi)
library(oligo)

#GEO dataset GSE5390 for Lockstone et al., 2007

gse <- getGEO("GSE5390")
exprs_mat <- exprs(gse[[1]])
sample_info <- pData(gse[[1]])
phenoData <- AnnotatedDataFrame(sample_info)
norm_mat <- normalizeBetweenArrays(exprs_mat, method = "quantile")
eset <- ExpressionSet(norm_mat, phenoData = phenoData)
sample_info$group<-c("Down","Down","Down","Down","Down","Down","Down","Control","Control","Control","Control","Control","Control","Control","Control")

group<-relevel(factor(sample_info$group),ref="Control")
design <- model.matrix(~0 + group)
design
colnames(design)<-c("Control","Down")
contrasts <- makeContrasts(Down_Control = Down - Control, levels = design)
fit <- lmFit(eset, design, method = "robust",maxit=10000)
contrast_fit<-contrasts.fit(fit,contrasts)
# Apply empirical Bayes moderation to the t-statistics
fit2 <- eBayes(contrast_fit)

# Conduct the differential expression analysis
results <- decideTests(fit2, contrasts=contrasts, p.value=0.05, adjust.method="BH")
DE_results_GSE5390<-topTable(fit2,adjust.method = "BH",confint = TRUE,n=nrow(exprs_mat))
write.table(DE_results_GSE5390,"DE_results_GSE5390.txt",sep="\t")

#DE_human_cortex_GSE5390
human_cortex_GSE5390_overlap_DE<-read.xlsx("data/Supp_Figure1/Shared_DEGs_Lockstone_Olmos.xlsx",sheet=1)
require(stats)
reg<-lm(human_cortex ~ GSE5390, data = human_cortex_GSE5390_overlap_DE)
reg

human_cortex_GSE5390_overlap_DE_plot<-ggplot(human_cortex_GSE5390_overlap_DE, aes(x = GSE5390, y = human_cortex)) +
  geom_point(alpha=1, size=2) +
  #  scale_color_manual(values = c("#EF233C","#CED4DA","#05668D","#FB8500")) +
  xlab("GSE5390 logFC") + ylab("Human cortex logFC")+
  theme_bw() +
  # xlim(-5,5)+
  #  ylim(-2,4)+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_abline(intercept = 0.02101, slope = 0.63535, color="black", linetype="dashed", size=0.5)

cor.test(human_cortex_GSE5390_overlap_DE$GSE5390,human_cortex_GSE5390_overlap_DE$human_cortex)


#GSE59630 for Olmos Serrano et al.

gse <- getGEO("GSE59630")
exprs_mat <- exprs(gse[[1]])
sample_info <- pData(gse[[1]])
sample_info2 <- sample_info[grepl("DFC", sample_info$title),]
phenoData <- AnnotatedDataFrame(sample_info2)
exprs_mat_sub <- exprs_mat[, colnames(exprs_mat) %in% sample_info2$geo_accession]
norm_mat <- normalizeBetweenArrays(exprs_mat_sub, method = "quantile")
eset <- ExpressionSet(norm_mat, phenoData = phenoData)
group<-relevel(factor(sample_info2$`disease status:ch1`),ref="CTL")
design <- model.matrix(~0 + group)
design
colnames(design)<-c("CTL","DS")
contrasts <- makeContrasts(DS_CTL = DS - CTL, levels = design)
fit <- lmFit(eset, design, method = "robust",maxit=10000)
contrast_fit<-contrasts.fit(fit,contrasts)
# Apply empirical Bayes moderation to the t-statistics
fit2 <- eBayes(contrast_fit)

# Conduct the differential expression analysis
results <- decideTests(fit2, contrasts=contrasts, p.value=0.05, adjust.method="BH")
DE_results_GSE59630<-topTable(fit2,adjust.method = "BH",confint = TRUE,n=nrow(exprs_mat_sub))
write.table(DE_results_GSE59630,"DE_results_GSE59630.txt",sep="\t")

#DE_human_cortex_GSE59630
human_cortex_GSE59630_overlap_DE<-read.xlsx("data/Supp_Figure1/Shared_DEGs_Lockstone_Olmos.xlsx",sheet=2)
reg<-lm(human_cortex ~ GSE59630, data = human_cortex_GSE59630_overlap_DE)
reg

human_cortex_GSE59630_overlap_DE_plot<-ggplot(human_cortex_GSE59630_overlap_DE, aes(x = GSE59630, y = human_cortex)) +
  geom_point(alpha=1, size=2) +
  #  scale_color_manual(values = c("#EF233C","#CED4DA","#05668D","#FB8500")) +
  xlab("GSE59630 logFC") + ylab("Human cortex logFC")+
  theme_bw() +
  # xlim(-5,5)+
  #  ylim(-2,4)+
  theme(legend.position="none",text=element_text(size=18),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  geom_abline(intercept = 0.1935, slope = 0.7055, color="black", linetype="dashed", size=0.5)

cor.test(human_cortex_GSE59630_overlap_DE$GSE59630,human_cortex_GSE59630_overlap_DE$human_cortex)



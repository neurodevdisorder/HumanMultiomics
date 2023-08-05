install.packages('sctransform')
install_github("nathanskene/ewce")
library(sctransform)
library(devtools)
library(EWCE)
library(superheat)
library(openxlsx)
celltype_data= load(file="/Users/mohit/Papers_IIT/Paper1/Things_Paper/HumanMultiomics/HumanMultiomics/data/celltype_data.rda")
download.file("goo.gl/r5Y24y",
              destfile="expression_mRNA_17-Aug-2014.txt")

path = "expression_mRNA_17-Aug-2014.txt"
celltype_data= load.linnarsson.sct.data(path)
save(celltype_data,file="celltype_data.rda")
if(!file.exists("MRK_List2.rpt")){
  download.file("http://www.informatics.jax.org/downloads/reports/MRK_List2.rpt", destfile="MRK_List2.rpt")
}
View(celltype_data)
celltype_data$exp = fix.bad.mgi.symbols(celltype_data$exp,mrk_file_path="MRK_List2.rpt")
exp_CortexOnly_DROPPED = drop.uninformative.genes(exp=celltype_data$exp,level2annot = celltype_data$annot$level2class)
annotLevels = list(level1class=celltype_data$annot$level1class,level2class=celltype_data$annot$level2class)
fNames_CortexOnly = generate.celltype.data(exp=exp_CortexOnly_DROPPED,annotLevels=annotLevels,groupName="kiCortexOnly")
print(fNames_CortexOnly)
fNames_CortexOnly = filter.genes.without.1to1.homolog(fNames_CortexOnly)
print(fNames_CortexOnly)
load(fNames_CortexOnly[1])
data("mouse_to_human_homologs")
m2h = unique(mouse_to_human_homologs[,c("HGNC.symbol","MGI.symbol")])
reps=100000
level=1

#now take filtered upregulated genes for hippocampus
hth_up<-read.xlsx("data/Figure1/results_rna_annotated_hth_filt_coding2.xlsx",sheet=3)
hth_up_genelist<-hth_up$SYMBOL
mouse.hits = unique(m2h[m2h$HGNC.symbol %in% hth_up_genelist,"MGI.symbol"])
human.hits = unique(m2h[m2h$HGNC.symbol %in% hth_up_genelist,"HGNC.symbol"])
human.bg = unique(m2h$HGNC.symbol)
mouse.bg  = unique(m2h$MGI.symbol)
full_results_hth_up=bootstrap.enrichment.test(sct_data=ctd,hits=mouse.hits,bg=mouse.bg,reps=reps,annotLevel=level)
print(full_results_hth_up$results[order(full_results_hth_up$results$p),3:5][1:6,])
print(ewce.plot(full_results_hth_up$results,mtc_method="BH"))
full_results_hth_up_results<-full_results_hth_up$results[order(full_results_hth_up$results$p),3:5][,]
write.table(full_results_hth_up_results,"output/full_results_hth_up_results.txt",sep="\t")

#control for other celltypes
cont_results_hth_up2=bootstrap.enrichment.test(sct_data=ctd,hits=human.hits,bg=human.bg,reps=reps,annotLevel=2,geneSizeControl=TRUE,genelistSpecies="human",sctSpecies="mouse")
print(cont_results_hth_up2$results[order(cont_results_hth_up2$results$p),3:5][1:6,])
print(ewce.plot(cont_results_hth_up2$results,mtc_method="BH"))
cont_results_hth_up_results<-cont_results_hth_up$results[order(cont_results_hth_up$results$p),3:5][,]
write.table(cont_results_hth_up_results,"output/cont_results_hth_up_results.txt",sep="\t")

#generate bootstrap plts for each cell types for upregulated genes in the hippocampus
generate.bootstrap.plots(sct_data=ctd,hits=mouse.hits,bg=mouse.bg,reps=10000,annotLevel=1,full_results=full_results_hth_up,listFileName="VignetteGraphs_hth_up")

#now take filtered downregulated genes for hippocampus
hth_down<-read.xlsx("data/Figure1/results_rna_annotated_hth_filt_coding2.xlsx",sheet=4)
hth_down_genelist<-hth_down$SYMBOL
mouse.hits = unique(m2h[m2h$HGNC.symbol %in% hth_down_genelist,"MGI.symbol"])
human.hits = unique(m2h[m2h$HGNC.symbol %in% hth_down_genelist,"HGNC.symbol"])
human.bg = unique(m2h$HGNC.symbol)
mouse.bg  = unique(m2h$MGI.symbol)
full_results_hth_down=bootstrap.enrichment.test(sct_data=ctd,hits=mouse.hits,bg=mouse.bg,reps=reps,annotLevel=level)
print(full_results_hth_down$results[order(full_results_hth_down$results$p),3:5][1:6,])
print(ewce.plot(full_results_hth_down$results,mtc_method="BH"))
full_results_hth_down_results<-full_results_hth_down$results[order(full_results_hth_down$results$p),3:5][,]
write.table(full_results_hth_down_results,"output/full_results_hth_down_results.txt",sep="\t")

#control for other celltypes
cont_results_hth_down = bootstrap.enrichment.test(sct_data=ctd,hits=human.hits,
                                                  bg=human.bg,reps=reps,annotLevel=1,geneSizeControl=TRUE,genelistSpecies="human",sctSpecies="mouse")
print(cont_results_hth_down$results[order(cont_results_hth_down$results$p),3:5][1:6,])
print(ewce.plot(cont_results_hth_down$results,mtc_method="BH"))
cont_results_hth_down_results<-cont_results_hth_down$results[order(cont_results_hth_down$results$p),3:5][,]
write.table(cont_results_hth_down_results,"output/cont_results_hth_down_results.txt",sep="\t")

#generate bootstrap plts for each cell types for downregulated genes in the hippocampus
generate.bootstrap.plots(sct_data=ctd,hits=mouse.hits,bg=mouse.bg,reps=10000,annotLevel=1,full_results=full_results_hth_down,listFileName="VignetteGraphs_hth_down")

#Now we have generated all the results to prepare the heatmaps or figure 1E for hippocampuas and cortex.
#We need to compile them and they are in data folder. We took the fold changes for each celltype and manually annotated the S.D. values in the figure using Adobe Indesign or Illustrator.
Human_RNA_EWCE_up<-read.xlsx("data/Figure1/human_RNA_EWCE.xlsx",sheet=2)
row.names(Human_RNA_EWCE_up)<-Human_RNA_EWCE_up$Cell
superheat(X=Human_RNA_EWCE_up[,-c(1)],grid.hline = FALSE, grid.vline = FALSE,heat.pal = c("#fff5eb","#fee6ce","#fdd0a2","#fdae6b","#fd8d3c","#f16913"),left.label = "none",legend = FALSE)

Human_RNA_EWCE_down<-read.xlsx("data/Figure1/human_RNA_EWCE.xlsx",sheet=3)
row.names(Human_RNA_EWCE_down)<-Human_RNA_EWCE_down$Cell
superheat(X=Human_RNA_EWCE_down[,-c(1)],grid.hline = FALSE, grid.vline = FALSE,heat.pal = c("#fff5eb","#fee6ce","#fdd0a2","#fdae6b","#fd8d3c","#f16913"),left.label = "none",legend = FALSE)






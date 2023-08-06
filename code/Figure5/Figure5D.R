library(openxlsx)
library(ggrepel)
library(ggplot2)
library(ComplexHeatmap)
library(circlize)

#hippocampus all events
human_hippo_all_events<-read.xlsx("data/Figure5/AS_all_events_heatmap.xlsx",sheet=1)
row.names(human_hippo_all_events)<-human_hippo_all_events$Gene
human_hippo_all_events_filt<-as.data.frame(human_hippo_all_events[,-c(1)])
f3 = colorRamp2(seq(min(human_hippo_all_events_filt[,-c(5)]), max(human_hippo_all_events_filt[,-c(5)]), length = 3), c("blue","#EEEEEE", "red"), space = "RGB")
Heatmap(human_hippo_all_events_filt[,-c(5)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        column_names_gp = gpar(fontsize = 12),show_row_names = FALSE,
        column_title = NULL,name = "deltaPSI",
        left_annotation = rowAnnotation(Category=human_hippo_all_events$Category,
        col = list(Category = c("Autophagy" = "#B7094C", "Axonogenesis" = "#ADC178",
        "Cell Cycle" = "#00B4D8","Cell Differentiation"="#FFD166","Cell Projection Organization"="#F8961E",
       "Chromatin Modification"="#FFADAD","Metabolic Process"="#FFD6A5","Neurogenesis"="#FDFFB6",
       "Nuclear Export"="#BDB2FF","Nuclear Transport"="#FFC6FF","Other BPs"="black",
       "Protein Localization"="#CAFFBF","Regulation of GTPase activity"="#9BF6FF",
       "RNA Splicing"="#2A9D8F","Synaptic Signaling"="#CB997E","Transport"="#6B705C"))))



#cortex all events
human_cortex_all_events<-read.xlsx("data/Figure5//AS_all_events_heatmap.xlsx",sheet=2)
row.names(human_cortex_all_events)<-human_cortex_all_events$Gene
human_cortex_all_events_filt<-as.data.frame(human_cortex_all_events[,-c(1)])
f3 = colorRamp2(seq(min(human_hippo_all_events_filt[,-c(5)]), max(human_hippo_all_events_filt[,-c(5)]), length = 3), c("blue","#EEEEEE", "red"), space = "RGB")
Heatmap(human_cortex_all_events_filt[,-c(5)], col = f3, cluster_rows = FALSE,cluster_columns = FALSE,
        column_names_gp = gpar(fontsize = 12),show_row_names = FALSE,
        column_title = NULL,name = "deltaPSI",
        left_annotation = rowAnnotation(Category=human_cortex_all_events$Category,
        col = list(Category = c("Autophagy" = "#B7094C", "Axonogenesis" = "#ADC178",
       "Cell Cycle" = "#00B4D8","Cell Differentiation"="#FFD166","Cell Projection Organization"="#F8961E",
      "Chromatin Modification"="#FFADAD","Metabolic Process"="#FFD6A5","Neurogenesis"="#FDFFB6",
       "Nuclear Export"="#BDB2FF","Nuclear Transport"="#FFC6FF","Other BPs"="black",
        "Protein Localization"="#CAFFBF","Regulation of GTPase activity"="#9BF6FF",
         "RNA Splicing"="#2A9D8F","Synaptic Signaling"="#CB997E","Transport"="#6B705C"))))

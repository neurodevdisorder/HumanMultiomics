library(ggplot2)
library(openxlsx)

DEG_DET_count<-read.xlsx("data/Figure1/DGE_DET.xlsx",sheet=1)
DEG_DET_count_plot<-ggplot(data=hippo_DEG_DET_count, aes(x=Region, y=Percentage, fill=DET_number)) +
  geom_bar(stat="identity")+scale_fill_viridis(discrete = TRUE,option="E")+
  theme(text=element_text(size=14),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())
DEG_DET_count_plot


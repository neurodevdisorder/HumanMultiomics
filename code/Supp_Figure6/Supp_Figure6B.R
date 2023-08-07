library(openxlsx)
library(ggrepel)
library(ggplot2)
install.packages("colorspace")
library("colorspace")

AD_modules_overlaps<-read.xlsx("data/Supp_Figure6/Figure_AD_modules2.xlsx",sheet = 3)
AD_modules<-ggplot(AD_modules_overlaps,aes(x=AD_modules,y=Own_modules))+
  geom_point(aes(color=FDR,size=overlaps))+theme_bw()+
  scale_color_continuous_sequential(palette = "Heat")+
  theme(text=element_text(size=14),axis.text.x = element_text(color = "black"),axis.text.y = element_text(color="black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank())

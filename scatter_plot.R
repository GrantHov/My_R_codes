
install.packages("ggplot2")
install.packages("ggrepel")
library(ggplot2)
library(ggrepel)

d<-PCA
b<-Corr
set.seed(42)
ggplot(d, aes(x=d$x, y=d$y,  label = d$Abb)) +
  geom_vline(xintercept = 0)+
  geom_hline(yintercept = 0)+
  theme(legend.title=element_blank())+
  geom_point(aes(colour = d$Reg), size=3) + 
  scale_colour_brewer(palette = "Set1")+
  geom_text_repel(label=d$Abb, size = 3, segment.color = "black",arrow = arrow(length = unit(0, 'npc')))+  
  theme(legend.position="top")+
  #theme(legend.justification=c(1,1), legend.position=c(1,1))+
  theme(panel.background = element_rect(fill = 'white', color = 'black'))+
  xlab("X") +
  ylab("Y")


ggplot(b, aes(x=b$x.1, y=b$y.1,  label = b$HG)) +
  geom_vline(xintercept = 0)+
  geom_hline(yintercept = 0)+
  geom_point(size=3) + 
  scale_colour_brewer(palette = "Dark2")+
  geom_text_repel(label=b$HG, size = 4, segment.color = "black",arrow = arrow(length = unit(0, 'npc')))+  
  theme(legend.position="top")+
  #theme(legend.justification=c(1,1), legend.position=c(1,1))+
  theme(panel.background = element_rect(fill = 'white', color = 'black'))+
  xlab("X") +
  ylab("Y")




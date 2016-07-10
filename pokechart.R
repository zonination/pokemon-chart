# Load libraries and data, set working directory
setwd("~/Dropbox/R/Pokemon")
poke <- read.csv("chart.csv",stringsAsFactors=F)
library(ggplot2)
library(reshape2)

# Gather everything into column format so that ggplot2 can parse the data
poke<-melt(poke,id.vars=c("Attacking"))
names(poke)<-c("Attacking","Defending","Result")

# Force strings inot our attack/defense values so we can label
# Normal, Super Effective, Not Effective, etc.
poke$Result<-as.character(poke$Result)

# Sort our variables into ABC order
poke$Attacking<-factor(poke$Attacking)
poke$Defending <- factor(poke$Defending, levels =
                        levels(poke$Defending)[order(levels(poke$Defending))])
poke$Attacking <- factor(poke$Attacking, levels =
                          levels(poke$Attacking)[order(levels(poke$Attacking),decreasing=T)])

# Generate a tile plot. Recommended resolution: 900x600
ggplot(poke,aes(Defending,Attacking))+
  geom_tile(aes(fill=Result),color="white")+
  # You can choose your own palette if you would like to change colors.
  # Go to colorbewer2.org to look at palette names, and pick the name
  # of one you like and change palette="NAME" below! I strongly recommend
  # ticking the "Colorblind Safe" option on colorbrewer2.org.
  scale_fill_brewer(palette="YlOrRd",
                    labels=c("No Effect","Not Very Effective",
                             "Normal","Super Effective"))+
  # Scale Below if you want to go manual. I found that it's not colorblind friendly.
  # scale_fill_manual(values=c("#d7191c","#fdae61","#ffffbf","#a6d96a"),
  #                   labels=c("No Effect","Not Effective",
  #                            "Normal","Super Effective"))+
  ylab("Attacking Move Type")+
  xlab("Defending Pokémon Type")+
  theme_bw()+
  theme(axis.text.x = element_text(angle=90, hjust=1,vjust=.5))
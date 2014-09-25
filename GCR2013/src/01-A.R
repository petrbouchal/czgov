gcrbs$sumconcerns <- gcrbs$Corruption.share.2013+gcrbs$Bureaucracy.share.2013
gcrbs$sumranks <- gcrbs$Corruption.rank.2013+gcrbs$Bureaucracy.rank.2013

plot <- ggplot(gcrbs, aes(x=Corruption.share.2013, y=Bureaucracy.share.2013)) +
  geom_point(size=3,aes(colour=GCI2013)) +
  geom_text(aes(label=Country, y=Bureaucracy.share.2013+1))
plot

plot <- ggplot(gcrbs, aes(x=GCI2013, y=sumranks)) +
  geom_point(size=5,aes(colour=GCI2013),alpha=.7) +
  geom_text(aes(label=Country, y=sumranks +.01),size=3, hjust=0) +
  scale_color_continuous(low='yellow',high='red')
plot
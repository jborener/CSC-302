load('D:/New Folder (2)/Rscripts/blue_jays.rda')
library(ggthemes)
library(ggplot2)

color_palette <- c("#91bfdb", "#d73027")

theme_set(theme_wsj())
p4 <- ggplot(data=blue_jays) + geom_point((aes(x=BillWidth, y=BillLength, color=KnownSex)))
p4 + scale_color_manual(values = color_palette) + theme(legend.title = element_text(size = rel(0.55)),
           axis.text.x = element_text(size=rel(0.85), color = "#4575b4"),
           axis.text.y = element_text(size=rel(0.85), color = "#4575b4"))


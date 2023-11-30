library(ggthemes)
library(ggrepel)
library(ggplot2)
library(socviz)
library(dichromat)
library(tibble)

cb_palette <- c("#1f78b4", "#e31a1c", "#ff7f00", "#6a3d9a", "#a6cee3", "#b2df8a", "#fb9a99")

p0 <- ggplot(data = subset(asasec, Year == 2014),
             mapping = aes(x = Members, y = Revenues, label = Sname))

p1 <- p0 + geom_smooth(method = "lm", se = FALSE, color = "gray80") +
  geom_point(mapping = aes(color = Journal)) 

p2 <- p1 + geom_text_repel(data=subset(asasec,Year == 2014 & Revenues > 7000),size = 2)

p3 <- p2 + labs(x="Membership",
                y="Revenues",
                color = "Section has own Journal",
                title = "ASA Sections",
                subtitle = "2014 Calendar year.",
                caption = "Source: ASA annual report.")
p4 <- p3 + scale_y_continuous(labels = scales::dollar) +
  theme(legend.position = "bottom") + scale_color_manual(values = cb_palette) 

p4

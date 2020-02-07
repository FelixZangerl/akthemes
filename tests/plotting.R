setwd("~/Downloads")

library(ggplot2)
library(akthemes)
#library(magick) ## image read svg
#library(rsvg)

gg <- ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point() + labs(title="Scatterplot", x="Carat", y="Price", caption = "test")+
  theme_ak() # add axis lables and plot title.
print(gg)

gg <- gg + theme_ak(logo=TRUE) + scale_color_akmany()

gg <- gg + scale_color_akmany() + theme(legend.position = "bottom", plot.caption = element_text(hjust = 0)) + labs(caption = "Quelle: EU-SILC und ECHP Erhebungen, Grenze: 60% des medianen Äquivalenzeinkommens nach Sozialleistungen ")

print(gg)

ggsave("./test.png")

plot_with_logo <- add_logo(plot_path = "./test.png", logo_path = "https://wien.arbeiterkammer.at/logo-sticky-ak_wien.svg", logo_position = "bottom right")

magick::image_write(plot_with_logo, "plot_with_logo.png")

gg + scale_color_msdark()

gg + scale_color_mslight()

gg + scale_color_mscool()

gg + scale_color_mssea()

gg + scale_color_mspastel()

gg + scale_color_brewer(palette = "RdGy") + theme(legend.position = "bottom", plot.caption = element_text(hjust = 0)) + labs(caption = "Quelle: EU-SILC und ECHP Erhebungen, Grenze: 60% des medianen Äquivalenzeinkommens nach Sozialleistungen ")



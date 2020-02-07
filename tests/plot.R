gg <- ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point() + labs(title="Scatterplot", x="Carat", y="Price")+
  theme_ak()# add axis lables and plot title.
print(gg)

gg + scale_color_msmany()

print(gg)


gg + scale_color_msdark()

gg + scale_color_mslight()

gg + scale_color_mscool()

gg + scale_color_mssea()

gg + scale_color_mspastel()

gg + scale_color_brewer(palette = "RdGy") + theme(legend.position = "bottom", plot.caption = element_text(hjust = 0)) + labs(caption = "Quelle: EU-SILC und ECHP Erhebungen, Grenze: 60% des medianen Äquivalenzeinkommens nach Sozialleistungen ")

ggsave("./tests/test.png")

add_logo(plot_path = "./tests/test.png", logo_path = "./akwien.jpg", logo_position = "bottom right")

# akthemes

A custom ggplot2 theme

## Installation

`devtools::install_github("FelixZangerl/akthemes")`

## Usage

`theme_ak()` calls the theme in a ggplot environment. The options are

`grid`  Whether grid is printed or not: `default=TRUE`  
`dark`  Switch color scheme to dark: `default=FALSE`  
`alttf` Choose alternative title font (Playfair Display, https://fonts.google.com/specimen/Playfair+Display): `default=FALSE`


### AK Logo

The default approach is to:

change caption postion to "bottom left" and legend postion to "bottom" with: 

`theme(legend.position = "bottom", plot.caption = element_text(hjust = 0)`

Save the ggplot with `ggsave(filename)`

Add the logo with `add_logo(plot_path = filename, logo_path = "./akwien.jpg", logo_position = c("top right", "top left", "bottom right", "bottom left"))`


## Color palettes

* `ms_pal`: Many colors for multiple groups
* `msd_pal`: Few dark colors for line plot
* `msl_pal`: Few light colors for barplots with labels (http://www.color-hex.com/color-palette/807)
* `msc_pal`: Cool colors for stacked barplots (http://www.color-hex.com/color-palette/14951)
* `mss_pal`: Seastar palette (http://www.color-hex.com/color-palette/62747)
* `msp_pal`: Pastel rainbow palette (http://www.color-hex.com/color-palette/2922)

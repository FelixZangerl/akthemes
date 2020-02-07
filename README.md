# akthemes

A custom ggplot2 theme for Arbeiterkammer Wien

Credits go to mschnetzer (matthias.schnetzer@akwien.at) for the template and Thomas Mock for the logo adding (https://themockup.netlify.com/posts/2019-01-09-add-a-logo-to-your-plot/) 

## Installation

`devtools::install_github("FelixZangerl/akthemes")`

## Usage

`theme_ak()` calls the theme in a ggplot environment. The options are

`grid`  Whether grid is printed or not: `default=TRUE`  
[//]: # `dark`  Switch color scheme to dark: `default=FALSE`  
[//]: # `alttf` Choose alternative title font (Playfair Display, https://fonts.google.com/specimen/Playfair+Display): `default=FALSE`


### AK Logo

The default approach is to:

change caption postion to "bottom left" and legend postion to "bottom" with: 

`theme(legend.position = "bottom", plot.caption = element_text(hjust = 0)`

Save the ggplot with `ggsave(filename)`

Add the logo with: `plot_with_logo <- add_logo(plot_path = filename, logo_path = "./akwien.jpg", logo_position = c("top right", "top left", "bottom right", "bottom left"))`

Save the plot with: `magick::image_write(plot_with_logo, "plot_with_logo.png")`


## Color palettes

* `ak_pal`: Few colors for multiple groups


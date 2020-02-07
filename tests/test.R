############################### NR 2 ######## see logo.r for function

## Source: https://themockup.netlify.com/posts/2019-01-09-add-a-logo-to-your-plot/
# Load the library
library(magick)

# "read" in an image
dog <- image_read("/home/felix/Pictures/sellner.jpg")

image_info(dog)

print(dog)

dog %>%
  image_rotate(30) %>% # rotate 30 degrees
  image_resize("400x400") %>%  # change size to 400 x 400 pixels
  image_flop() # flip the image horizontally

bird <- image_read("https://user-images.githubusercontent.com/29187501/38769895-edae85d0-3fcf-11e8-95f9-bbd530b32771.png") %>%
  image_resize("150x150")

image_composite(dog, bird)

dog %>%
  image_composite(bird, offset = "+500+1000")


library(tidyverse)

m <- mtcars %>%
  ggplot(aes(x = cyl, y = mpg)) +
  geom_point() +
  theme(plot.margin = unit(c(0.5, 0.5, 2.5, 0.5), "lines"),
        plot.background = element_rect("lightgrey"))

pub_plot <- image_read("https://raw.githubusercontent.com/jthomasmock/tomtom/master/vignettes/basic_plot.png")

logo <- image_read("https://www.rstudio.com/wp-content/uploads/2018/10/RStudio-Logo-Flat.png") %>%
  image_resize(300)

print(pub_plot)
print(logo)

# get dims of the plot
plot_height <- magick::image_info(pub_plot)$height
plot_width <- magick::image_info(pub_plot)$width

# get dims of the logo
logo_width <- magick::image_info(logo)$width
logo_height <- magick::image_info(logo)$height

# get number of pixels to be 1% from the bottom of the plot
# while accounting for the logo height
plot_height - logo_height - plot_height * 0.01

# get number of pixels to be 1% from the left of the plot
plot_width * 0.01

pub_plot %>%
  image_composite(logo, offset = "+22+1826")

############### NR 2 #####################

library(ggplot2)
library(magick)
library(here) # For making the script run without a wd
library(magrittr) # For piping the logo

# Make a simple plot and save it
ggplot(mpg, aes(displ, hwy, colour = class)) +
  geom_point() +
  ggtitle("Cars") +
  ggsave(filename = paste0(here("/"), last_plot()$labels$title, ".png"),
         width = 5, height = 4, dpi = 300)

# Call back the plot
plot <- image_read(paste0(here("/"), "Cars.png"))
# And bring in a logo
logo_raw <- image_read("http://hexb.in/hexagons/ggplot2.png")

# Scale down the logo and give it a border and annotation
# This is the cool part because you can do a lot to the image/logo before adding it
logo <- logo_raw %>%
  image_scale("100") %>%
  image_background("grey", flatten = TRUE) %>%
  image_border("grey", "600x10") %>%
  image_annotate("Powered By R", color = "white", size = 30,
                 location = "+10+50", gravity = "northeast")

# Stack them on top of each other
final_plot <- image_append(image_scale(c(plot, logo), "500"), stack = TRUE)
# And overwrite the plot without a logo
image_write(final_plot, paste0(here("/"), last_plot()$labels$title, ".png"))

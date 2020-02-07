# Few colors (e.g. for multiple groups)
ak_palette <- c("#D8232A", "#000000", "#595959", "#595959", "#808080", "#D9D9D9")
ak_pal <- function() { scales::manual_pal(ak_palette) }
scale_color_akfew <- function(...) { discrete_scale("colour", "akfew", ak_pal(), ...) }
scale_fill_akfew <- function(...) { discrete_scale("fill", "akfew", ak_pal(), ...) }

akc_palette <- c("#D8232A", "#000000", "#4C4C4C", "#009900", "#FFC000", "#FFFFFF")
akc_pal <- function() { scales::manual_pal(akc_palette) }
scale_color_akcountry <- function(...) { discrete_scale("colour", "akcountry", akc_pal(), ...) }
scale_fill_akcountry <- function(...) { discrete_scale("fill", "akcountry", akc_pal(), ...) }

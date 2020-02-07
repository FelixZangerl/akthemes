# Few colors (e.g. for multiple groups)
ak_palette <- c("#D8232A", "#000000", "#595959", "#595959", "#FFFFFF", "#D9D9D9")
ak_pal <- function() { scales::manual_pal(ak_palette) }
scale_color_akmany <- function(...) { discrete_scale("colour", "akmany", ak_pal(), ...) }
scale_fill_akmany <- function(...) { discrete_scale("fill", "akmany", ak_pal(), ...) }

# Few dark (e.g. for line plots)
msd_palette <- c("#d18975","#088A85","#0B0B61","#886A08")
msd_pal <- function() { scales::manual_pal(msd_palette) }
scale_color_msdark <- function(...) { discrete_scale("colour", "msdark", msd_pal(), ...) }
scale_fill_msdark <- function(...) { discrete_scale("fill", "msdark", msd_pal(), ...) }

# Few light (e.g. for bar plots with labels)
msl_palette <- c("#ee4035","#f37736","#fdf498","#7bc043","#0392cf")
msl_pal <- function() { scales::manual_pal(msl_palette) }
scale_color_mslight <- function(...) { discrete_scale("colour", "mslight", msl_pal(), ...) }
scale_fill_mslight <- function(...) { discrete_scale("fill", "mslight", msl_pal(), ...) }

# Cool palette (e.g. for bar plots)
msc_palette <- c("#d03161","#ee8080","#bfd8d1","#178a94","#2b374b")
msc_pal <- function() { scales::manual_pal(msc_palette) }
scale_color_mscool <- function(...) { discrete_scale("colour", "mscool", msc_pal(), ...) }
scale_fill_mscool <- function(...) { discrete_scale("fill", "mscool", msc_pal(), ...) }

# Seastar palette
mss_palette <- c("#ea8e71","#cecbb4","#8badaa","#5d8198","#515365")
mss_pal <- function() { scales::manual_pal(mss_palette) }
scale_color_mssea <- function(...) { discrete_scale("colour", "mssea", mss_pal(), ...) }
scale_fill_mssea <- function(...) { discrete_scale("fill", "mssea", mss_pal(), ...) }

# Pastel rainbow palette
msp_palette <- c("#ff8b94","#ffaaa5","#ffd3b6","#dcedc1","#a8e6cf","cadetblue4")
msp_pal <- function() { scales::manual_pal(msp_palette) }
scale_color_mspastel <- function(...) { discrete_scale("colour", "mspastel", msp_pal(), ...) }
scale_fill_mspastel <- function(...) { discrete_scale("fill", "mspastel", msp_pal(), ...) }


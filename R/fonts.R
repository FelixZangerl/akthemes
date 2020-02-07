#' Import IBM Plex Sans font
#'
#' TTF should be placed in the fonts/plexsans folder
#' @export
import_af <- function() {
  af_font_dir <- system.file("fonts", "Arial",package="akthemes")
  suppressWarnings(suppressMessages(extrafont::font_import(af_font_dir, prompt=FALSE)))
}

#' Import Minion Bold font
#'
#' TTF should be placed in the fonts/minion folder
#' @export
import_mb <- function() {
  mb_font_dir <- system.file("fonts", "minion",package="akthemes")
  suppressWarnings(suppressMessages(extrafont::font_import(mb_font_dir, prompt=FALSE)))
}

#' Import Playfair font
#'
#' TTF should be placed in the fonts/minion folder
#' @export
import_pf <- function() {
  pf_font_dir <- system.file("fonts", "playfair",package="akthemes")
  suppressWarnings(suppressMessages(extrafont::font_import(pf_font_dir, prompt=FALSE)))
}

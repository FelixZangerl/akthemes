#' Personal theme for ggplot2
#'
#' This theme relies on the IBM Plex Sans font which should be installed in advance.
#' For convenience, run import_ps() to install font.
#'
#' @param
#' grid Whether grid is printed or not, default=TRUE
#' dark Switch color scheme to dark, default=FALSE
#' alttf Choose alternative title font (Playfair Display)
#' @export
#' @examples
#'

theme_ak <- function (
  base_family="Arial", base_size=12,
  grid=TRUE,
  dark=FALSE,
  alttf=FALSE
)

{
  akt <- theme_bw(base_family=base_family, base_size=base_size) %+replace%
    theme(
      plot.title = element_text(hjust=0, size = 18),
      plot.subtitle = element_text(hjust=0, size=12, margin=margin(8,0,5,0)),
      plot.caption = element_text(hjust=1,size = 7),
      axis.ticks = element_blank(),
      legend.background = element_blank(),
      legend.title=element_text(size=10),
      legend.key = element_blank(),
      legend.text=element_text(size=9),
      panel.background = element_blank(),
      panel.border = element_blank(),
      strip.background = element_blank(),
      strip.text=element_text(hjust=0),
      plot.background = element_blank(),
      complete = TRUE
      )

  bgdark <- "#464950"

  # GRID
  if (grid == TRUE) {
    akt <- akt + theme(panel.grid.major=element_line(size=0.2),panel.grid.minor=element_blank())
  } else {
    akt <- akt + theme(panel.grid=element_blank())
  }

  # SCHEME
  if (dark == TRUE) {
    akt <- akt +
      theme(plot.background=element_rect(fill=bgdark,color=bgdark),
            text=element_text(color="white"),
            strip.text=element_text(color="white"),
            axis.text = element_text(color="white"),
            legend.text = element_text(color="white")
            )
  } else {
    akt <- akt
  }

  # ALTERNATIVE TITLE FONT
  if (alttf == TRUE) {
    akt <- akt + theme(plot.title = element_text(family="Playfair Display"))
  } else {
    akt <- akt + theme(plot.title = element_text(family="MinionPro-BoldCapt",face="bold"))
  }
  akt
}

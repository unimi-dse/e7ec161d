# Runs the shiny app
#' @title Shiny app function.
#' @description This function runs the shiny app to display the analysis.
#' @return Shiny app with the happiness data analysis and plots.
#' @import ggplot2
#' @examples call_shiny()
#' @export
  call_shiny <- function(){

    loc_happy <- system.file("happy3", package = "BsuPkg")
      if (loc_happy == "") {
    stop(" BsuPkg was not found. Please reinstall `BsuPkg`.", call. = FALSE)
    }

  shiny::runApp(loc_happy, display.mode = "normal", launch.browser = T)

}


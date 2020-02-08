#' Reading data
#'
#' Reading the happiness data and storing it into maindata variable.
#'
#' @example
#' readingdata()
#'
#' @export

readingdata <- function(){
  path <- system.file(package = 'BsuPkg',mustWork = TRUE,"extdata","happinessdata2019.csv")
  maindata <- read.csv(path)
  usethis::use_data(maindata)
}

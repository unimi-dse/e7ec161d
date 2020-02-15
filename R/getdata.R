# Imports the data to be analyzed into a Dataframe (DF)
#' @title Import Happiness report 2019 Data
#' @description This function reads the data from a csv-file and returns it as a DataFrame-object.
#' @example  get_data()
#' @export
  get_data <- function() {


    hap_data<- read.csv(system.file("extdata", "happinessreport2019.csv", package="BsuPkg"))
     #since there is no missing data I can directly use it without handling for na values.

     colnames(hap_data)<- c("rank","country","score","gdp","social","lifexp","freedom","generosity","corruption")

     # usethis::use_data(hap_data, overwrite = TRUE)

    return(hap_data)
}

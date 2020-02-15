#Visualisation of data
#'@title Visualisation of country with its corresponding happiness score.
#'@description This function will create a color coded world map of happiness score,with red being the happiest and purple the least happy countries, using the rworldmap package.
#'@export

map_happiness <- function(){
        library(rworldmap)
        df <- BsuPkg::hap_data
        colnames(df)<- c("rank","country","score","gdp","social","lifexp","freedom","generosity","corruption")

        n <- joinCountryData2Map(df,joinCode="NAME",nameJoinColumn="country")

        mapCountryData(n, nameColumnToPlot="score",mapTitle="Happiness score across countries",oceanCol='lightblue', colourPalette='rainbow')

}

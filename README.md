

### World Happiness report 2019 Analysis. 

Package Name             | Author                                                                 |Github Repo
---------------------|-----------------------------------------------------------------------------|------------------------
BsuPkg        | Debanjali Basu                          | [e7ec161d](https://github.com/unimi-dse/e7ec161d)

***********************************************************************************************

#### Introduction

The World Happiness Report is a landmark survey of the state of global happiness. The reports review the state of happiness in the world today and show how the new science of happiness explains personal and national variations in happiness.

Here, in this project I regressed the Happiness score on the Social and Economic variables available in the dataset.The purpose of the analysis is to determine the relationships between the happiness of a nation and its social and economic factors.


#### Installation

```R
# Please install the R package "devtools" if not installed then use the following command:
devtools::install_github('unimi-dse/e7ec161d')
```

#### Loading the package

```R
# load the package
require(BsuPkg)
```

#### Functions

* __get_data( )__ - *This function imports the happiness index data of all countries  from a csv file and imports it into a dataframe.*

* __map_happiness( )__ - *This function plot the happiness analysis data and shows the happiness score in a color coded worldmap, using the package rworldmap *

* __call_shiny( )__ - *This function calls the shiny app  which diplayes the following:*
  * A dashboard showing a color coded world map of happiness scores
  * A histogram dashboard for all the variables
  * An interactive scatterplot of all the variables.
  * A detailed analysis of the data with 2 tabs, showing summary results and Regression Analysis.
  * All the data used for the analysis with provision to print and download the data.

__Note: You can call the functions individually, or you can directly run the shiny app to view the entire analysis__

**********************************************************************************************

#### About the author:

Name             |        Desc.                                                           |Linked.in
---------------------|-----------------------------------------------------------------------------|------------------------
Debanjali Basu      | MSc. Data Science Student at University of Milan,Italy                         | [Profile link](https://www.linkedin.com/in/debanjali-basu-96a6644b/)

######   Dated:Feb 15,2020

************************************************************************************************


        
        






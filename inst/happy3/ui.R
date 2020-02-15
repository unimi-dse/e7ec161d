library(shiny)
library(shinydashboard)
library(ggplot2)

df <- BsuPkg::hap_data
shinyUI(
     dashboardPage(
            title='Happiness Analysis',
            dashboardHeader(title = "Happiness Data Report 2019 Analysis",titleWidth = 450),
            dashboardSidebar(
                sidebarMenu(
                menuItem("Dashboard",tabName = "Dashboard",icon = icon("dashboard")),
                 menuSubItem("Histogram",tabName = "histogram",icon = icon("list-alt")),
                 menuSubItem("Graphs",tabName = "graph",icon = icon("bar-chart")),

                menuItem("Detailed Analysis",tabName = "analysis",icon = icon("percent")),
                menuItem("Raw Data",tabName = "data",icon = icon("table")),
                menuItem("Conclusions",tabName = "conc",icon = icon("check"))
                            ) ),
            dashboardBody(
                tabItems(
                    tabItem(tabName = "Dashboard",
                            fluidRow(
                                plotOutput("map")),
                                textOutput("tex")
                            ),
                    tabItem(tabName = "histogram",h3("Histogram Dashboard"),
                            fluidRow(
                                box(plotOutput("histscore")),
                                box(plotOutput("histgdp")),
                                box(plotOutput("histss")),
                                box(plotOutput("hislife")),
                                box(plotOutput("free")),
                                box(plotOutput("gen")),
                                box(plotOutput("cor"))
                            )
                            ),

                    tabItem(tabName = "graph",h3("Scatterplots"),
                            fluidRow(
                                selectInput("y","select the y-axis variable",choices = c("Happiness Score"="score",
                                                                                         "GDP"="gdp",
                                                                                         "Social score"="social",
                                                                                         "Life Expectancy"="lifexp",
                                                                                         "Freedom"="freedom",
                                                                                         "Generosity"="generosity",
                                                                                         "Corruption"="corruption")),

                               selectInput("x","Select X-axis variable",choices = c("GDP"="gdp",
                                                                                    "Happiness Score"="score",
                                                                                    "Social score"="social",
                                                                                    "Life Expectancy"="lifexp",
                                                                                    "Freedom"="freedom",
                                                                                    "Generosity"="generosity",
                                                                                    "Corruption"="corruption")),
                                plotOutput("gplot")
                            )
                        ),
                    tabItem(tabName = "analysis",tabsetPanel(type="tab",
                                                             tabPanel("Summary",verbatimTextOutput("summ")),
                                                             tabPanel("Regression Analysis",verbatimTextOutput("reg"))
                                                            ) ),

                    tabItem(tabName = "data",h3("View/Download Data"),
                            fluidRow(
                                DT::dataTableOutput("table")
                            )),
                    tabItem(tabName = "conc",h3("Main Conclusions of the Analysis"),hr(),
                            p("The World Happiness Report is a landmark survey of the state of global happiness.
                              The reports review the state of happiness in the world today and show how the new science
                              of happiness explains personal and national variations in happiness." ),
                            p("Here, in this project I regressed the Happiness score on the Social and Economic
                              variables available in the dataset.The purpose of the analysis is to determine the
                              relationships between the happiness of a nation and its social and economic factors."),
                            p("The main findings from the analysis are listed below :"),
                            tags$br(),
                            tags$li("From the scatter plots we can see Happiness has a positive relationship with
                                    GDP,Social Services provided in the country,Life Expectancy and Freedom perceptions of the
                                    citizens.But it is difficult to draw a clear relationship from generosity and corruption."),
                            tags$li("From the regression analysis we can see that the variables generosity and corruption are not
                                    significant since their p-value > 0.05 ."),
                            tags$li("Freedom of choice in a country seems to have a very significant role in the well-being of a country."),
                            hr(),
                            h4("About Me"),

                            p("Debanjali Basu,MSc Data Science and Economics,University of Milan"),
                            br()


                            )
            )

        )

    )
)




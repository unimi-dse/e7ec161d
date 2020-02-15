#server details.
df <- BsuPkg::hap_data
shinyServer(function(input,output){
    output$map <- renderPlot({

        map_happiness()

        #n <- rworldmap::joinCountryData2Map(df,joinCode="NAME",nameJoinColumn="country")

        #rworldmap::mapCountryData(n, nameColumnToPlot="score",mapTitle="Happiness Score across Countries",oceanCol='lightblue', colourPalette='rainbow')
    })

    output$tex <- renderText("Finland is the happiest country,whereas South Sudan is the least happy country.The countries in red such as Nordics,USA,Canada are the more happier countries
                             whereas countries in purple are the least happy,such as some parts of Africa.")

    output$histscore <- renderPlot({
        hist(df$score,main= paste("Histogram of Happiness Score"),xlab = "Score",col = "orange")
    })

    output$histgdp <- renderPlot({
        hist(df$gdp,main= paste("Histogram of GDP"),xlab = "GDP",col = "dark green")
    })

    output$histss <- renderPlot({
        hist(df$social,main= paste("Histogram of Social Service"),xlab = "Social Service",col = "pink")
    })

    output$hislife <- renderPlot({
        hist(df$lifexp,main= paste("Histogram of Life Expectancy"),xlab = "Life Expectancy",col = "blue")
    })

    output$free <- renderPlot({
        hist(df$freedom,main= paste("Histogram of Freedom"),xlab = "Freedom",col = "light blue")
    })

    output$gen <- renderPlot({
        hist(df$generosity,main= paste("Histogram of Generosity"),xlab = "generosity",col = "light pink")
    })

    output$cor <- renderPlot({
        hist(df$corruption,main= paste("Histogram of Corruption"),xlab = "Corruption",col = "purple")
    })

    output$gplot <- renderPlot({

         plot(df[,input$x], df[,input$y], main="Scatterplot ",xlab = input$x,ylab = input$y,
             frame=FALSE,pch=19,col="red")
        lines(lowess(df[,input$x], df[,input$y]), col = "blue")


    })

    output$summ <- renderPrint({
        summary(df)
    })

    output$reg <- renderPrint({
        fit <- lm(df$score ~ df$gdp + df$lifexp + df$social + df$freedom + df$generosity + df$corruption, data=df)
        summary(fit)

    })

    output$table <- DT::renderDataTable(
        df,extensions = 'Buttons', options = list(dom='Bfrtip',buttons = list('pdf','csv','print'))
    )

})

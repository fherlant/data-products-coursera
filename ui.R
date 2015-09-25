library(shinythemes)

shinyUI(fluidPage(theme=shinytheme("journal"),
	h3('Coursera Project - GBM with Iris'),
	fluidRow(
	    column(4,
	           uiOutput("showMapPlot"),
	           wellPanel(
	               fluidRow(
	                   column(6, selectInput("dat.name","Data:",choices="iris",selected="iris")),
	                   column(6, selectInput("label","Label:",choices="Species",selected="Species")),
	                   column(6, uiOutput("vars"))
	               )
	           ),
	           wellPanel(
	               h5("GBM meta-parameters"),
	               uiOutput("n.trees"),
	               fluidRow(column(6, uiOutput("interaction.depth")), column(6, uiOutput("shrinkage"))),
	               fluidRow(column(6, uiOutput("train.fraction")), column(6, uiOutput("bag.fraction"))),
	               fluidRow(column(6, uiOutput("cv.folds")), column(6, uiOutput("n.minobsinnode"))),
	               actionButton("goButton", "Build Model", class="btn-block btn-primary")
	           )
	    ),
	    column(8,
	           tabsetPanel(
	               tabPanel("Relative Influence", plotOutput("PlotRI", width="100%", height="auto"), 
	                        dataTableOutput("RITable"),
	                        value="ri"),
	               tabPanel("Learning Curves", plotOutput("PlotBestIter", width="100%", height="auto"), dataTableOutput("BestIterTable"), value="error"),
	               tabPanel("About",
	                        HTML('
	                             <p style="text-align:justify">This R Shiny web app was built for the Coursera Data Products class project. It allows the user to perform stochastic gradient boosting on the iris dataset using the R gbm package, and observe the relative influence of the different variables, as well as plotting learning curves.</p>
	                             <p>Due to time constraints, the features are limited, but feel free to play with the parameters. <b>To start, click on the button "Build Model" and explore the two other tabs.</b></p>
	                             
	                             <p>For more details on GBM:</p>
	                             <ul>
	                             <li> <a href="https://cran.r-project.org/web/packages/gbm/gbm.pdf">R Package "gbm"</a> </li>
	                             <li> <a href="https://en.wikipedia.org/wiki/Gradient_boosting">Gradient boosting (Wikipedia)</a> </li>
	                             </ul> '),
	                        value="about"),
	               type="pills",
	               id="tsp"
	           )
	    )
	)
))

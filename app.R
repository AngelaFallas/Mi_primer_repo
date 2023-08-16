library(shiny)

ui <- fluidPage (
  titlePanel("Mi Aplicación Shiny"),
  
  sidebarLayout (
    position = "right",
    sidebarPanel( 
      h1("Instrucciones",width = 5),
      br(),
      p ("Shiny está disponible en CRAN, por lo que puedes instalarlo de la manera habitaul desde tu consola R:"),
      br(),
      code ('install.packages("shiny")'),
      br(),
      br(),
      br(),
      img(src = "rstudio.png", height = 70, width = 200),
      p ("Shiny es un producto de", span("RStudio", style = "color:blue"))
    ),
    mainPanel("Este es el panel principal", width = 10)
  )
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)
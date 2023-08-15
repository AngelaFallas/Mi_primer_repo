library(shiny)

ui <- fluidPage(
  titlePanel("Planificador de Eventos"),
  sidebarLayout(
    sidebarPanel( 
      width = 4,
      br(),
      textInput(inputId = "nombre_evento",
                   label = "Nombre del Evento:"),
      br(),
      selectInput(inputId = "tema_evento",
                  label = "Tema del Evento:", 
                  choices = c("Boda", "Fiesta de cumpleaños", "Conferencia", "Otro")),
      br(),
      numericInput(inputId = "numero_invitados", 
                   label = h3("Número de Invitados"), 
                   value = 0,
                   min = 25,
                   max = 120),
      br(),
      selectInput(inputId = "provincia",
                  label = "Provincia:", 
                  choices = c("San José", "Cartago", "Alajuela", "Heredia", "Guanacaste", "Puntarenas", "Limón")),
      mainPanel(
        h1("Vamos a planificar un día especial!")
        
      )
    )
  )
)
server <- function(input, output, session){
}

shinyApp(ui, server)
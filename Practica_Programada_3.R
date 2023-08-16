library(shiny)

ui <- fluidPage(
  titlePanel("Planificador de Eventos"),
  
  sidebarLayout(
    sidebarPanel( 
      width = 4,
      br(),
      textInput(inputId = "nombre_evento",
                label = "Nombre del Evento:",
                placeholder = "Ej: Boda de Angela y Pablo"),
      br(),
      selectInput(inputId = "tema_evento",
                  label = "Tema del Evento:", 
                  choices = c("Boda", "Fiesta de cumpleaños", "Conferencia", "Otro")),
      br(),
      numericInput(inputId = "numero_invitados", 
                   label = "Número de Invitados", 
                   value = 30,
                   min = 25,
                   max = 120),
      br(),
      selectInput(inputId = "provincia",
                  label = "Provincia:", 
                  choices = c("San José", "Cartago", "Alajuela", "Heredia", "Guanacaste", "Puntarenas", "Limón"))
    ),
    mainPanel(
      h1(strong("Vamos a planificar un día especial!"), align = "center",style = "color:blue"),
      tags$hr(style="border-color: blue;"),
      h2(strong ("Detalles del evento:"), width = 7),
      textOutput("nombre_evento"),
      hr(),
      textOutput("tema_evento"),
      hr(),
      textOutput("numero_invitados_ubicacion")
      )
    )
  )
server <- function(input, output) {
  
  output$nombre_evento <- renderText(paste0("Nombre del evento: ", input$nombre_evento))
  output$tema_evento <- renderText(paste0("Tema del evento: ", input$tema_evento))
  output$numero_invitados_ubicacion <- renderText(paste0("Número de invitados y ubucación: El evento ", input$tema_evento, " tendrá ", 
                                                         input$numero_invitados, " invitados y será llevado a cabo en ",
                                                         input$provincia, "."))
  
}


shinyApp(ui, server)
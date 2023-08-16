library(shiny)

ui <- fluidPage(
  titlePanel("Recolectar datos"),
  
  sidebarLayout(
    sidebarPanel( 
      width = 4,
      p("Le damos la bienvenida al recolector de datos del CETAV Por favor, siga las instrucciones y rellene los campos solicitados.", 
        style = "font-size: 20px"),
      br(),
      h4(textInput(inputId = "nombre_persona",
                label = "Ingrese su nombre")),
      br(),
      img(src = "imagen.png", width = "100%"),
     ),
    mainPanel(
      width = 7,
      selectInput(inputId = "provincia_id",
                  label = h3("Seleccione la provincia en que vive:"), 
                  choices = c("San José", "Alajuela", "Cartago", "Heredia", "Puntarenas", "Guanacaste", "Limón"),
                  multiple = FALSE,
                  width = "45%"
      ),
      numericInput(inputId = "edad", 
                   label = h3("Ingrese su edad"), 
                   value = 18,
                   min = 15,
                   max = 120,
                   width = "45%"
      ),
    )
  )
)


server <- function(input, output, session) #siempre tiene 3 argumentos 
{
  
}

shinyApp(ui, server) # siempre se escribe al final
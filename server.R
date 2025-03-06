# server.R
source("global.R")

server <- function(input, output, session) {
  
  # Reactive dataset based on selection
  selected_data <- reactive({
    datasets[[input$dataset]]
  })
  
  # Render dataset as a DataTable
  output$dataTable <- renderDT({
    datatable(selected_data(), options = list(pageLength = 10))
  })
}

# server.R
source("global.R")

#Logic Modules:
source("modules/dataset_logic.R")
source("modules/clustering_logic.R")
source("modules/enrichment_analysis_logic.R")
source("modules/genome_browser_logic.R")

#Data Analysis Page Modules:
source("modules/data_analysis/data_analysis_logic.R")
source("modules/data_analysis/histogram_logic.R")
source("modules/data_analysis/scatter_logic.R")
source("modules/data_analysis/heatmap_logic.R")
source("modules/data_analysis/boxplot_logic.R")
source("modules/data_analysis/correlation_logic.R")

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

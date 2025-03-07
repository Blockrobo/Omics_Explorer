enrichment_analysis_UI <- function(id) {
  ns <- NS(id)
  tabPanel("Enrichment Analysis",
           fluidPage(
             titlePanel("Enrichment Analysis"),
             sidebarLayout(
               sidebarPanel(
                 selectInput(ns("enrichment_dataset"), "Select Dataset:", choices = names(datasets)),
                 selectInput(ns("analysis_type"), "Analysis Type:", 
                             choices = c("GO Analysis", "Pathway Analysis", "Gene Set Enrichment")),
                 actionButton(ns("run_enrichment"), "Run Analysis", class = "btn-primary")
               ),
               mainPanel(
                 h3("Enrichment Results"),
                 plotOutput(ns("enrichment_plot"))
               )
             )
           )
  )
}

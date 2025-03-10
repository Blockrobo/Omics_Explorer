enrichment_analysis_UI <- function(id) {
  tabPanel("Enrichment Analysis",
           fluidPage(
             titlePanel("Enrichment Analysis"),
             sidebarLayout(
               sidebarPanel(
                 selectInput("enrichment_dataset", "Select Dataset:", choices = names(datasets)),
                 selectInput("analysis_type", "Analysis Type:", 
                             choices = c("GO Analysis", "Pathway Analysis", "Gene Set Enrichment")),
                 actionButton("run_enrichment", "Run Analysis", class = "btn-primary")
               ),
               mainPanel(
                 h3("Enrichment Results"),
                 plotOutput("enrichment_plot")
               )
             )
           )
  )
}

genome_browser_UI <- function(id) {
  ns <- NS(id)
  tabPanel("Genome Browser",
           fluidPage(
             titlePanel("Interactive Genome Browser"),
             sidebarLayout(
               sidebarPanel(
                 selectInput(ns("genome_dataset"), "Select Dataset:", choices = names(datasets)),
                 textInput(ns("gene"), "Enter Gene Name:", ""),
                 actionButton(ns("view_gene"), "View Gene", class = "btn-primary")
               ),
               mainPanel(
                 h3("Genome Visualization"),
                 plotOutput(ns("genome_plot"))
               )
             )
           )
  )
}

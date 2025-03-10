genome_browser_UI <- function(id) {
  tabPanel("Genome Browser",
           fluidPage(
             titlePanel("Interactive Genome Browser"),
             sidebarLayout(
               sidebarPanel(
                 selectInput("genome_dataset", "Select Dataset:", choices = names(datasets)),
                 textInput("gene", "Enter Gene Name:", ""),
                 actionButton("view_gene", "View Gene", class = "btn-primary")
               ),
               mainPanel(
                 h3("Genome Visualization"),
                 plotOutput("genome_plot")
               )
             )
           )
  )
}

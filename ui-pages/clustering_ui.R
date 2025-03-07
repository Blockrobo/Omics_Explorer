clustering_UI <- function(id) {
  ns <- NS(id)
  tabPanel("Clustering",
           fluidPage(
             titlePanel("Cluster Genes"),
             
             sidebarLayout(
               sidebarPanel(
                 selectInput(ns("clustering_dataset"), "Select Dataset:", choices = names(datasets)),
                 selectInput(ns("clustering_genes"), "Select Genes:", choices = NULL, multiple = TRUE),
                 selectInput(ns("clustering_method"), "Clustering Method:", 
                             choices = c("K-means", "Hierarchical", "DBSCAN")),
                 actionButton(ns("run_clustering"), "Run Clustering", class = "btn-primary")
               ),
               mainPanel(
                 plotOutput(ns("clustering_plot"))
               )
             )
           )
  )
}

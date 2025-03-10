clustering_UI <- function(id) {
  tabPanel("Clustering",
           fluidPage(
             titlePanel("Cluster Genes"),
             
             sidebarLayout(
               sidebarPanel(
                 selectInput("clustering_dataset", "Select Dataset:", choices = names(datasets)),
                 selectInput("clustering_genes", "Select Genes:", choices = NULL, multiple = TRUE),
                 selectInput("clustering_method", "Clustering Method:", 
                             choices = c("K-means", "Hierarchical", "DBSCAN")),
                 actionButton("run_clustering", "Run Clustering", class = "btn-primary")
               ),
               mainPanel(
                 plotOutput("clustering_plot")
               )
             )
           )
  )
}

home_UI <- function(id) {
  tabPanel("Home",
           fluidPage(
             fluidRow(
               column(8,
                      titlePanel("Welcome to Omics Explorer"),
                      
                      p("Follow these three simple steps to explore and analyze your datasets:"),
                      tags$br(),
                      
                      h4("1️⃣ Define Your Working Dataset"),
                      p("Start by selecting and combining datasets from the available options."),
                      p("You can add or remove datasets to create a custom working dataset for analysis."),
                      tags$br(),
                      
                      h4("2️⃣ Perform Clustering"),
                      p("Cluster your selected genes using various clustering methods such as K-means, Hierarchical Clustering, or DBSCAN."),
                      p("This helps in identifying patterns and groupings within your data."),
                      tags$br(),
                      
                      h4("3️⃣ Start Exploring"),
                      p("Use powerful analytical tools to extract insights from your data:"),
                      tags$ul(
                        tags$li(tags$b("📊 Data Analysis"), " – Generate histograms, scatter plots, and more."),
                        tags$li(tags$b("🧬 Enrichment Analysis"), " – Identify biological pathways and functional associations."),
                        tags$li(tags$b("🔬 Genome Browser"), " – Visualize genomic data in an interactive viewer.")
                      ),
                      tags$br(),
                      p("Get started by selecting your dataset from the ", tags$b("'Dataset'"), " menu in the navigation bar!")
               ),
               column(3, align = "right",
                      tags$img(src = "video-dna-vertical-unscreen.gif", 
                               width = "100%", 
                               style = "max-width: 600px; margin-top: 30px;")
               )
             )
           )
  )
}

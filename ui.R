source("global.R")

ui <- navbarPage(
  title = div(
    tags$img(src = "logo.png", height = "40px", style = "margin-right:10px;"),
    "Omics Explorer"
  ),
  theme = shinytheme("paper"),
  
  # Home Tab
  tabPanel("Home",
           fluidPage(
             fluidRow(
               column(8,
                      titlePanel("Welcome to Omics Explorer"),
                      p("This web application allows you to analyze multi-omics datasets, visualize key insights, and explore biological relationships."),
                      p("You can:"),
                      tags$ul(
                        tags$li("View dataset summaries"),
                        tags$li("Perform enrichment analysis"),
                        tags$li("Conduct data-driven exploration"),
                        tags$li("Visualize data with an interactive genome browser")
                      )
               ),
               column(3, align = "right",
                      tags$img(src = "video-dna-vertical-unscreen.gif", 
                               width = "100%", 
                               style = "max-width: 600px; margin-top: 30px;")
               )
             )
           )
  ),
  
  
  
  # Dropdown Menu for Dataset Management
  navbarMenu("Dataset",
             
             # Dataset Overview Subtab
             tabPanel("Dataset Overview",
                      fluidPage(
                        titlePanel("Dataset Overview"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("dataset", "Select Dataset:", choices = names(datasets)),
                          ),
                          mainPanel(
                            h3("Selected Dataset Preview"),
                            DTOutput("dataTable")
                          )
                        )
                      )
             ),
             
             # Working Dataset Subtab
             tabPanel("Working Dataset",
                      fluidPage(
                        titlePanel("Working Dataset Management"),
                        
                        sidebarLayout(
                          sidebarPanel(
                            h4("Add/Remove Datasets"),
                            selectInput("select_dataset", "Choose Dataset to Add:", 
                                        choices = names(datasets), multiple = FALSE),
                            actionButton("add_dataset", "➕ Add to Working Dataset", class = "btn-success"),
                            br(), br(),
                            
                            h4("Current Working Dataset"),
                            uiOutput("working_dataset_list"),
                            actionButton("remove_dataset", "❌ Remove Selected Dataset", class = "btn-danger"),
                            br(), br(),
                            
                            h4("Download Working Dataset"),
                            downloadButton("download_dataset", "💾 Download", class = "btn-primary")
                          ),
                          
                          mainPanel(
                            h3("Working Dataset Preview"),
                            DTOutput("working_dataset_table")
                          )
                        )
                      )
             )
  ),
  
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
  ),
  
  # Enrichment Analysis Tab
  tabPanel("Enrichment Analysis", h3("Enrichment Analysis")),
  
  # Data Analysis Tab
  tabPanel("Data Analysis",
           fluidPage(
             titlePanel("Choose a Data Analysis Type"),
             
             fluidRow(
               column(3, actionButton("go_histogram", "📊 Histogram", class = "btn-analysis")),
               column(3, actionButton("go_scatter", "🔴 Scatter Plot", class = "btn-analysis")),
               column(3, actionButton("go_boxplot", "📦 Boxplot", class = "btn-analysis")),
               column(3, actionButton("go_correlation", "📈 Correlation Matrix", class = "btn-analysis"))
             ),
             
             fluidRow(
               column(3, actionButton("go_qc", "🛠 QC", class = "btn-analysis")),
               column(3, actionButton("go_degs", "🧬 DEGs", class = "btn-analysis")),
               column(3, actionButton("go_heatmap", "🔥 Heatmap", class = "btn-analysis")),
               column(3, actionButton("go_expression", "📊 Expression", class = "btn-analysis"))
             ),
             
             fluidRow(
               column(3, actionButton("go_venn", "🔗 Venn Diagram", class = "btn-analysis")),
               column(3, actionButton("go_enrichment", "📊 Geneset Enrichment", class = "btn-analysis")),
               column(3, actionButton("go_wgcna", "🔗 WGCNA", class = "btn-analysis")),
               column(3, actionButton("go_pcsf", "🕸️ PCSF", class = "btn-analysis"))
             ),
             
             tags$style(HTML("
               .btn-analysis {
                 background-color: white !important;
                 color: black !important;
                 width: 100%;
                 height: 150px;
                 font-size: 20px;
                 text-align: center;
                 display: flex;
                 align-items: center;
                 justify-content: center;
                 border-radius: 10px;
                 margin-top: 10px;
                 border: 2px solid #ccc;
                 box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
                 transition: all 0.2s ease-in-out;
               }
               
               .btn-analysis:hover {
                 background-color: #f0f0f0 !important;
                 transform: scale(1.05);
               }
             "))
           )
  ),
  

  # Genome Browser Tab
  tabPanel("Genome Browser", h3("Genome Browser"))
)


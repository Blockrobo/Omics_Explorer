source("ui-pages/data-analysis-pages/histogram_ui.R")


data_analysis_UI <- function(id) {
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
               column(3, actionButton("go_heatmap", "🔥 Heatmap", class = "btn-analysis")),
               column(3, actionButton("go_venn", "🔗 Venn Diagram", class = "btn-analysis")),
               column(3, actionButton("go_enrichment", "📊 Enrichment Analysis", class = "btn-analysis")),
               column(3, actionButton("go_wgcna", "🔗 WGCNA", class = "btn-analysis"))
             ),
             
             fluidRow(
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
  )
}


# ui.R
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
             titlePanel("Welcome to Omics Explorer"),
             p("This web application allows you to analyze multi-omics datasets, visualize key insights, and explore biological relationships."),
             p("You can:"),
             tags$ul(
               tags$li("View dataset summaries"),
               tags$li("Perform enrichment analysis"),
               tags$li("Conduct data-driven exploration"),
               tags$li("Visualize data with an interactive genome browser")
             )
           )
  ),
  
  # Dataset Overview Tab
  tabPanel("Dataset Overview",
           sidebarLayout(
             sidebarPanel(
               selectInput("dataset", "Select Dataset:", choices = names(datasets))
             ),
             mainPanel(
               DTOutput("dataTable")
             )
           )
  ),
  
  # Enrichment Analysis Tab
  tabPanel("Enrichment Analysis", h3("Enrichment Analysis Placeholder")),
  
  # Data Analysis Tab
  tabPanel("Data Analysis", h3("Data Analysis Placeholder")),
  
  # Genome Browser Tab
  tabPanel("Genome Browser", h3("Genome Browser Placeholder"))
)

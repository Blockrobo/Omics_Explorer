library(DT)  # For DataTables


dataset_UI <- function(id) {
  ns <- NS(id)
  
  navbarMenu("Dataset",
             
             tabPanel("Dataset Overview",
                      fluidPage(
                        titlePanel("Dataset Overview"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("dataset", "Select Dataset:", choices = names(datasets))
                          ),
                          mainPanel(
                            h3("Selected Dataset Preview"),
                            DTOutput("dataTable")
                          )
                        )
                      )
             ),
             
             tabPanel("Working Dataset",
                      fluidPage(
                        titlePanel("Working Dataset Management"),
                        
                        sidebarLayout(
                          sidebarPanel(
                            h4("Add/Remove Datasets"),
                            selectInput(ns("select_dataset"), "Choose Dataset to Add:", choices = names(datasets)),
                            actionButton(ns("add_dataset"), "➕ Add to Working Dataset", class = "btn-success"),
                            br(), br(),
                            h4("Current Working Dataset"),
                            uiOutput(ns("working_dataset_list")),
                            actionButton(ns("remove_dataset"), "❌ Remove Selected Dataset", class = "btn-danger"),
                            br(), br(),
                            h4("Download Working Dataset"),
                            downloadButton(ns("download_dataset"), "💾 Download", class = "btn-primary")
                          ),
                          mainPanel(
                            h3("Working Dataset Preview"),
                            DTOutput(ns("working_dataset_table"))
                          )
                        )
                      )
             )
  )
}

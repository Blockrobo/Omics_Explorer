source("global.R")
source("ui-pages/home_ui.R")
source("ui-pages/dataset_ui.R")
source("ui-pages/clustering_ui.R")
source("ui-pages/enrichment_analysis_ui.R")
source("ui-pages/genome_browser_ui.R")
source("ui-pages/data_analysis_ui.R")  # Kept outside the subfolder

ui <- navbarPage(
  title = div(
    tags$img(src = "logo.png", height = "40px", style = "margin-right:10px;"),
    "Omics Explorer"
  ),
  theme = shinytheme("paper"),
  
  home_UI("home"),
  dataset_UI("dataset"),
  clustering_UI("clustering"),
  data_analysis_UI("data_analysis"),  # Navbar tab
  enrichment_analysis_UI("enrichment"),
  genome_browser_UI("genome_browser")
)





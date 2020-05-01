loadNatPackages <- function( packages = "favourites" ) {
  
  if( length( packages ) == 1L && packages == "favourites" ) {
    packages <- c("natmanager", "plyr", "dplyr", "dendroextras",
                   "devtools", "ComplexHeatmap", "devtools", "utils",
                   "stats","ggplot2", "reshape2",
                   "nat.jrcbrains", "png", "data.table", "knitr",
                   "rmarkdown"
    )
  }
  
  natverse_check <- match('natmanager',utils::installed.packages()[,1])
  if (is.na(natverse_check)){
    natmanager::install('core')
  }
  
  heatmap_check <-match('ComplexHeatmap',utils::installed.packages()[,1])
  if (is.na(heatmap_check)){
    install_github("jokergoo/ComplexHeatmap")
  }
  
  catnat_check<-match('catnat',utils::installed.packages()[,1])
  if (is.na(catnat_check)){
    if (!require("devtools")) install.packages("devtools")
    devtools::install_github("jefferislab/catnat")
  }
  
  natjrc_check<-match('nat.jrcbrains',utils::installed.packages()[,1])
  if (is.na(natjrc_check)){
    devtools::install_github('natverse/nat.jrcbrains')
  }
  
  packagecheck <- match( packages, utils::installed.packages()[,1] )
  
  packagestoinstall <- packages[ is.na( packagecheck ) ]
  
  if( length( packagestoinstall ) > 0L ) {
    utils::install.packages( packagestoinstall,
                             repos = "http://http://cran.mirrors.hoobly.com/"
    )
  } else {
    print( "All requested packages already installed" )
  }
  
  for( package in packages ) {
    suppressPackageStartupMessages(
      library( package, character.only = TRUE, quietly = TRUE )
    )
  }
  
}
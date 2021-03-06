#' Creation of a heatmap.
#'
#' @name heatmap_ec
#'
#' @description
#' `heat_map_ec` returns a created heatmap based on the dataset and characteristics
#' you enter into the function, as well as labels.
#'
#' @details
#' This function has several arguments that can be added or removed to make
#' the heatmap more flexible to the visual wanted.
#'

usethis::use_package("extrafont")
usethis::use_package("stats")
usethis::use_package("RColorBrewer")
usethis::use_package("svglite")
#'@export heatmap_ec
heatmap_ec <- function (dataset, rowdendrogram=NULL, coldendrogram=NULL, heatmapcolor=brewer.pal(9,"Blues"), ycolor, xcolor, title=NA, xlabel=NA, ylabel=NA, font="Times New Roman", fontsize=18, filename="graph.svg"){
  #'@param
  #'dataset what dataset you want to be used in the creation of the heatmap.
  stats::heatmap(as.matrix(dataset),
          #'@param
          #'rowdendrogram informs the program whether or not a dendrogram should be included on the y axis. By default it will create the dendrogram. Setting it equal to NA will get rid of the dendrogram.
          Rowv=rowdendrogram,
          #'@param
          #'coldendrogram informs the program whether or not a dendrogram should be included on the y axis. By default it will create the dendrogram. Setting it equal to NA will get rid of the dendrogram.
          Colv=coldendrogram,
          #' @param
          #'heatmapcolor is what color the heatmap with be created in shades of.
          col=heatmapcolor,
          #'@param
          #'ycolor is what column (column should have colored values) the y axis should be colored by.
          RowSideColors= ycolor,
          #'@param
          #'xcolor is what column (column should have colored values) the x axis should be colored by.
          ColSideColors= xcolor,
          #'@param
          #'title is the title of the graph
          main = title,
          #'@param
          #'xlabel is what the x axis label will be
          xlab = xlabel,
          #'@param
          #'ylabel is what the y axis label wil be.
          ylab = ylabel)+
    theme(text=element_text(family=font,
                            #'@param
                            #'font determines the font type that is used.
                            size=fontsize))+
                            #'@param
                            #'fontsize determines the font type that is used.
    ggplot2::ggsave(file=filename)
    #'@param
    #'filename specifies the name and filetype that the graph is saved as.
}



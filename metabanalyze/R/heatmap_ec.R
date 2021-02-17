#' Creation of a heatmap.
#'
#' @name heatmap
#'
#' @description
#' `heat_map` returns a created heatmap based on the dataset and characteristics
#' you enter into the function, as well as labels.
#'
#' @details
#' This function has several arguments that can be added or removed to make
#' the heatmap more flexible to the visual wanted.
#'
usethis::use_package("stats")
heatmap <- function (dataset, rowdendrogram, coldendrogram, heatmapcolor, ycolor, xcolor, title, xlabel, ylabel){
  #'@param
  #'dataset what dataset you want to be used in the creation of the heatmap.
  stats::heatmap(as.matrix(dataset),
          #'@param
          #'rowdendrogram informs the program whether or not a dendrogram should be included on the y axis.
          Rowv=rowdendrogram,
          #'@param
          #'coldendrogram informs the program whether or not a dendrogram should be included on the y axis.
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
          ylab = ylabel)
}


#'Creation of a boxplot
#'
#' @name boxplot_ec
#'
#' @description
#' `boxplot_ec` returns a created boxplot based on the dataset and characteristics
#' inputed into the function, as well as labels for title and axis.
#'
#' @details
#' This function has mamy arguments that can be added or removed to make
#' the boxplot more flexible to the visual wanted and more representative of
#' the data.
#'
#'
#'
#'
#' @export boxplot_ec
usethis::use_package("ggplot2")
boxplot_ec <- function (dataset, xvar= NULL, yvar=NULL, fill=NULL, notch=FALSE, widthnotch=0.5, graphorientation=NA, legend=NA, xlabel=NULL, ylabel=NULL, title=NULL){
  #' The ggplot sets up the creation of a plot.
  #' @param
  #' dataset what dataset you want to be used in the
  ggplot2::ggplot(dataset,
         #'@param
         #'xvar is the variable that x will display.
         ggplot2::aes(x = xvar,
             #'@param
             #'yvar is the variable that y will display.
             y = yvar)) +
    #'This  geom_boxplot specifies a boxplot will be created.
    #' @param
    #' fill is the color you want to fill the boxplots with or the factor you want to use to separate the data.
    ggplot2::geom_boxplot(ggplot2::aes(fill=fill),
                 #'@param
                 #'notch is a TRUE or FALSE input that decides if a notch will be in the boxplot.
                 notch=notch,
                 #'@param
                 #'widthnotch is the size of the notch.
                 notchwidth = widthnotch,
                 #' @param
                 #' graphorientation is either x (which will rotate the graph so it is vertical),
                 #' or y (which will rotate the graph so that it is horizontal).
                 orientation = graphorientation,
                 #'@param legend is a true or false value that will determine if the legend is there or not.
                 show.legend= legend, )+
    #'labs creates the label
    #'@param
    #'xlabel determines what the x axis is labeled.
    ggplot2::labs(x= xlabel,
         #'@param
         #'ylabel determines what the y axis is labeled.
         y= ylabel,
         #'@param
         #'title specifies what the title of the graph is.
         title=title)
}



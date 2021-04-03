#' Creation of a line graph
#'
#' @name lineplot_ec
#'
#' @description
#' `lineplot_ec` returns a created line graph based on the dataset and
#' various specifications inputed into the function, as well as labels
#' for title and axis.
#'
#' @details
#' This function has several arguments that can be used or ignored to make
#' the boxplot more flexible to the visual wanted and more representative of
#' the data.
#'
#'The ggplot sets up the creation of a plot.
#'@param
#' dataset what dataset you want to be used in the creation of the rest of the line graph.
#'
#' @export lineplot_ec
usethis::use_package("ggplot2")
usethis::use_package("extrafont")
usethis::use_package("svglite")
lineplot_ec <- function (dataset, xvar=NULL, yvar=NULL, color=NULL, linesize=NULL, legend=NA, poslegend=NULL, xlabel=NA, ylabel=NA, title=NA, font="Times New Roman", fontsize=18, filename="graph.svg" )
{
  ggplot2::ggplot(dataset) +
    #'This  geom_line specifies a boxplot will be created.
    #'@param
    #'xvar is the variable that x will display.
    ggplot2::geom_line(ggplot2::aes(x= xvar,
                  #'@param
                  #'yvar is the variable that y will display.
                  y=yvar,
                  #'@param
                  #'color is what color the graph will be, it can also be the separating factor to make a multiple line line graph.
                  color=color,
                  #'@param
                  #'linesize is the width of the lines.
                  size = linesize),
              #'@param
              #'legend is a TRUE or FALSE value on if a legend should be included.
              show.legend = legend)+
    #'theme adds another specification we can add.
    #'@param
    #'poslegend is where on the graph the legend should be. Acceptable arguments include: "left", "right", "bottom", "top".
    ggplot2::theme(legend.position = poslegend)+
    #'labs creates the label.
    #'@param
    #'xlabel determines what the x axis is labeled.
    ggplot2::labs(x=xlabel,
         #'@param
         #'ylabel determines what the y axis is labeled.
         y =ylabel,
         #'@param
         #'title specifies what the title of the graph is.
         title =title)+
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


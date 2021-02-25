#' Creation of a PCA plot
#'
#'@name pcaplot_ec
#'
#' @description
#' `pcaplot_ec` returns a created PCA plot based on the dataset and
#' various specifications inserted into the function, as well as labels
#' for title and axis.
#'
#' @details
#' This function has several arguments that can be implemented to make
#' the PCA plot more flexible to the visual wanted and more representative of
#' the data.
#'
#'The ggplot sets up the creation of a plot.
#'@param
#' dataset what dataset you want to be used in the
#' creation of the rest of the PCA plot.
#'
#' @export pcaplot_ec
usethis::use_package("extrafont")
usethis::use_package("svglite")
pcaplot_ec <- function(dataset, ellipse=FALSE, groupedby=NULL, axes=FALSE, adjustnamevar=1, namevarsize=5, xlabel=NA, ylabel=NA, title=NA, font="Times New Roman", fontsize=18, filename="graph.svg" )
{
  ggbiplot::ggbiplot(dataset,
           #'@param
           #'ellipse is a TRUE or FALSE input that determines if normal ellipsis are used.
           ellipse = ellipse,
           #'@param
           #'groupedby is what the ellipsis are grouped into.
           groups =groupedby,
           #'@param
           #'axes is a TRUE or FALSE input deciding if arrows for variables are created.
           var.axes = axes,
           #'@param
           #'adjustnamevar is how far the name / label is from the arrow.
           varname.adjust=adjustnamevar,
           #'@param
           #'namevarsize is how large the labels are for the arrows
           varname.size = namevarsize)+
    #'labs creates the label
    #'@param
    #'xlabel determines what the x axis is labeled.
    ggplot2::labs(x= xlabel,
         #'@param
         #'ylabel determines what the y axis is labeled.
         y= ylabel,
         #'@param
         #'title specifies what the title of the graph is.
         title=title)+
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

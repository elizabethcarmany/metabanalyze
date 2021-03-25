Overview
========

Metabanalyze is a package for creating heatmaps, lineplots, pca plots
and boxplots. Metabanalyze creates easier visualizations of tabular
data. Provided n the package is sample raw metabolomics data. The data
is metabolites measured using c18 chromatography. Provided are the named
data and the data for factors to analyze. Metabanlyze has many
specifications to make more complex visuals, however, it also allows for
simple concise code for more simple graphics.

Installation
============

``` r
# The easiest way to get metabanalyze is to install it by
install.packages("metabanalyze")

# Or the development version from GitHub:
# install.packages("devtools")
devtools::install_github("elizabethcarmany/metabanalyze")
```

Graphs Created by Metabanalyze
==============================

List of Functions
-----------------

The following are the functions in Metabanalyze.

`heatmap_ec()`

`pcaplot_ec()`

`lineplot_ec()`

`boxplot_ec()`

Below are examples of the graphics that can be created. Some of the
various arguments are shown. More are shown in the manual files.

Heatmap
-------

``` r
metabanalyze::heatmap_ec(dataset=as.matrix(C18namedclean2), rowdendrogram = NA, coldendrogram = NA, ycolor=metaboliteswithcolor$Color, xlabel="Metabolites measured", ylabel= "Samples", title= "C18 metabolites measured monitoring bowels diseases")
```

    ## Saving 7 x 5 in image

![](Metabanalyze_files/figure-markdown_github/unnamed-chunk-2-1.png)

    ## integer(0)

PCA plot
--------

``` r
metabanalyze::pcaplot_ec(c18swapped.pca, ellipse=TRUE, groupedby = total_c18metabolites$`Abdominal_ pain`, axes=TRUE, xlabel = "", ylabel = "", title ="Metabolites of C18 Separated by Abdominal Pain")
```

    ## Saving 7 x 5 in image

![](Metabanalyze_files/figure-markdown_github/unnamed-chunk-3-1.png)

Line Plot
---------

``` r
metabanalyze::lineplot_ec(metabolitec18sample, xvar=metabolitec18sample$Age, yvar=metabolitec18sample$myristate, color=metabolitec18sample$sex, legend=TRUE, poslegend = "top", xlabel= "Age", ylabel = "Myristate Metabolite", title = "Myristate Samples Compared  Using Age and Sex")
```

    ## Saving 7 x 5 in image

![](Metabanalyze_files/figure-markdown_github/unnamed-chunk-4-1.png)

Boxplot
---------

``` r
metabanalyze::boxplot_ec(total_c18metabolites, yvar= total_c18metabolites$hydrocinnamate, fill=total_c18metabolites$Diagnosis, notch=TRUE, widthnotch = .8, legend = TRUE, xlabel = "Diagnosis", ylabel ="Number of Samples Containing Hydrocinnamate", title ="Data Hydrocinnamate Samples Separated by Diagnosis")
```

    ## Saving 7 x 5 in image

![](Metabanalyze_files/figure-markdown_github/unnamed-chunk-5-1.png)

---
title       : GBM with Iris
subtitle    : Developing Data Products - Coursera Project
author      : fherlant
job         : 09/25/2015
framework   : revealjs        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## GBM with Iris

Developing Data Products - Coursera Project

---

## App description

The **GBM with Iris** web app illustrates the capabilities of gradient boosting machines on the iris dataset. The gbm parameters can be set using sliders and drop-down menus as input parameters, and the learning curves and relative influence are plotted as the output of the application.

To access the shiny app, go to https://fherlant.shinyapps.io/gbm-with-iris

---

## Screenshot


<div style='text-align: center;'>
    <img height='500' src='./assets/img/Screenshot.png' />
</div>


---

## Iris Dataset


This app relies on `iris`, probably the most well-known dataset for rookie data scientists.


```r
library(datasets)
str(iris)
```

```
## 'data.frame':	150 obs. of  5 variables:
##  $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
##  $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
##  $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
##  $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
##  $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
```


---
## Gradient Boosting

For more details on GBM:
* [R Package "gbm"](https://cran.r-project.org/web/packages/gbm/gbm.pdf)
* [Gradient boosting (Wikipedia)](https://en.wikipedia.org/wiki/Gradient_boosting)

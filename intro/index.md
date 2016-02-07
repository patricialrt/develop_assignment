---
title       : Developing Data Products  
subtitle    : Arbuthnot k-means clustering
author      : Patricia Bohl
job         : Final Assignment
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, shiny, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## What is K-means clustering?

Clustering is the process of partitioning a group of data points into a small number of clusters. For instance, the items in a supermarket are clustered in categories (butter, cheese and milk are grouped in dairy products). Of course this is a qualitative kind of partitioning. A quantitative approach would be to measure certain features of the products, say percentage of milk and others, and products with high percentage of milk would be grouped together. In general, we have n data points xi,i=1...n that have to be partitioned in k clusters. The goal is to assign a cluster to each data point. K-means is a clustering method that aims to find the positions ??i,i=1...k of the clusters that minimize the square of the distance from the data points to the cluster. 

--- .class #id 

## Arbuthnot's data on male and female birth ratios in London from 1629-1710.

John Arbuthnot (1710) used these time series data on the ratios of male to female births in London from 1629-1710 to carry out the first known significance test, comparing observed data to a null hypothesis. The data for these 81 years showed that in every year there were more male than female christenings.

On the assumption that male and female births were equally likely, he showed that the probability of observing 82 years with more males than females was vanishingly small (~ 4.14 x 10^{-25}). He used this to argue that a nearly constant birth ratio > 1 could be interpreted to show the guiding hand of a devine being. The data set adds variables of deaths from the plague and total mortality obtained by Campbell and from Creighton (1965).

--- .class #id 
```
ext_widgets: {rCharts: [libraries/nvd3]}
```
## ui.R

```
## ```{r opts.label = 'shiny'}
## slidifyUI(pageWithSidebar(
##   headerPanel('Arbuthnot k-means clustering'),
##   sidebarPanel(
##     selectInput('xcol', 'X Variable', names(Arbuthnot)),
##     selectInput('ycol', 'Y Variable', names(Arbuthnot),
##                 selected=names(Arbuthnot)[[5]]),
##     numericInput('clusters', 'Cluster count', 3,
##                  min = 1, max = 9)),
##   mainPanel(plotOutput('plot1'))))
## )
## `` `
```

--- .class #id 

## Links:


Description of k-means clustering:
http://www.onmyphd.com/?p=k-means.clustering&ckattempt=1

Description of Arbuthnot's dataset: R help

Link to app: https://patricialrt.shinyapps.io/develop_assignment/


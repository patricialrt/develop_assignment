library(shiny)
library(HistData)
data("Arbuthnot")

shinyUI(pageWithSidebar(
  headerPanel('Arbuthnot k-means clustering'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(Arbuthnot)),
    selectInput('ycol', 'Y Variable', names(Arbuthnot),
                selected=names(Arbuthnot)[[5]]),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 9),
    helpText("This dataset is a time series on the ratio of male to female births",
             "in London from 1629-1710. It contains as well the variables of deaths from",
             "the plague and total mortality.",
             "For a description of the dataset please check as well the R help."),
    helpText("k-means clustering aims to partition n observations",
             "into k clusters in which each observation belongs to",
             "the cluster with the nearest mean, serving as a prototype",
             "of the cluster. For more information on k-means, here's some",
             "first reading: https://en.wikipedia.org/wiki/K-means_clustering")
  ),
  mainPanel(
    plotOutput('plot1')
  )
))
% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/TrendLine.R
\docType{methods}
\name{initialize,TrendLine-method}
\alias{initialize,TrendLine-method}
\title{Initialize a TrendLine}
\usage{
\S4method{initialize}{TrendLine}(.Object, initialValue, initialXValue,
  finalValue, finalXValue, valueAxis, valueAxisX, ...)
}
\description{
Initialize a TrendLine
}
\examples{
new("TrendLine", initialValue = 1, finalValue = 11)

# Other example
valueAxis <- valueAxis(title = "Hello !", axisTitleOffset = 12)
new("TrendLine", valueAxis = valueAxis)
}


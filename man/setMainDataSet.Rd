% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/AmStockChart.R
\docType{methods}
\name{setMainDataSet}
\alias{setMainDataSet}
\title{Setter}
\usage{
\S4method{setMainDataSet}{AmStockChart}(.Object, dataSet = NULL, ...)
}
\arguments{
\item{\code{.Object}:}{Object of class \code{\linkS4class{AmStockChart}}.}

\item{\code{dataSet}:}{(optionnal) Object of class \code{\linkS4class{DataSet}}.
Data set selected as main.}

\item{\code{...}:}{Properties of the \code{\linkS4class{DataSet}} to add.}
}
\value{
The updated object of class \code{\linkS4class{AmStockChart}}.
}
\description{
Setter
}
\examples{
library(pipeR)
amStockChart() \%>>\% setMainDataSet(showInCompare = TRUE)
}
\seealso{
\code{\linkS4class{AmStockChart}} S4 class

\code{\linkS4class{DataSet}} S4 class

Other AmStockChart methods: \code{\link{addComparedDataSet}};
  \code{\link{addDataSet}}; \code{\link{addPanel}};
  \code{\link{setCategoryAxesSettings}};
  \code{\link{setChartCursorSettings}};
  \code{\link{setChartScrollbarSettings}};
  \code{\link{setComparedDataSets}};
  \code{\link{setDataSetSelector}};
  \code{\link{setDataSets}};
  \code{\link{setLegendSettings}};
  \code{\link{setPanelsSettings}}; \code{\link{setPanels}};
  \code{\link{setPeriodSelector}};
  \code{\link{setStockEventsSettings}};
  \code{\link{setValueAxesSettings}}

Other AmStockChart setters: \code{\link{addComparedDataSet}};
  \code{\link{addDataSet}}; \code{\link{addPanel}};
  \code{\link{setCategoryAxesSettings}};
  \code{\link{setChartCursorSettings}};
  \code{\link{setChartScrollbarSettings}};
  \code{\link{setComparedDataSets}};
  \code{\link{setDataSetSelector}};
  \code{\link{setDataSets}};
  \code{\link{setLegendSettings}};
  \code{\link{setPanelsSettings}}; \code{\link{setPanels}};
  \code{\link{setPeriodSelector}};
  \code{\link{setStockEventsSettings}};
  \code{\link{setValueAxesSettings}}
}


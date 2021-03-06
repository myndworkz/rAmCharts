% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/AmStockChart.R
\docType{methods}
\name{addComparedDataSet}
\alias{addComparedDataSet}
\title{Setter}
\usage{
\S4method{addComparedDataSet}{AmStockChart}(.Object, dataSet = NULL, ...)
}
\arguments{
\item{\code{.Object}:}{Object of class \code{\linkS4class{AmStockChart}}.}

\item{\code{dataSet}:}{(optionnal) Object of class \code{\linkS4class{DataSet}}.
Each element of this list must be a dataSet}

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
amStockChart() \%>>\% addComparedDataSet(compared = TRUE)
}
\seealso{
\code{\linkS4class{AmStockChart}} S4 class

\code{\linkS4class{DataSet}} S4 class

Other AmStockChart methods: \code{\link{addDataSet}};
  \code{\link{addPanel}};
  \code{\link{setCategoryAxesSettings}};
  \code{\link{setChartCursorSettings}};
  \code{\link{setChartScrollbarSettings}};
  \code{\link{setComparedDataSets}};
  \code{\link{setDataSetSelector}};
  \code{\link{setDataSets}};
  \code{\link{setLegendSettings}};
  \code{\link{setMainDataSet}};
  \code{\link{setPanelsSettings}}; \code{\link{setPanels}};
  \code{\link{setPeriodSelector}};
  \code{\link{setStockEventsSettings}};
  \code{\link{setValueAxesSettings}}

Other AmStockChart setters: \code{\link{addDataSet}};
  \code{\link{addPanel}};
  \code{\link{setCategoryAxesSettings}};
  \code{\link{setChartCursorSettings}};
  \code{\link{setChartScrollbarSettings}};
  \code{\link{setComparedDataSets}};
  \code{\link{setDataSetSelector}};
  \code{\link{setDataSets}};
  \code{\link{setLegendSettings}};
  \code{\link{setMainDataSet}};
  \code{\link{setPanelsSettings}}; \code{\link{setPanels}};
  \code{\link{setPeriodSelector}};
  \code{\link{setStockEventsSettings}};
  \code{\link{setValueAxesSettings}}
}


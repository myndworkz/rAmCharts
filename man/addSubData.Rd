% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/AmChart_getSet.R
\docType{methods}
\name{addSubData}
\alias{addSubData}
\title{Add subData for drilldrown}
\usage{
\S4method{addSubData}{AmChart,numeric,data.frame}(.Object, categoryIDs, data)
}
\arguments{
\item{\code{.Object}:}{Object of class \code{\linkS4class{AmChart}}.}

\item{\code{categoryIDs}:}{Object of class \code{numeric} (vector or simple value).
Indicates corresponding indice(s) of the \code{dataProvider} where to add the data.}

\item{\code{data}:}{Object of class \code{data.frame}. Data to draw at the second level,
after clicking on the serial / column.}
}
\description{
This method allows to add subdata for a chart with drilldown.
}
\examples{
library(pipeR)
amChart( dataProvider = data.frame(a = 1:5, b = 6:10) ) \%>>\%
addSubData( 3, data.frame(a = 1:10, b = 11:20) )
}
\seealso{
Other AmChart methods: \code{\link{addArrow}};
  \code{\link{addAxe}}; \code{\link{addGraph}};
  \code{\link{addGuide}},
  \code{\link{addGuide,AxisBase-method}};
  \code{\link{addLabel}}; \code{\link{addListener}};
  \code{\link{addSegment}}; \code{\link{addTitle}};
  \code{\link{addTrendLine}}; \code{\link{addValueAxes}};
  \code{\link{initialize,AmChart-method}};
  \code{\link{initialize,AmStockChart-method}};
  \code{\link{setAllLabels}}; \code{\link{setArrows}};
  \code{\link{setAxes}}; \code{\link{setBalloon}};
  \code{\link{setCategoryAxis}};
  \code{\link{setCategoryField}};
  \code{\link{setChartCursor}};
  \code{\link{setChartScrollbar}};
  \code{\link{setCreditsPosition}};
  \code{\link{setDataProvider}},
  \code{\link{setDataProvider}}; \code{\link{setExport}};
  \code{\link{setGraphs}}; \code{\link{setGraph}},
  \code{\link{setGraph}}; \code{\link{setGuides}};
  \code{\link{setLegend}};
  \code{\link{setSubChartProperties}};
  \code{\link{setTitles}}; \code{\link{setTrendLines}};
  \code{\link{setValueAxes}}; \code{\link{setValueAxis}}
}


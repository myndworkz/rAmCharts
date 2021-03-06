% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/AmChart_getSet.R
\docType{methods}
\name{setTrendLines}
\alias{setTrendLines}
\title{Setter for trendLines}
\usage{
\S4method{setTrendLines}{AmChart,list}(.Object, trendLines)
}
\arguments{
\item{\code{.Object}:}{Object of class \code{\linkS4class{AmChart}}.}

\item{\code{trendLines}:}{Object of class \code{list}.
Each element must be of class \code{\linkS4class{TrendLine}}.}
}
\value{
The updated object of class \code{\linkS4class{AmChart}}.
}
\description{
Setter for trendLines
}
\examples{
library(pipeR)
trendLines <- list(trendLine(initialValue = 1, finalValue = 5), trendLine(initialValue = 7, finalValue = 19))
amChart() \%>>\% setTrendLines(trendLines)
}
\seealso{
\code{\linkS4class{AmChart}} S4 class

\code{\linkS4class{TrendLine}} S4 class

Other AmChart methods: \code{\link{addArrow}};
  \code{\link{addAxe}}; \code{\link{addGraph}};
  \code{\link{addGuide}},
  \code{\link{addGuide,AxisBase-method}};
  \code{\link{addLabel}}; \code{\link{addListener}};
  \code{\link{addSegment}}; \code{\link{addSubData}};
  \code{\link{addTitle}}; \code{\link{addTrendLine}};
  \code{\link{addValueAxes}};
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
  \code{\link{setTitles}}; \code{\link{setValueAxes}};
  \code{\link{setValueAxis}}

Other AmChart setters: \code{\link{addArrow}};
  \code{\link{addAxe}}; \code{\link{addGraph}};
  \code{\link{addGuide}},
  \code{\link{addGuide,AxisBase-method}};
  \code{\link{addLabel}}; \code{\link{addListener}};
  \code{\link{addTitle}}; \code{\link{addTrendLine}};
  \code{\link{addValueAxes}}; \code{\link{setAllLabels}};
  \code{\link{setArrows}}; \code{\link{setAxes}};
  \code{\link{setBalloon}}; \code{\link{setCategoryAxis}};
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
  \code{\link{setTitles}}; \code{\link{setValueAxes}};
  \code{\link{setValueAxis}}
}


% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/AmChart_getSet.R
\docType{methods}
\name{setChartScrollbar}
\alias{setChartScrollbar}
\title{Setter}
\usage{
\S4method{setChartScrollbar}{AmChart}(.Object, chartScrollbar = NULL, ...)
}
\arguments{
\item{\code{.Object}:}{Object of class \code{\linkS4class{AmChart}}.}

\item{\code{chartScrollbar}:}{Object of class \code{\linkS4class{ChartScrollbar}}.}
}
\value{
The updated object of class \code{\linkS4class{AmChart}}.
}
\description{
Setter
}
\examples{
library(pipeR)
amChart() \%>>\% setChartScrollbar(chartScrollbar(oneBallOnly = TRUE))
amChart() \%>>\% setChartScrollbar()
}
\seealso{
\code{\linkS4class{AmChart}} S4 class

\code{\linkS4class{ChartScrollbar}} S4 class

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
  \code{\link{setCreditsPosition}};
  \code{\link{setDataProvider}},
  \code{\link{setDataProvider}}; \code{\link{setExport}};
  \code{\link{setGraphs}}; \code{\link{setGraph}},
  \code{\link{setGraph}}; \code{\link{setGuides}};
  \code{\link{setLegend}};
  \code{\link{setSubChartProperties}};
  \code{\link{setTitles}}; \code{\link{setTrendLines}};
  \code{\link{setValueAxes}}; \code{\link{setValueAxis}}

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


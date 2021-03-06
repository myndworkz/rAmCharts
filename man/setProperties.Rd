% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/AmObject.R
\docType{methods}
\name{setProperties,AmObject-method}
\alias{setProperties,AmObject-method}
\title{Add a property (non referenced as an attribute) to an AmObject}
\usage{
\S4method{setProperties}{AmObject}(.Object, list, ...)
}
\arguments{
\item{\code{properties}:}{{(Optional) Object of class \code{list} containing properties to set.
The former properties will be overwritten.}}
}
\description{
In case the property is a class attribute, it will be overwritten if the attribute is non NULL
}
\examples{
library(pipeR)
# For an AmChart
ls <- list(categoryAxis = list(gridPosition = "start"), test = 1)
amChart() \%>>\% setProperties(list = ls) \%>>\% setType("pie") \%>>\% setProperties(fontSize = 15)
}
\seealso{
\code{\linkS4class{AmObject}}

Other AmObjects methods: \code{\link{getOtherProperties,ANY-method}}
}


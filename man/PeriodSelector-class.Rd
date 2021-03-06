% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/PeriodSelector.R
\docType{class}
\name{PeriodSelector-class}
\alias{PeriodSelector-class}
\title{PeriodSelector class}
\description{
PeriodSelector class
}
\section{Slots}{

\describe{
\item{\code{\code{periods}:}}{Object of clas \code{numeric}.
Array of predefined period objects.
Period object has 4 properties - period, count, label and selected.
Possible period values are:
"ss" - seconds, "mm" - minutes, "hh" - hours, "DD" - days, "MM" - months and "YYYY" - years.
property "count" specifies how many periods this button will select.
"label" will be displayed on a button and "selected" is a boolean
which specifies if this button is selected when chart is initialized or not.
Example: {period:"DD", count:10, label:"10 days", selected:false}.}
}}
\section{Slots}{

}
\author{
DataKnowledge
}


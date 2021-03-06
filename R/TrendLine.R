#' @include AmObject.R sharedGenerics.R ValueAxis.R
NULL

#' @title TrendLine class
#' @author DataKnowledge
#' @section Slots:
#' @slot \code{finalValue}: Object of class \code{numeric}.
#' Value at which trend line should end.
#' @slot \code{finalXValue}: Object of class \code{numeric}.
#' Used by XY chart only. X value at which trend line should end.
#' @slot \code{initialValue}: {Object of class \code{numeric}.
#' Value from which trend line should start.}
#' @slot \code{initialValue}: {Object of class \code{numeric}.
#' Used by XY chart only. X value from which trend line should start.}
#' @slot \code{valueAxis}: {Object of class \code{\linkS4class{ValueAxis}}.
#' Value axis of the trend line. Will use first value axis of the chart if not set any.
#' You can use a reference to the value axis object or id of value axis.}
#' @slot \code{valueAxisX}: {Object of class \code{\linkS4class{ValueAxis}}.
#' Used by XY chart only. X axis of trend line.
#' Will use first X axis of the chart if not set any.
#' You can use a reference to the value axis object or id of value axis.}
#' @export
setClass( Class = "TrendLine", contains = "AmObject",
          representation =
            representation(
              initialValue = "numeric",
              initialXValue = "numeric",
              finalValue = "numeric",
              finalXValue = "numeric",
              valueAxis = "list",
              valueAxisX = "list"
              )
)

#' @title Initialize a TrendLine
#' @examples
#' new("TrendLine", initialValue = 1, finalValue = 11)
#' 
#' # Other example
#' valueAxis <- valueAxis(title = "Hello !", axisTitleOffset = 12)
#' new("TrendLine", valueAxis = valueAxis)
#' @export
setMethod(f = "initialize", signature = "TrendLine",
          definition = function(.Object,
                                initialValue, initialXValue,
                                finalValue, finalXValue,
                                valueAxis, valueAxisX, ...)
          {  
            if(!missing(initialValue)){
              .Object@initialValue <- initialValue
            }
            if(!missing(initialXValue)){
              .Object@initialXValue <- initialXValue
            }
            if(!missing(finalValue)){
              .Object@finalValue <- finalValue
            }
            if(!missing(finalXValue)){
              .Object@finalXValue <- finalXValue
            }
            if(!missing(valueAxis)){
              .Object <- setValueAxis( .Object, valueAxis )
            }
            if(!missing(valueAxisX)){
              .Object <- setValueAxis( .Object, valueAxisX )
            }
            .Object <- setProperties(.Object, ...)
            validObject(.Object)
            return(.Object)
          }
)

# CONSTRUCTOR ####
#' @title
#' #’ Constructor.
#' @title Constructor for an AmGraph
#' @param \code{finalValue}: Object of class \code{numeric}.
#' Value at which trend line should end.
#' @param \code{finalXValue}: Object of class \code{numeric}.
#' Used by XY chart only. X value at which trend line should end.
#' @param \code{initialValue}: Object of class \code{numeric}.
#' Value from which trend line should start.
#' @param \code{initialValue}: Object of class \code{numeric}.
#' Used by XY chart only. X value from which trend line should start.
#' @param \code{valueAxis}: Object of class \code{\linkS4class{ValueAxis}}.
#' Value axis of the trend line. Will use first value axis of the chart if not set any.
#' You can use a reference to the value axis object or id of value axis.
#' @param \code{valueAxisX}: Object of class \code{\linkS4class{ValueAxis}}.
#' Used by XY chart only. X axis of trend line.
#' Will use first X axis of the chart if not set any.
#' You can use a reference to the value axis object or id of value axis.
#' @param \code{...}: Properties of TrendLine.
#' See \code{\url{http://docs.amcharts.com/3/javascriptcharts/TrendLine}}
#' @return An \code{\linkS4class{TrendLine}} object
#' @examples
#' trendLine(initialValue = 1, finalValue = 11)
#' @export
trendLine <- function(.Object,
                      initialValue, initialXValue,
                      finalValue, finalXValue,
                      valueAxis, valueAxisX, ...){
  .Object <- new("TrendLine")
  if(!missing(initialValue)){
    .Object@initialValue <- initialValue
  }
  if(!missing(initialXValue)){
    .Object@initialXValue <- initialXValue
  }
  if(!missing(finalValue)){
    .Object@finalValue <- finalValue
  }
  if(!missing(finalXValue)){
    .Object@finalXValue <- finalXValue
  }
  if(!missing(valueAxis)){
    .Object <- setValueAxis( .Object, valueAxis )
  }
  if(!missing(valueAxisX)){
    .Object <- setValueAxis( .Object, valueAxisX )
  }
  .Object <- setProperties(.Object, ...)
  validObject(.Object)
  return( .Object )
}

# > @initialValue : setters ####

#' @exportMethod setInitialValue
setGeneric(name = "setInitialValue",
           def = function(.Object, initialValue){ standardGeneric("setInitialValue") } )
#' @title SETTER
#' @examples
#' library(pipeR)
#' trendLine() %>>% setInitialValue(16)
#' @export
setMethod(
  f = "setInitialValue",
  signature = c("TrendLine", "numeric"),
  definition = function(.Object, initialValue)
  {
    .Object@initialValue <- initialValue
    validObject(.Object)
    return(.Object)
  }
)

# > @initialXValue : setters ####

#' @exportMethod setInitialXValue
setGeneric(name = "setInitialXValue",
           def = function(.Object, initialXValue){ standardGeneric("setInitialXValue") } )
#' @title SETTER
#' @examples
#' library(pipeR)
#' trendLine() %>>% setInitialXValue(16)
#' @export
setMethod(
  f = "setInitialXValue",
  signature = c("TrendLine", "numeric"),
  definition = function(.Object, initialXValue)
  {
    .Object@initialXValue <- initialXValue
    validObject(.Object)
    return(.Object)
  }
)

# > @finalValue : setters ####

#' @exportMethod setFinalValue
setGeneric(name = "setFinalValue",
           def = function(.Object, finalValue){ standardGeneric("setFinalValue") } )
#' @title SETTER
#' @examples
#' library(pipeR)
#' trendLine() %>>% setFinalValue(16)
#' @export
setMethod(
  f = "setFinalValue",
  signature = c("TrendLine", "numeric"),
  definition = function(.Object, finalValue)
  {
    .Object@finalValue <- finalValue
    validObject(.Object)
    return(.Object)
  }
)

# > @finalXValue : setters ####

#' @exportMethod setFinalXValue
setGeneric(name = "setFinalXValue",
           def = function(.Object, finalXValue){ standardGeneric("setFinalXValue") } )
#' @title SETTER
#' @examples
#' library(pipeR)
#' trendLine() %>>% setFinalXValue(16)
#' @export
setMethod(
  f = "setFinalXValue",
  signature = c("TrendLine", "numeric"),
  definition = function(.Object, finalXValue)
  {
    .Object@finalXValue <- finalXValue
    validObject(.Object)
    return(.Object)
  }
)

# > @valueAxis : setters ####

#' @title SETTER
#' @examples
#' library(pipeR)
#' trendLine() %>>% setValueAxis(valueAxis(title = "Hello !", axisTitleOffset = 12))
#' @export
setMethod(
  f = "setValueAxis",
  signature = c("TrendLine"),
  definition = function(.Object, valueAxis = NULL, ...)
  {
    if( is.null(valueAxis) && !missing(...) ){
      valueAxis <- valuesAxes(...)
    }
    .Object@valueAxis <- listProperties(valueAxis)
    validObject(.Object)
    return(.Object)
  }
)

# > @valueAxisX : setters ####

#' @exportMethod setValueAxisX
setGeneric(name = "setValueAxisX",
           def = function(.Object, valueAxisX = NULL, ...){ standardGeneric("setValueAxisX") } )
#' @title SETTER
#' @examples
#' library(pipeR)
#' trendLine() %>>% setValueAxisX(title = "Hello !", axisTitleOffset = 12)
#' valueAxis <- valueAxis(title = "Hello !", axisTitleOffset = 12)
#' trendLine(valueAxis = valueAxis)
#' @export
setMethod(
  f = "setValueAxisX",
  signature = c("TrendLine"),
  definition = function(.Object, valueAxisX = NULL, ...)
  {
    if( is.null(valueAxisX) && !missing(...) ){
      valueAxisX <- valueAxis(...)
    }else{}
    .Object@valueAxisX <- listProperties(valueAxisX)
    validObject(.Object)
    return(.Object)
  }
)

#' @title List properties
#' @examples
#' trendLine( initialValue = 1, valueAxis = valueAxis(axisTitleOffset = 12, tickLength = 10) )
#' @return Properties of the object in a list
#' @importFrom rlist list.append
setMethod( f = "listProperties", signature = "TrendLine",
           definition = function(.Object)
           { 
             ls <- callNextMethod()
             if( length( .Object@initialValue ) > 0 ){
               ls <- rlist::list.append(ls, initialValue = .Object@initialValue)
             }else{}
             if( length( .Object@initialXValue ) > 0 ){
               ls <- rlist::list.append(ls, initialXValue = .Object@initialXValue)
             }else{}
             if( length( .Object@finalValue ) > 0 ){
               ls <- rlist::list.append(ls, finalValue = .Object@finalValue)
             }else{}
             if( length( .Object@initialXValue ) > 0 ){
               ls <- rlist::list.append(ls, finalXValue = .Object@finalXValue)
             }else{}
             if( length( .Object@valueAxis ) > 0 ){
               ls <- rlist::list.append(ls, valueAxis = .Object@valueAxis)
             }else{}
             if( length( .Object@valueAxisX ) > 0 ){
               ls <- rlist::list.append(ls, valueAxisX = .Object@valueAxisX)
             }else{}
             return(ls)
           }
)
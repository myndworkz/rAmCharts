library(rAmCharts)
library(pipeR)

#' Associeted colors to data.frame
#' @param data : data.frame
#' @param nbclasses : number of classes
#' @param col : 3 col to use in colorRampPalette
#' @param colorby : can be "all","row","col". 
#' 
#' 
#' @return data.frame compound to original data.frame and associated color data.frame
colorData <- function(data,nbclasses=NULL,col=c("#FF0000","#FFFFFF","#0000FF"),colorby="all")
{
  
  if(colorby=="all")
  {
    classes <- quantile(sort((unlist(c(data)))),seq(from = 0, to = 1,length.out = nbclasses+1))
    framclasses <- matrix(0,nrow=nrow(data),ncol=ncol(data))
    for(i in 1:(length(classes)-1))
    {
      framclasses=framclasses+((data>=classes[i])+1-1)
    }
  }
  
  if(colorby=="col")
  {
    framclasses <- matrix(0,nrow=nrow(data),ncol=ncol(data))
    for(j in 1:ncol(data))
    {
    classes <- quantile(sort((unlist(c(data[,j])))),seq(from = 0, to = 1,length.out = nbclasses+1))

    for(i in 1:(length(classes)-1))
    {
      framclasses[,j]=framclasses[,j]+((data[,j]>=classes[i])+1-1)
    }
    }
  }
  
  if(colorby=="row")
  {
    framclasses <- matrix(0,nrow=nrow(data),ncol=ncol(data))
    for(j in 1:nrow(data))
    {
    
    classes <- quantile(sort((unlist(c(data[j,])))),seq(from = 0, to = 1,length.out = nbclasses+1))
    for(i in 1:(length(classes)-1))
    {
      framclasses[j,]=framclasses[j,]+((data[j,]>=classes[i])+1-1)
    }
    }
  }

  
  color <- colorRampPalette(col)(nbclasses)
  for(i in 1:length(color)){
    framclasses[framclasses==as.character(i)] <- color[i]
  }
  framclasses <- data.frame(framclasses)
  names(framclasses) <- paste0(names(data),"col")
  framclasses[] <- lapply(framclasses, as.character)
  cbind(data,framclasses)
}

#' Associeted constructor data.frame to initial data.frame
#' @param data : data.frame
#' 
#' @return data.frame compound to original data.frame and associated constructor data.frame
constructdata <- function(data){
  construct <- matrix(1,ncol=ncol(data)/2,nrow=nrow(data))
  construct <- data.frame(construct)
  names(construct) <- paste0(names(data)[1:(ncol(data)/2)],"construct")
  return(cbind(row=row.names(data),data,construct))
}


#' Make chart
#' @param data : data.frame
#' @param labels : TRUE FALSE, display labels
#' @param cex : size of labels
#' @param xLabelsRotation : rotation of xlabels
#' @param colorby : can be "all","row","col". 
#' @param col : 3 col to use in colorRampPalette
#' @param nbclasses : number of classes
#' 
#' 
#' @return data.frame compound to original data.frame and associated constructor data.frame
heatmap <- function(data,labels = TRUE,cex=10,main="",xLabelsRotation=45,colorby="all",col=c("#FF0000","#FFFFFF","#0000FF"), nclasses=10){

  ncate <-(ncol(data)-1)/3
  
  namecat <- names(data[,2:(ncate+1)])
  
  values <- paste0("['", paste(namecat, collapse = "','"), "']")
  
  
  chart <- sapply(namecat,
                  
                  function(x){
                    
                    amGraph(balloonText=paste0("<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[",x,"]]</b></span>"),
                            fillAlphas=0.8,labelText=if(labels){paste0("[[",x,"]]")}else{""},lineAlpha=0.3,fontSize=cex,
                            title=x,type="column",fillColorsField=paste0(x,"col"),valueField=paste0(x,"construct"))},USE.NAMES = FALSE
  )

  guides = list()
  n <- length(colnames(data[,2:(ncate+1)]))
  k <- 0
  for(i in 1:n)
  {
    k <- k +1
    guides[[k]] <- guide(id=paste0("guide",i),value=i,toValue=i,lineAlpha=1,color="#000000",lineThickness=1)
    
  }
  n <- nrow(data)
  for(i in 1:n)
  {
    
    guides[[k]] = guide(id=paste0("guide",k),category=row.names(data)[i],lineAlpha=1,color="#000000",lineThickness=1,above=TRUE,expand=TRUE)
    k <- k +1
  }

  legendlist <- list()

  if(colorby=="all")
  {

    classes <- quantile(sort((unlist(c(data[,2:(ncate+1)])))),seq(from = 0, to = 1,length.out = nclasses+1))
    color <- colorRampPalette(col)(nclasses)
    
    associated <- NULL
    for(i in 1:length(classes)-1){
      associated[i] <- paste0("[",classes[i]," , ",classes[i+1],"]")
    }
    datatemp <- data.frame(title=associated,color=color)
    for(i in 1:nrow(datatemp))
    {
      legendlist[[i]] <- list(title=as.character(datatemp[i,1]),color = as.character(datatemp[i,2]))
    }
  }else{
    legendlist[[1]]<-list(title="Low",color = as.character(col)[1])
    legendlist[[2]]<-list(title="Medium",color = as.character(col)[2])
    legendlist[[3]]<-list(title="Large",color = as.character(col)[3])
  }
  
  
  amSerialChart()%>>%
    setBalloon(borderThickness = 0) %>>%
    setDataProvider(data) %>>%
    setProperties(type="serial",theme="light",columnWidth=1,categoryField="row",gridAboveGraphs=TRUE,rotate=TRUE)%>>%
    setGuides(guides)%>>%
    addTitle(text=main)%>>%
    setLegend(data=(legendlist),markerBorderColor="#000000")%>>%
    addValueAxes(stackType="regular",axisAlpha=0,gridThickness=0,gridAlpha=1,position="left",labelRotation=xLabelsRotation,maximum=ncate,labelFunction=JS(paste0("function(value,valueString,axis){
                                                                                                           var val = ", values, ";
                                                                                                           var indice = Math.trunc(value);
                                                                                                           if(indice < val.length && value % 1 != 0){
                                                                                                           return val[indice];
                                                                                                           }else{
                                                                                                           return '';
                                                                                                           }
                                                                                                           ;}")))%>>%
    setGraphs(chart)%>>%
    setCategoryAxis(gridPosition="start",axisAlpha=1,gridThickness=0,gridAlpha=1)%>>%
    plot
  
}


#' Amchart Heat-Map
#' @param data : data.frame, should be a contingency table
#' @param nbclasses : number of classes
#' @param col : 3 col to use in colorRampPalette
#' @param labels : TRUE FALSE, display labels
#' @param cex : size of labels
#' @param main : title
#' @param xLabelsRotation : rotation of xlabels
#' @param colorby : can be "all","row","col". 
#' @param legend : TRUE or FALSE, display legend
#' 
#' @examples
#' 
#' data(USArrests, "VADeaths")
#' USArrests <- USArrests [1:10,]
#' amheatmap(USArrests)
#' amheatmap(USArrests, nclasses=5, col=c("#FF0000","#FFFFFF","#0000FF"),labels = TRUE, cex=10,main="My title",xLabelsRotation=45,colorby="all",legend = TRUE)
#' amheatmap(USArrests, nclasses=5, col=c("#FF0000","#FFFFFF","#0000FF"),labels = TRUE, cex=10,main="My title",xLabelsRotation=45,colorby="row",legend = TRUE)
#' amheatmap(USArrests, nclasses=5, col=c("#FF0000","#FFFFFF","#0000FF"),labels = TRUE, cex=10,main="My title",xLabelsRotation=45,colorby="col",legend = TRUE)
#' amheatmap(USArrests, nclasses=10, col=c("#00FF00","#FF00FF","#0000FF"),labels = TRUE, cex=10,main="My title",xLabelsRotation=45,colorby="all",legend = TRUE)
#' @return data.frame compound to original data.frame and associated constructor data.frame
#' 
#' @export
amheatmap <- function(data,nclasses=5,col=c("#FF0000","#FFFFFF","#0000FF"),labels = TRUE,  cex=10,main="",xLabelsRotation=45,colorby="all",legend = TRUE){
  data <- colorData(data,nclasses,col,colorby)
  data <- constructdata(data)
  heatmap(data,labels,cex,main,xLabelsRotation,colorby,col, nclasses)
}

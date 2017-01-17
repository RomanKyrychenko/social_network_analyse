library(RCurl)
library(httr)
library(RJSONIO)
library(dplyr)
library(gtools)

googlecode <- function(x,key){
  do.call("smartbind",lapply(x,function(y){
      y<-sub(" ", "", y)
      request <- paste0("https://maps.googleapis.com/maps/api/geocode/json?address=", y, "&key=", key)
      list <- tryCatch(fromJSON(getURL(request)), error=function(e) NULL)
      if(is.null(list)){
        a <- data_frame(
          `Назва`=NA,
          `lon`=NA,
          `lat`=NA
        )
      } 
      else if(length(list$results)==0){
        a <- data_frame(
          `Назва`=NA,
          `lon`=NA,
          `lat`=NA
        )
      } else {
        a <- data_frame(
          `Назва`=list$results[[1]]$address_components[[1]]$long_name,
          `lon`=list$results[[1]]$geometry$location[1],
          `lat`=list$results[[1]]$geometry$location[2]
        )
      }
      a
  }
  ))
}

complete <- function(directory,id=1:332){
  
  filesD<-list.files(directory,full.names = TRUE)

    dat <- data.frame()
  
  for(i in id){
   
    temp<- read.csv(filesD[i],header=TRUE)

    temp<-na.omit(temp)
    
    tNobs<-nrow(temp)
    
    dat<-rbind(dat,data.frame(i,tNobs))
    
  }
  return(dat)
}
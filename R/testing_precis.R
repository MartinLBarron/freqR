testing <- function(){
  library(freqR)
  library(dplyr)
  rm(list=ls())
  #create a dataset for testing
  df <- mtcars
  
  #create some missing variables
  df[1,1]<-NA
  df[5,1]<-NA
  df[2,2]<-NA
  
  
  # Test Summary Means ------------------------------------------------------
  test <- precis(df, mpg, cyl, disp, hp, drat, wt, qsec,vs,am, gear, carb )
  test
  test <- precis(df, mpg, cyl, disp, na.rm=F, long = T)
  test
  
  test <- precis(df, mpg, group_var = cyl, long=T) 
  test
  
  test <- precis(df, mpg, group_var = cyl)
  test
  

}


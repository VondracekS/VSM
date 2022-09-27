# Load a convert the RDATA
library(tidyverse)

rm(list=ls())

loadRData <- function(fileName){
  #loads an RData file, and returns it
  load(fileName)
  get(ls()[ls() != "fileName"])
}


convert_to_csv <- function(dataset, path_out){
  data_out <- loadRData(dataset)
  write_csv(data_out, paste0(path_out, '.csv'))
  data_out <- read_csv(paste0(path_out, '.csv'))
  
  return(data_out)
}

criminality <- convert_to_csv("./Data/Criminality.RData", "criminality")
household_educ <- convert_to_csv("./Data/Household_education.RData", "h_education")
household_marriage <- convert_to_csv("./Data/Household_marriage.RData", "h_marriage")  
film <- convert_to_csv("./Data/Movies.RData", "./Data/film")

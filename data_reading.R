# Load a convert the RDATA
library(tidyverse)
setwd("C:/Users/A200083283/OneDrive - Deutsche Telekom AG/non_DT/uni/WS_22/VSM")

rm(list=ls())

loadRData <- function(fileName){
  #loads an RData file, and returns it
  load(fileName)
  get(ls()[ls() != "fileName"])
}


convert_to_csv <- function(dataset, path_out){
  data_out <- loadRData(dataset)
  write.csv(data_out, paste0(path_out, '.csv'), row.names=TRUE)
  data_out <- read_csv(paste0(path_out, '.csv'))
  
  return(data_out)
}

criminality <- convert_to_csv("./Data/Criminality.RData", "criminality")
household_educ <- convert_to_csv("./Data/Household_education.RData", "h_education")
household_marriage <- convert_to_csv("./Data/Household_marriage.RData", "h_marriage")  
film <- convert_to_csv("./Data/Movies.RData", "./Data/film")
countries <- convert_to_csv("./Data/Countries.RData", "./Data/countries")
countries_michaela <- convert_to_csv("./Data/Countries_Michaela.RData", "./Data/countries_m")
districts <- convert_to_csv("./Data/DistrictsCR.RData", "./Data/districts_cr")
countries_new <- convert_to_csv("./Data/Countries2std.RData", "./Data/countries_new")


###########################################################
# Date: 09/21/2022
# Author: Godwin Assumaning
# Topic: Case study on marketing analytics for Recast
###########################################################

rm(list = ls(all = TRUE)) # clear work space

# A. SET R LIBRARIES

library(here)
library(ggplot2)
library(stringr)
library(lubridate)
library(plyr)
library(dplyr)
library(aweek)
library(anytime)
library(jtools)
library(janitor) #For clean_names() function
library(broom) # For parameter and model summary 
library(car) #For Durbin Watson test
library(scales)
library(gridExtra)
library(lme4)
library(caret)
library(purrr)
library(readxl)
library(writexl)
library(testit)
library(corrplot)
library(vip)
library(tidyquant)
library(formattable)

# Ingest joined data for analysis and modeling
spend_data   <- read.csv('/dbfs/FileStore/GPDS/Retailers/AMS/US-Staples/PrintHW-MM/FY22_Q4/processed/final_sales_units_data.csv')
str(model_data)
model_data <- subset(model_data, select=-c(X))

revenue_data   <- read.csv('/dbfs/FileStore/GPDS/Retailers/AMS/US-Staples/PrintHW-MM/FY22_Q4/processed/final_sales_units_data.csv')
str(model_data)
model_data <- subset(model_data, select=-c(X))

## Codes for pregnancy 

    
# Description:
    
desc <- "Pregnancy"
    
tokens <- c("pregnancy")
    
# Diagnosis codes:
library(tidyverse)
tmp1 <- read_rds("../build-truven-pregnancy/data/preg_codes/dx9_all.rds") 
tmp2 <- read_rds("../build-truven-pregnancy/data/preg_codes/dx10_all.rds") 
    
icd9_codes <- as.character(children_safe(c(tmp1)))
    
icd10_codes <- as.character(children_safe(c(tmp2)))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
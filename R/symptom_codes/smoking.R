## Codes for smoking 

    
# Description:
    
desc <- "Smoking or Tobacco Use"

tokens <- c('smoking or tobacco use')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("3051","V1582")))
    
icd10_codes <- as.character(children_safe(c("Z720","Z87891","F17","O9933",
                                            "P042","P9681","Z5731","Z7722","T652")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()

## Codes for diabetes_type1 

    
# Description:
    
desc <- "Type I Diabetes"

tokens <- c("type ii diabetes","type 1 diabetes","diabetes")
    
# Diagnosis codes:
    
icd9_codes <- as.character(c(as.character(c(children(c(paste0("250",0:9,rep(c(1,3),each=10)))))),"V5867"))
    
icd10_codes <- as.character(codeBuildr::children10("E10"))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()



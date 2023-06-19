## Codes for mrsa 

    
# Description:
    
desc <- "Methicillin Resistant Staphylococcus Aureus"

tokens <- c('methicillin resistant staphylococcus aureus')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("V090","04112","03812","48242")))
    
icd10_codes <- as.character(children_safe(c("A4102","J15212","B9562","A4902")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()

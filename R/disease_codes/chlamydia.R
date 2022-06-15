## Codes for chlamydia 

# SOURCE https://www.mdpi.com/2077-0383/11/1/71
# Description:
    
desc <- "Clamydia"
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("076","07888","07998","07988","0991",
                                           "09941","0995","098"))) %>% unique()
    
icd10_codes <- as.character(children_safe(c("A55","A56","A71","A74","A54"))) %>% unique()
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
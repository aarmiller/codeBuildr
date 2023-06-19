## Codes for ili 

    
# Description:
    
desc <- "Influenza-Like Illness"

tokens <- c('influenza-like illness')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("07999","3829","460","4619","4658",
                                           "4659","4660","487","488","486","490",
                                           "7862","7806","78060"))) %>% unique()
    
icd10_codes <- as.character(children10(c("B9789","H669","J00","J019","J069",
                                         "J09","J10","J11","J1289","J129","J18",
                                         "J209","J40","R05","R509"))) %>% unique()
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()

## Codes for interstitial_lung 

    
# Description:
    
desc <- "Interstitial Lung Disease"

tokens <- c('interstitial lung disease')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("515","516","5160","5161","5162","5168",
                                           "5071","5169","51632","51633","51634",
                                           "51635","51636","51637")))
    
icd10_codes <- as.character(children_safe(c("J84","J8410","J8489","J849","J84113","J84114",
                                            "J84115","J842","J84116","J84117",
                                            "J8417","J84170","J84178","J840","J8401",
                                            "J8402","J8403","J8409","J848","J8481",
                                            "J8482","J8483")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()

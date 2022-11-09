## Codes for sepsis10_revised 

    
# Description:
    
desc <- "Revised Sepsis ICD-10 Codes"
    
# Diagnosis codes:
    
icd9_codes <- as.character(NA)
    
icd10_codes <- as.character(children_safe(c("A039","A021","A207","A217",
                                            "A227","A239","A241","A267",
                                            "A280","A282","A327","A392",
                                            "A393","A394","A40","A400","A401",
                                            "A402","A403","A408","A409","A41",
                                            "A410","A411","A412","A413",
                                            "A415","A4150","A4151",
                                            "A4152","A4158","A418",
                                            "A4180","A4188","A419","A427",
                                            "B007","B377","P360","P361",
                                            "P362","P363","P364","P365",
                                            "P368","P369","P352","P372","P375",
                                            "A047","B9548","B956","B962","J189",
                                            "J440","N390"))) %>% unique()
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
## Codes for sepsis


# Description:

desc <- "Sepsis"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("99592","78552","0223","0362","0545",
                                           "449","7907","99591","038","6700")))

icd10_codes <- as.character(children_safe(c("A039","A021","A207","A217","A227","A239",
                                            "A241","A267","A280","A282","A327",
                                            "A392","A393","A394","A40","A41","A158","A1480","A1488",
                                            "A427","B007","B377","P36")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()

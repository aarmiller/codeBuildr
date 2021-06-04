## Codes for dyspnea


# Description:

desc <- "Dyspnea"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("7860","78600","78601","78602",
                                           "78603","78604","78605","78606",
                                           "78607","78609")))

icd10_codes <- as.character(children_safe(c("R06","R060","R0600","R0601","R0602",
                                            "R0609","R061","R062","R063","R064",
                                            "R065","R066","R067","R068","R0681",
                                            "R0682","R0683","R0689","R069")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()

## Codes for fourniers


# Description:

desc <- "Fournier's Gangrene"

tokens <- c("fournier's","fourniers","fournier's gangrene","fourniers gangrene",
            "necrotizing fasciitis of genital","necrotizing fasciitis of scrotum",
            "necrotizing fasciitis of penis","necrotizing fasciitis of perineum")

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("60883","72886","6072","6084",
                                           "61689")))

icd10_codes <- as.character(children_safe(c("N492","N493","N7689","M726","B950",
                                            "N4829")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()

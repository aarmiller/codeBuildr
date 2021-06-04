## Codes for stroke


# Description:

desc <- "Stroke"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("43301","43311","43321","43331",
                                           "43381","43391","43401","43411",
                                           "43491","436","3623")))

icd10_codes <- as.character(children_safe(c("I63","I64","H341")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()

## Codes for disturbance_of_skin


# Description:

desc <- "Disturbance of Skin"

tokens <- c('disturbance of skin',"abnormal skin sensitivity","abnormal skin sensitivity",
            "altered sensation of skin","anesthesia of skin","burning sensation of skin",
            "circumoral paresthesia","Dysesthesia","tingling sensation","hyperesthesia",
            "hyperesthesia (increased sensitivity)","hypoesthesia (reduced sensation)",
            "numbness and tingling of skin","numbness and tingling sensation of skin",
            "numbness of skin","paresthesia","pins and needles","prickling sensation",
            "prickling sensation of skin","sensation of burning of skin",
            "sensation of burning or prickling of skin","sensory disorder", 
            "burning or prickling sensation","skin sensation disturbance","Tingling sensation")

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("7820")))

icd10_codes <- as.character(children_safe(c("R20")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()

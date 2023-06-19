## Codes for pancreatitis


# Description:

desc <- "Pancreatitis"

tokens <- c('pancreatitis')

# Diagnosis codes:

icd9_codes <- children(c("5770",   # Acute Pancreatitis
                         "5771",   # Chronic Pancreatitis
                         "5772",   # Cyst and Pseudocyst
                         "5778",   # Other Specified Pancreatic Diseases
                         "5779"))   # Unspecified Pancreatic Diseases

icd10_codes <- children(c("K85",          # Acute Pancreatitis
                          "K860","K861",  # Chronic Pancreatitis
                          "K862","K863",  # Cyst and Pseudocyst
                          "K868",         # Other Specified Pancreatic Diseases
                          "K869"))         # Unspecified Pancreatic Diseases

# Procedure codes:

pr_codes_icd9 <- c("5201", "5209", "5211", "5212", "5491")

pr_codes_icd10 <- c("0F9G00Z", "0F9G0ZX", "0F9G0ZZ", "0F9G30Z", "0F9G3ZX",
                    "0F9G3ZZ", "0F9G40Z", "0F9G4ZX", "0F9G4ZZ", "0F9G80Z",
                    "0F9G8ZX", "0F9G8ZZ")

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()

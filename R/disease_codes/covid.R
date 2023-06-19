## Codes for covid


# Description:

desc <- "COVID-19"

tokens <- c("covid","covid-19","coronavirus","sars-cov-2")

# Diagnosis codes:

icd9_codes <- as.character(c())

icd10_codes <- as.character(c("U071", # 2019-nCoV acute respiratory disease
                              "Z1152", # Encounter for screening for COVID-19 (Z11.52)
                              "Z20822", # Contact with and (suspected) exposure to COVID-19 (Z20.822)
                              "Z8616", # Personal history of COVID-19 (Z86.16)
                              "M3581",  # Multisystem inflammatory syndrome (MIS) (M35.81)
                              "M3589",  # Other specified systemic involvement of connective tissue (M35.89)
                              "J1282"  # Pneumonia due to coronavirus disease 2019 (J12.82)
                              ))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()

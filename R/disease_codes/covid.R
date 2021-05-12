# Diagnosis codes for COVID-19

desc <- "COVID-19"
icd9_codes <- as.character(children(c("")))
icd10_codes <- as.character(c("U071", # 2019-nCoV acute respiratory disease
                              "Z1152", # Encounter for screening for COVID-19 (Z11.52)
                              "Z20822", # Contact with and (suspected) exposure to COVID-19 (Z20.822)
                              "Z8616", # Personal history of COVID-19 (Z86.16)
                              "M3581",  # Multisystem inflammatory syndrome (MIS) (M35.81)
                              "M3589",  # Other specified systemic involvement of connective tissue (M35.89)
                              "J1282"  # Pneumonia due to coronavirus disease 2019 (J12.82)
                              ))

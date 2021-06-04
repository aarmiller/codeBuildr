## Codes for phar_cancer


# Description:

desc <- "Pharyngeal Cancer"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("1490","1469","1619","1410","1418",
                                           "1416","1453","1454","1456","1462",
                                           "1461","1460","1463","1464","1466",
                                           "1467","1468","1481","1480","1482",
                                           "1483","1488","1489","1610","1611",
                                           "1612","1618")))

icd10_codes <- as.character(children_safe(c("C140","C109","C329","C019","C028",
                                            "C024","C051","C052","C062","C090",
                                            "C091","C098","C099","C100","C101",
                                            "C102","C103","C108","C129","C130",
                                            "C131","C132","C138","C139","C320",
                                            "C321","C322","C328")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()

## Codes for meningitis


# Description:

desc <- "Meningitis"

tokens <- c('meningitis')

# Diagnosis codes:

icd9_codes <- c(as.character(children_safe(c("00321","0270","0360","320"))),
                icd::icd9cm_hierarchy %>% 
                  tibble::as_tibble() %>% 
                  dplyr::filter(stringr::str_detect(tolower(long_desc),"meningitis"))  %>% 
                  .$code) %>% unique()


icd10_codes <- c(as.character(children_safe(c("G00","G03","A87"))),
                 codeBuildr::icd10cm_labels %>% 
                   dplyr::filter(stringr::str_detect(tolower(long_desc),"meningitis")) %>% 
                   .$code) %>% unique()

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()

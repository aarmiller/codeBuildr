## Codes for sinusitis_surgery 

    
# Description:
    
desc <- "Sinus Surgery"
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c()))
    
icd10_codes <- as.character(children_safe(c()))
    
# Procedure codes:

# UNCOMMENT TO PULL IN THE CODES
# library(tidyverse)
# tmp <- readr::read_csv("~/Data/codeBuildr_prep_data/sinus_surgery_codes.csv")
# 
# tmp %>% 
#     filter(code_type=="ICD9") %>% 
#     .$code %>% 
#     str_replace_all(pattern = "\\.",replacement = "") %>% 
#     paste(collapse = "','")
# 
# tmp %>% 
#     filter(code_type=="ICD10") %>% 
#     .$code %>% 
#     str_replace_all(pattern = "\\.",replacement = "") %>% 
#     paste(collapse = "','")
# 
# tmp %>% 
#     filter(code_type=="CPT") %>% 
#     .$code %>% 
#     str_replace_all(pattern = "\\.",replacement = "") %>% 
#     paste(collapse = "','")
    
pr_codes_icd9 <- c('2201','2211','2212','2239','2201','2211','2212','2241','2201',
                   '2211','2212','2251','2201','2211','2212','2252')
    
pr_codes_icd10 <- c('099Q00Z','099Q0ZX','099Q0ZZ','099Q30Z','099Q3ZX','099Q3ZZ',
                    '099Q40Z','099Q4ZX','099Q4ZZ','099Q70Z','099Q7ZX','099Q7ZZ',
                    '099Q80Z','099Q8ZX','099Q8ZZ','099R00Z','099R0ZX','099R0ZZ',
                    '099R30Z','099R3ZX','099R3ZZ','099R40Z','099R4ZX','099R4ZZ',
                    '099R70Z','099R7ZX','099R7ZZ','099R80Z','099R8ZX','099R8ZZ',
                    '099S00Z','099S0ZX','099S0ZZ','099S30Z','099S3ZX','099S3ZZ',
                    '099S40Z','099S4ZX','099S4ZZ','099S70Z','099S7ZX','099S7ZZ',
                    '099S80Z','099S8ZX','099S8ZZ','099T00Z','099T0ZX','099T0ZZ',
                    '099T30Z','099T3ZX','099T3ZZ','099T40Z','099T4ZX','099T4ZZ',
                    '099T70Z','099T7ZX','099T7ZZ','099T80Z','099T8ZX','099T8ZZ',
                    '099U00Z','099U0ZX','099U0ZZ','099U30Z','099U3ZX','099U3ZZ',
                    '099U40Z','099U4ZX','099U4ZZ','099U70Z','099U7ZX','099U7ZZ',
                    '099U80Z','099U8ZX','099U8ZZ','099V00Z','099V0ZX','099V0ZZ',
                    '099V30Z','099V3ZX','099V3ZZ','099V40Z','099V4ZX','099V4ZZ',
                    '099V70Z','099V7ZX','099V7ZZ','099V80Z','099V8ZX','099V8ZZ',
                    '099W00Z','099W0ZX','099W0ZZ','099W30Z','099W3ZX','099W3ZZ',
                    '099W40Z','099W4ZX','099W4ZZ','099W70Z','099W7ZX','099W7ZZ',
                    '099W80Z','099W8ZX','099W8ZZ','099X00Z','099X0ZX','099X0ZZ',
                    '099X30Z','099X3ZX','099X3ZZ','099X40Z','099X4ZX','099X4ZZ',
                    '099X70Z','099X7ZX','099X7ZZ','099X80Z','099X8ZX','099X8ZZ')
    
pr_codes_cpt <- c('70486','70487','70488','31295','31296','31297','31298',
                  '31231','31233','21235','31237','31253','31254','31255',
                  '31256','32157','31259','31267','31276','31287','31288')
    
# Medication codes
    
rx_codes <- c()

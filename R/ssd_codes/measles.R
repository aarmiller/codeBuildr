## Codes for measles 

    
# Description:
    
desc <- "Measles"
    
tokens <- c("measles")
    
# Diagnosis codes:

# tmp <- readxl::read_xlsx("~/OneDrive - University of Iowa/delay_dx_projects/measles/codes_from_phil/MeaslesSSD_ICD9.xlsx")
# 
# tmp <- tmp %>% 
#   filter(`Include (Y/N)`=="Y") %>% 
#   select(dx = `Dx Code`) %>% 
#   inner_join(codeBuildr::all_icd_labels) %>% 
#   filter(dx_ver==9L) %>% 
#   select(dx,desc)
# 
# cat(paste0("'",tmp$dx,"',", " #",tmp$desc),sep="\n")
# 
# 
# tmp <- readxl::read_xlsx("~/OneDrive - University of Iowa/delay_dx_projects/measles/codes_from_phil/MeaslesSSD_ICD10.xlsx")
# 
# tmp <- tmp %>% 
#   filter(`Include (Y/N)`=="Y") %>% 
#   select(dx = `Dx Code`) %>% 
#   inner_join(codeBuildr::all_icd_labels) %>% 
#   filter(dx_ver==10L) %>% 
#   select(dx,desc)
# 
# cat(paste0("'",tmp$dx,"',", " #",tmp$desc),sep="\n")
    
icd9_codes <- as.character(children_safe(c('0579', #Viral exanthem, unspecified
                                           '7821', #Rash and other nonspecific skin eruption
                                           '0529', #Varicella without mention of complication
                                           '78060', #Fever, unspecified
                                           'V741', #Screening examination for pulmonary tuberculosis
                                           '07999', #Unspecified viral infection
                                           '462', #Acute pharyngitis
                                           '4659', #Acute upper respiratory infections of unspecified site
                                           '0539', #Herpes zoster without mention of complication
                                           '7806', #Fever and other physiologic disturbances of temperature regulation
                                           '0578', #Other specified viral exanthemata
                                           '075', #Infectious mononucleosis
                                           'V048', #Other viral diseases
                                           '6929', #Contact dermatitis and other eczema, unspecified cause
                                           '3829', #Unspecified otitis media
                                           '486', #Pneumonia, organism unspecified
                                           '7856', #Enlargement of lymph nodes
                                           '0569', #Rubella without mention of complication
                                           '78009', #Other alteration of consciousness
                                           '7862', #Cough
                                           '4660', #Acute bronchitis
                                           '3510', #Bell's palsy
                                           '0340', #Streptococcal sore throat
                                           '4658' #Acute upper respiratory infections of other multiple sites
                                           )))
    
icd10_codes <- as.character(children_safe(c('Z111', #Encounter for screening for respiratory tuberculosis
                                            'R21', #Rash and other nonspecific skin eruption
                                            'B349', #Viral infection, unspecified
                                            'L259', #Unspecified contact dermatitis, unspecified cause
                                            'J189', #Pneumonia, unspecified organism
                                            'H6691', #Otitis media, unspecified, right ear
                                            'L309', #Dermatitis, unspecified
                                            'R05', #Cough
                                            'R509', #Fever, unspecified
                                            'J069', #Acute upper respiratory infection, unspecified
                                            'J020', #Streptococcal pharyngitis
                                            'J209', #Acute bronchitis, unspecified
                                            'J029', #Acute pharyngitis, unspecified
                                            'R590', #Localized enlarged lymph nodes
                                            'H6693', #Otitis media, unspecified, bilateral
                                            'H6692', #Otitis media, unspecified, left ear
                                            'B029', #Zoster without complications
                                            'B2790', #Infectious mononucleosis, unspecified without complication
                                            'G510', #Bell's palsy
                                            'B019', #Varicella without complication
                                            'B069' #Rubella without complication
                                            )))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
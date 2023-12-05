## Codes for dengue 

    
# Description:
    
desc <- "Dengue"
    
tokens <- c("dengue")
    
# Diagnosis codes:

# tmp <- read_csv("~/Documents/GitHub/delay_dx/params/ssd_codes/dengue/ssd_codes.csv")
# 
# tmp <- tmp %>%
#   select(dx = icd_codes,
#          dx_ver = icd_version) %>%
#   left_join(codeBuildr::all_icd_labels)
# 
# tmp9 <- tmp %>% filter(dx_ver==9)
# tmp10 <- tmp %>% filter(dx_ver==10)
# 
# cat(paste0("'",tmp9$dx,"',", " #",tmp9$desc),sep="\n")
# 
# cat(paste0("'",tmp10$dx,"',", " #",tmp10$desc),sep="\n")
    
icd9_codes <- as.character(children_safe(c('0782', #Sweating fever
                                           '33819', #Other acute pain
                                           '5362', #Persistent vomiting
                                           '71940', #Pain in joint, site unspecified
                                           '71949', #Pain in joint, multiple sites
                                           '7291', #Myalgia and myositis, unspecified
                                           '7806', #Fever and other physiologic disturbances of temperature regulation
                                           '78060', #Fever, unspecified
                                           '78061', #Fever presenting with conditions classified elsewhere
                                           '78079', #Other malaise and fatigue
                                           '78096', #Generalized pain
                                           '7821', #Rash and other nonspecific skin eruption
                                           '7840', #Headache
                                           '78701', #Nausea with vomiting
                                           '78702', #Nausea alone
                                           '78703', #Vomiting alone
                                           '78791', #Diarrhea
                                           '78900', #Abdominal pain, unspecified site
                                           '78909', #Abdominal pain, other specified site
                                           '0088', #Intestinal infection due to other organism, not elsewhere classified
                                           '0090', #Infectious colitis, enteritis, and gastroenteritis
                                           '07889', #Other specified diseases due to viruses
                                           '07989', #Other specified viral infection
                                           '07999', #Unspecified viral infection
                                           '4619', #Acute sinusitis, unspecified
                                           '462', #Acute pharyngitis
                                           '4658', #Acute upper respiratory infections of other multiple sites
                                           '4659', #Acute upper respiratory infections of unspecified site
                                           '486', #Pneumonia, organism unspecified
                                           '4871', #Influenza with other respiratory manifestations
                                           '5990', #Urinary tract infection, site not specified
                                           '7908', #Viremia, unspecified
                                           '27651', #Dehydration
                                           '2841', #Pancytopenia
                                           '2859', #Anemia, unspecified
                                           '2875', #Thrombocytopenia, unspecified
                                           '28800', #Neutropenia, unspecified
                                           '28850', #Leukocytopenia, unspecified
                                           '7904', #Nonspecific elevation of levels of transaminase or lactic acid dehydrogenase [LDH]
                                           '7948' #Nonspecific abnormal results of function study of liver
                                           )))
    
icd10_codes <- as.character(children_safe(c('M2550', #Pain in unspecified joint
                                            'M791', #Myalgia
                                            'R1010', #Upper abdominal pain, unspecified
                                            'R1030', #Lower abdominal pain, unspecified
                                            'R109', #Unspecified abdominal pain
                                            'R110', #Nausea
                                            'R1110', #Vomiting, unspecified
                                            'R1111', #Vomiting without nausea
                                            'R112', #Nausea with vomiting, unspecified
                                            'R197', #Diarrhea, unspecified
                                            'R21', #Rash and other nonspecific skin eruption
                                            'R5081', #Fever presenting with conditions classified elsewhere
                                            'R509', #Fever, unspecified
                                            'R51', #Headache
                                            'R52', #Pain, unspecified
                                            'R531', #Weakness
                                            'R5381', #Other malaise
                                            'R5383', #Other fatigue
                                            'A084', #Viral intestinal infection, unspecified
                                            'A09', #Infectious gastroenteritis and colitis, unspecified
                                            'B338', #Other specified viral diseases
                                            'B349', #Viral infection, unspecified
                                            'B9789', #Other viral agents as the cause of diseases classified elsewhere
                                            'J0190', #Acute sinusitis, unspecified
                                            'J029', #Acute pharyngitis, unspecified
                                            'J069', #Acute upper respiratory infection, unspecified
                                            'J101', #Influenza due to other identified influenza virus with other respiratory manifestations
                                            'J111', #Influenza due to unidentified influenza virus with other respiratory manifestations
                                            'J189', #Pneumonia, unspecified organism
                                            'N390', #Urinary tract infection, site not specified
                                            'D649', #Anemia, unspecified
                                            'D696', #Thrombocytopenia, unspecified
                                            'D709', #Neutropenia, unspecified
                                            'D72819', #Decreased white blood cell count, unspecified
                                            'R740', #Nonspecific elevation of levels of transaminase and lactic acid dehydrogenase [LDH]
                                            'R945' #Abnormal results of liver function studies
                                            )))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
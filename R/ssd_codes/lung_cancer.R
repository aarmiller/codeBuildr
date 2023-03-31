## Codes for lung_cancer 

    
# Description:
    
desc <- "Lung Cancer"
    
# Diagnosis codes:


# library(tidyverse)
# tmp <- read_csv("~/OneDrive - University of Iowa/Data/ssd_lists/from_phil/lung_cancer/dx9.csv") %>%
#   filter(include==1) %>%
#   distinct(code,description) %>%
#   left_join(filter(codeBuildr::all_icd_labels,dx_ver==9) %>%
#                 select(code = dx,desc))
# 
# tmp2 <- filter(tmp,is.na(desc)) %>%
#   distinct(code,desc=description) %>%
#   inner_join(filter(codeBuildr::all_icd_labels,dx_ver==9)) %>%
#   select(code=dx,desc)
# 
# tmp2 <- bind_rows(tmp %>%
#             filter(!is.na(desc)) %>%
#             select(code,desc),
#           tmp2)
# 
# cat(paste0("'",tmp2$code,"',", " #",tmp2$desc),sep="\n")
# 
# 
# tmp <- read_csv("~/OneDrive - University of Iowa/Data/ssd_lists/from_phil/lung_cancer/dx10.csv") %>%
#   filter(include==1) %>%
#   distinct(code,description) %>%
#   left_join(filter(codeBuildr::all_icd_labels,dx_ver==10) %>%
#               select(code = dx,desc))
# 
# filter(tmp,is.na(desc))
# 
# cat(paste0("'",tmp$code,"',", " #",tmp$desc),sep="\n")
    
icd9_codes <- as.character((c('7862', #Cough
                              '51889', #Other diseases of lung, not elsewhere classified
                              '78650', #Chest pain, unspecified
                              '7931', #Lung field
                              '7856', #Enlargement of lymph nodes
                              '7842', #Swelling, mass, or lump in head and neck
                              '78630', #Hemoptysis, unspecified
                              '79399', #Other nonspecific (abnormal) findings on radiological and other examinations of body structure
                              '7932', #Nonspecific (abnormal) findings on radiological and other examination of other intrathoracic organs
                              '7942', #Nonspecific abnormal results of pulmonary function study
                              'V741', #Screening examination for pulmonary tuberculosis
                              '78639', #Other hemoptysis
                              '7866', #Swelling, mass, or lump in chest
                              '7863', #Hemoptysis
                              '5193', #Other diseases of mediastinum, not elsewhere classified
                              '78321', #Loss of weight
                              '7861', #Stridor
                              '78605', #Shortness of breath
                              '5181', #Interstitial emphysema
                              '78609', #Other respiratory abnormalities
                              '51919', #Other diseases of trachea and bronchus
                              '7864', #Abnormal sputum
                              '5191', #Other diseases of trachea and bronchus, not elsewhere classified
                              '4928', #Other emphysema
                              '2391', #Neoplasm of unspecified nature of respiratory system
                              '5111', #Pleurisy with effusion, with mention of a bacterial cause other than tuberculosis
                              '5199', #Unspecified disease of respiratory system
                              '486', #Pneumonia, organism unspecified
                              '78079', #Other malaise and fatigue
                              '78659', #Other chest pain
                              '2761', #Hyposmolality and/or hyponatremia
                              '78652', #Painful respiration
                              '78600', #Respiratory abnormality, unspecified
                              '78607', #Wheezing
                              '4239', #Unspecified disease of pericardium
                              '481', #Pneumococcal pneumonia [Streptococcus pneumoniae pneumonia]
                              '5118', #Other specified forms of effusion, except tuberculous
                              '51911', #Acute bronchospasm
                              '7336', #Tietze's disease
                              '46400', #Acute laryngitis without mention of obstruction
                              '4809', #Viral pneumonia, unspecified
                              '4870', #Influenza with pneumonia
                              '485', #Bronchopneumonia, organism unspecified
                              '4871', #Influenza with other respiratory manifestations
                              '51631', #Idiopathic pulmonary fibrosis
                              '4941', #Bronchiectasis with acute exacerbation
                              '49391', #Asthma, unspecified type, with status asthmaticus
                              '7869', #Other symptoms involving respiratory system and chest
                              '4920', #Emphysematous bleb
                              '7867', #Abnormal chest sounds
                              '42823', #Acute on chronic systolic heart failure
                              '42830' #Diastolic heart failure, unspecified
                              )))
    
icd10_codes <- as.character((c('R05', #Cough
                               'R221', #Localized swelling, mass and lump, neck
                               'J180', #Bronchopneumonia, unspecified organism
                               'J984', #Other disorders of lung
                               'R634', #Abnormal weight loss
                               'J181', #Lobar pneumonia, unspecified organism
                               'R0789', #Other chest pain
                               'R062', #Wheezing
                               'J439', #Emphysema, unspecified
                               'R0781', #Pleurodynia
                               'D869', #Sarcoidosis, unspecified
                               'M940', #Chondrocostal junction syndrome [Tietze]
                               'J438', #Other emphysema
                               'I358', #Other nonrheumatic aortic valve disorders
                               'J432', #Centrilobular emphysema
                               'R0609', #Other forms of dyspnea
                               'J42', #Unspecified chronic bronchitis
                               'R229', #Localized swelling, mass and lump, unspecified
                               'R091', #Pleurisy
                               'J9801', #Acute bronchospasm
                               'R61', #Generalized hyperhidrosis
                               'J320', #Chronic maxillary sinusitis
                               'I517', #Cardiomegaly
                               'R071', #Chest pain on breathing
                               'I2720', #Pulmonary hypertension, unspecified
                               'U071', #COVID-19
                               'J411', #Mucopurulent chronic bronchitis
                               'J4541', #Moderate persistent asthma with (acute) exacerbation
                               'R918', #Other nonspecific abnormal finding of lung field
                               'R590', #Localized enlarged lymph nodes
                               'R079', #Chest pain, unspecified
                               'R042', #Hemoptysis
                               'R591', #Generalized enlarged lymph nodes
                               'R599', #Enlarged lymph nodes, unspecified
                               'R942', #Abnormal results of pulmonary function studies
                               'R069', #Unspecified abnormalities of breathing
                               'J168', #Pneumonia due to other specified infectious organisms
                               'R0602', #Shortness of breath
                               'R072', #Precordial pain
                               'J988', #Other specified respiratory disorders
                               'J398', #Other specified diseases of upper respiratory tract
                               'J208', #Acute bronchitis due to other specified organisms
                               'B349', #Viral infection, unspecified
                               'R0600', #Dyspnea, unspecified
                               'J9811', #Atelectasis
                               'J188', #Other pneumonia, unspecified organism
                               'J9819', #Other pulmonary collapse
                               'J0100', #Acute maxillary sinusitis, unspecified
                               'J90', #Pleural effusion, not elsewhere classified
                               'E871', #Hypo-osmolality and hyponatremia
                               'J918', #Pleural effusion in other conditions classified elsewhere
                               'J811', #Chronic pulmonary edema
                               'J189', #Pneumonia, unspecified organism
                               'J8410', #Pulmonary fibrosis, unspecified
                               'R490', #Dysphonia
                               'J159', #Unspecified bacterial pneumonia
                               'J0190', #Acute sinusitis, unspecified
                               'J479', #Bronchiectasis, uncomplicated
                               'J329', #Chronic sinusitis, unspecified
                               'J4540' #Moderate persistent asthma, uncomplicated
                               )))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
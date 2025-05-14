## Codes for cocci 

    
# Description:
    
desc <- "Coccidioidomycosis"
    
tokens <- c("coccidioidomycosis","cocci")
    
# Diagnosis codes:

# tmp <- read_csv("~/Documents/GitHub/delay_dx/params/ssd_codes/cocci/ssd_codes.csv")
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
    
icd9_codes <- as.character(children_safe(c('71940', #Pain in joint, site unspecified
                                           '7291', #Myalgia and myositis, unspecified
                                           '7806', #Fever and other physiologic disturbances of temperature regulation
                                           '78060', #Fever, unspecified
                                           '78061', #Fever presenting with conditions classified elsewhere
                                           '78079', #Other malaise and fatigue
                                           '7808', #Generalized hyperhidrosis
                                           '78321', #Loss of weight
                                           '7840', #Headache
                                           '78605', #Shortness of breath
                                           '78607', #Wheezing
                                           '7862', #Cough
                                           '7863', #Hemoptysis
                                           '78630', #Hemoptysis, unspecified
                                           '78650', #Chest pain, unspecified
                                           '78651', #Precordial pain
                                           '78652', #Painful respiration
                                           '78659', #Other chest pain
                                           '7869', #Other symptoms involving respiratory system and chest
                                           '78720', #Dysphagia, unspecified
                                           '78791', #Diarrhea
                                           '78900', #Abdominal pain, unspecified site
                                           '78901', #Abdominal pain, right upper quadrant
                                           '78906', #Abdominal pain, epigastric
                                           '78907', #Abdominal pain, generalized
                                           '78909', #Abdominal pain, other specified site
                                           '0389', #Unspecified septicemia
                                           '07999', #Unspecified viral infection
                                           '3229', #Meningitis, unspecified
                                           '4619', #Acute sinusitis, unspecified
                                           '462', #Acute pharyngitis
                                           '4658', #Acute upper respiratory infections of other multiple sites
                                           '4659', #Acute upper respiratory infections of unspecified site
                                           '4660', #Acute bronchitis
                                           '4739', #Unspecified sinusitis (chronic)
                                           '481', #Pneumococcal pneumonia [Streptococcus pneumoniae pneumonia]
                                           '48289', #Pneumonia due to other specified bacteria
                                           '4829', #Bacterial pneumonia, unspecified
                                           '4838', #Pneumonia due to other specified organism
                                           '485', #Bronchopneumonia, organism unspecified
                                           '486', #Pneumonia, organism unspecified
                                           '4871', #Influenza with other respiratory manifestations
                                           '490', #Bronchitis, not specified as acute or chronic
                                           '4919', #Unspecified chronic bronchitis
                                           '5130', #Abscess of lung
                                           '7908', #Viremia, unspecified
                                           '99591', #Sepsis
                                           '135', #Sarcoidosis
                                           '1623', #Malignant neoplasm of upper lobe, bronchus or lung
                                           '1625', #Malignant neoplasm of lower lobe, bronchus or lung
                                           '1629', #Malignant neoplasm of bronchus and lung, unspecified
                                           '2123', #Benign neoplasm of bronchus and lung
                                           '2357', #Neoplasm of uncertain behavior of trachea, bronchus, and lung
                                           '2391', #Neoplasm of unspecified nature of respiratory system
                                           '4239', #Unspecified disease of pericardium
                                           '4280', #Congestive heart failure, unspecified
                                           '49120', #Obstructive chronic bronchitis without exacerbation
                                           '49121', #Obstructive chronic bronchitis with (acute) exacerbation
                                           '4920', #Emphysematous bleb
                                           '4928', #Other emphysema
                                           '49300', #Extrinsic asthma, unspecified
                                           '49310', #Intrinsic asthma, unspecified
                                           '49320', #Chronic obstructive asthma, unspecified
                                           '49322', #Chronic obstructive asthma with (acute) exacerbation
                                           '49390', #Asthma, unspecified type, unspecified
                                           '49392', #Asthma, unspecified type, with (acute) exacerbation
                                           '496', #Chronic airway obstruction, not elsewhere classified
                                           '5110', #Pleurisy without mention of effusion or current tuberculosis
                                           '5111', #Pleurisy with effusion, with mention of a bacterial cause other than tuberculosis
                                           '51189', #Other specified forms of effusion, except tuberculous
                                           '514', #Pulmonary congestion and hypostasis
                                           '515', #Postinflammatory pulmonary fibrosis
                                           '51881', #Acute respiratory failure
                                           '51884', #Acute and chronic respiratory failure
                                           '51882', #Other pulmonary insufficiency, not elsewhere classified
                                           '51889', #Other diseases of lung, not elsewhere classified
                                           '51911', #Acute bronchospasm
                                           '78600', #Respiratory abnormality, unspecified
                                           '78609', #Other respiratory abnormalities
                                           '2761', #Hyposmolality and/or hyponatremia
                                           '28419', #Other pancytopenia
                                           '2875', #Thrombocytopenia, unspecified
                                           '2883', #Eosinophilia
                                           '28860', #Leukocytosis, unspecified
                                           '4293', #Cardiomegaly
                                           '5119', #Unspecified pleural effusion
                                           '5128', #Other pneumothorax and air leak
                                           '51289', #Other pneumothorax
                                           '5180', #Pulmonary collapse
                                           '5183', #Pulmonary eosinophilia
                                           '7821', #Rash and other nonspecific skin eruption
                                           '7822', #Localized superficial swelling, mass, or lump
                                           '7842', #Swelling, mass, or lump in head and neck
                                           '7850', #Tachycardia, unspecified
                                           '7856', #Enlargement of lymph nodes
                                           '7866', #Swelling, mass, or lump in chest
                                           '7931', #Lung field
                                           '79311', #Solitary pulmonary nodule
                                           '79319', #Other nonspecific abnormal finding of lung field
                                           '79902', #Hypoxemia
                                           'V741', #Screening examination for pulmonary tuberculosis
                                           '6952'  #Erythema nodosum
                                           )))
    
icd10_codes <- as.character(children_safe(c('M2550', #Pain in unspecified joint
                                            'M791', #Myalgia
                                            'R042', #Hemoptysis
                                            'R05', #Cough
                                            'R0600', #Dyspnea, unspecified
                                            'R0602', #Shortness of breath
                                            'R0609', #Other forms of dyspnea
                                            'R062', #Wheezing
                                            'R0689', #Other abnormalities of breathing
                                            'R069', #Unspecified abnormalities of breathing
                                            'R071', #Chest pain on breathing
                                            'R072', #Precordial pain
                                            'R0781', #Pleurodynia
                                            'R0782', #Intercostal pain
                                            'R0789', #Other chest pain
                                            'R079', #Chest pain, unspecified
                                            'R1010', #Upper abdominal pain, unspecified
                                            'R1011', #Right upper quadrant pain
                                            'R1013', #Epigastric pain
                                            'R102', #Pelvic and perineal pain
                                            'R1030', #Lower abdominal pain, unspecified
                                            'R1084', #Generalized abdominal pain
                                            'R109', #Unspecified abdominal pain
                                            'R5081', #Fever presenting with conditions classified elsewhere
                                            'R509', #Fever, unspecified
                                            'R51', #Headache
                                            'R531', #Weakness
                                            'R5381', #Other malaise
                                            'R5383', #Other fatigue
                                            'R61', #Generalized hyperhidrosis
                                            'R634', #Abnormal weight loss
                                            'A419', #Sepsis, unspecified organism
                                            'B349', #Viral infection, unspecified
                                            'B9789', #Other viral agents as the cause of diseases classified elsewhere
                                            'G039', #Meningitis, unspecified
                                            'J0190', #Acute sinusitis, unspecified
                                            'J020', #Streptococcal pharyngitis
                                            'J029', #Acute pharyngitis, unspecified
                                            'J069', #Acute upper respiratory infection, unspecified
                                            'J101', #Influenza due to other identified influenza virus with other respiratory manifestations
                                            'J111', #Influenza due to unidentified influenza virus with other respiratory manifestations
                                            'J13', #Pneumonia due to Streptococcus pneumoniae
                                            'J158', #Pneumonia due to other specified bacteria
                                            'J159', #Unspecified bacterial pneumonia
                                            'J168', #Pneumonia due to other specified infectious organisms
                                            'J180', #Bronchopneumonia, unspecified organism
                                            'J181', #Lobar pneumonia, unspecified organism
                                            'J182', #Hypostatic pneumonia, unspecified organism
                                            'J188', #Other pneumonia, unspecified organism
                                            'J189', #Pneumonia, unspecified organism
                                            'J208', #Acute bronchitis due to other specified organisms
                                            'J209', #Acute bronchitis, unspecified
                                            'J329', #Chronic sinusitis, unspecified
                                            'J40', #Bronchitis, not specified as acute or chronic
                                            'J851', #Abscess of lung with pneumonia
                                            'J852', #Abscess of lung without pneumonia
                                            'N390', #Urinary tract infection, site not specified
                                            'C3410', #Malignant neoplasm of upper lobe, unspecified bronchus or lung
                                            'C3411', #Malignant neoplasm of upper lobe, right bronchus or lung
                                            'C3430', #Malignant neoplasm of lower lobe, unspecified bronchus or lung
                                            'C3490', #Malignant neoplasm of unspecified part of unspecified bronchus or lung
                                            'D1430', #Benign neoplasm of unspecified bronchus and lung
                                            'D381', #Neoplasm of uncertain behavior of trachea, bronchus and lung
                                            'D491', #Neoplasm of unspecified behavior of respiratory system
                                            'D860', #Sarcoidosis of lung
                                            'D869', #Sarcoidosis, unspecified
                                            'I2789', #Other specified pulmonary heart diseases
                                            'I319', #Disease of pericardium, unspecified
                                            'I509', #Heart failure, unspecified
                                            'J42', #Unspecified chronic bronchitis
                                            'J439', #Emphysema, unspecified
                                            'J441', #Chronic obstructive pulmonary disease with (acute) exacerbation
                                            'J449', #Chronic obstructive pulmonary disease, unspecified
                                            'J4540', #Moderate persistent asthma, uncomplicated
                                            'J45901', #Unspecified asthma with (acute) exacerbation
                                            'J45909', #Unspecified asthma, uncomplicated
                                            'J45998', #Other asthma
                                            'J80', #Acute respiratory distress syndrome
                                            'J811', #Chronic pulmonary edema
                                            'J82', #Pulmonary eosinophilia, not elsewhere classified
                                            'J8410', #Pulmonary fibrosis, unspecified
                                            'J8489', #Other specified interstitial pulmonary diseases
                                            'J849', #Interstitial pulmonary disease, unspecified
                                            'J850', #Gangrene and necrosis of lung
                                            'J869', #Pyothorax without fistula
                                            'J918', #Pleural effusion in other conditions classified elsewhere
                                            'J9383', #Other pneumothorax
                                            'J941', #Fibrothorax
                                            'J948', #Other specified pleural conditions
                                            'J949', #Pleural condition, unspecified
                                            'J9600', #Acute respiratory failure, unspecified whether with hypoxia or hypercapnia
                                            'J9601', #Acute respiratory failure with hypoxia
                                            'J9621', #Acute and chronic respiratory failure with hypoxia
                                            'J9690', #Respiratory failure, unspecified, unspecified whether with hypoxia or hypercapnia
                                            'J9801', #Acute bronchospasm
                                            'J9819', #Other pulmonary collapse
                                            'J984', #Other disorders of lung
                                            'R049', #Hemorrhage from respiratory passages, unspecified
                                            'R091', #Pleurisy
                                            'D61818', #Other pancytopenia
                                            'D696', #Thrombocytopenia, unspecified
                                            'D721', #Eosinophilia
                                            'D72829', #Elevated white blood cell count, unspecified
                                            'E871', #Hypo-osmolality and hyponatremia
                                            'I517', #Cardiomegaly
                                            'J90', #Pleural effusion, not elsewhere classified
                                            'J918', #Pleural effusion in other conditions classified elsewhere
                                            'J9811', #Atelectasis
                                            'R000', #Tachycardia, unspecified
                                            'R0902', #Hypoxemia
                                            'R220', #Localized swelling, mass and lump, head
                                            'R221', #Localized swelling, mass and lump, neck
                                            'R222', #Localized swelling, mass and lump, trunk
                                            'R229', #Localized swelling, mass and lump, unspecified
                                            'R590', #Localized enlarged lymph nodes
                                            'R591', #Generalized enlarged lymph nodes
                                            'R599', #Enlarged lymph nodes, unspecified
                                            'R740', #Nonspecific elevation of levels of transaminase and lactic acid dehydrogenase [LDH]
                                            'R911', #Solitary pulmonary nodule
                                            'R918', #Other nonspecific abnormal finding of lung field
                                            'R945', #Abnormal results of liver function studies
                                            'Z111', #Encounter for screening for respiratory tuberculosis
                                            'R21',  #Rash and other nonspecific skin eruption
                                            'L52'   #Erythema nodosum
                                            )))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
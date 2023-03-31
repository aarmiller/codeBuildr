## Codes for pe 

    
# Description:
    
desc <- "Pulmonary Embolism"
    
# Diagnosis codes:

# library(tidyverse)
# tmp <- read_csv("~/OneDrive - University of Iowa/Data/ssd_lists/from_phil/pe/dx9.csv") %>%
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
# tmp <- read_csv("~/OneDrive - University of Iowa/Data/ssd_lists/from_phil/pe/dx10.csv") %>%
#   filter(include==1) %>%
#   distinct(code,description) %>%
#   left_join(filter(codeBuildr::all_icd_labels,dx_ver==10) %>%
#               select(code = dx,desc))
# 
# filter(tmp,is.na(desc))
# 
# cat(paste0("'",tmp$code,"',", " #",tmp$desc),sep="\n")
    
icd9_codes <- as.character((c('78605', #Shortness of breath
                              '78650', #Chest pain, unspecified
                              '78609', #Other respiratory abnormalities
                              '7295', #Pain in limb
                              '5180', #Pulmonary collapse
                              '72981', #Swelling of limb
                              '78659', #Other chest pain
                              '79431', #Nonspecific abnormal electrocardiogram [ECG] [EKG]
                              '7802', #Syncope and collapse
                              '42789', #Other specified cardiac dysrhythmias
                              '7850', #Tachycardia, unspecified
                              '45342', #Acute venous embolism and thrombosis of deep vessels of distal lower extremity
                              '78652', #Painful respiration
                              '78651', #Precordial pain
                              '4241', #Aortic valve disorders
                              '4168', #Other chronic pulmonary heart diseases
                              '41071', #Subendocardial infarction, initial episode of care
                              '4242', #Tricuspid valve disorders, specified as nonrheumatic
                              '4299', #Heart disease, unspecified
                              '5184', #Acute edema of lung, unspecified
                              '486', #Pneumonia, organism unspecified
                              '51881', #Acute respiratory failure
                              '79902', #Hypoxemia
                              '79319', #Other nonspecific abnormal finding of lung field
                              '514', #Pulmonary congestion and hypostasis
                              '5110', #Pleurisy without mention of effusion or current tuberculosis
                              '51882', #Other pulmonary insufficiency, not elsewhere classified
                              '78630', #Hemoptysis, unspecified
                              '4289', #Heart failure, unspecified
                              '51889', #Other diseases of lung, not elsewhere classified
                              '7931', #Lung field
                              '78600', #Respiratory abnormality, unspecified
                              '7863', #Hemoptysis
                              '4111', #Intermediate coronary syndrome
                              '78060', #Fever, unspecified
                              '33818', #Other acute postoperative pain
                              '7806', #Fever and other physiologic disturbances of temperature regulation
                              '7862', #Cough
                              '53081', #Esophageal reflux
                              '481', #Pneumococcal pneumonia [Streptococcus pneumoniae pneumonia]
                              '7808', #Generalized hyperhidrosis
                              '7932', #Nonspecific (abnormal) findings on radiological and other examination of other intrathoracic organs
                              '78079', #Other malaise and fatigue
                              '7823', #Edema
                              '71536', #Osteoarthrosis, localized, not specified whether primary or secondary, lower leg
                              '49390', #Asthma, unspecified type, unspecified
                              '78607', #Wheezing
                              '4160', #Primary pulmonary hypertension
                              '7999', #Other unknown and unspecified cause of morbidity and mortality
                              'V812', #Screening for other and unspecified cardiovascular conditions
                              '7990', #Asphyxia and hypoxemia
                              '7336', #Tietze's disease
                              '42832', #Chronic diastolic heart failure
                              '7851', #Palpitations
                              '4829', #Bacterial pneumonia, unspecified
                              '42823', #Acute on chronic systolic heart failure
                              '7867', #Abnormal chest sounds
                              '485', #Bronchopneumonia, organism unspecified
                              '48289', #Pneumonia due to other specified bacteria
                              '42831', #Acute diastolic heart failure
                              '78907', #Abdominal pain, generalized
                              '490', #Bronchitis, not specified as acute or chronic
                              '49392', #Asthma, unspecified type, with (acute) exacerbation
                              '7869', #Other symptoms involving respiratory system and chest
                              '4871' #Influenza with other respiratory manifestations
                              )))
    
icd10_codes <- as.character((c('R0602', #Shortness of breath
                               'R079', #Chest pain, unspecified
                               'R0789', #Other chest pain
                               'R000', #Tachycardia, unspecified
                               'R9431', #Abnormal electrocardiogram [ECG] [EKG]
                               'R0781', #Pleurodynia
                               'R071', #Chest pain on breathing
                               'R091', #Pleurisy
                               'R069', #Unspecified abnormalities of breathing
                               'R0682', #Tachypnea, not elsewhere classified
                               'R0603', #Acute respiratory distress
                               'R2243', #Localized swelling, mass and lump, lower limb, bilateral
                               'J9601', #Acute respiratory failure with hypoxia
                               'J9811', #Atelectasis
                               'J1282', #Pneumonia due to coronavirus disease 2019
                               'R042', #Hemoptysis
                               'J1289', #Other viral pneumonia
                               'R059', #Cough, unspecified
                               'R0600', #Dyspnea, unspecified
                               'I214', #Non-ST elevation (NSTEMI) myocardial infarction
                               'I2720', #Pulmonary hypertension, unspecified
                               'I498', #Other specified cardiac arrhythmias
                               'R0902', #Hypoxemia
                               'D72829', #Elevated white blood cell count, unspecified
                               'M79604', #Pain in right leg
                               'I4510', #Unspecified right bundle-branch block
                               'I469', #Cardiac arrest, cause unspecified
                               'R6510', #Systemic inflammatory response syndrome (SIRS) of non-infectious origin without acute organ dysfunction
                               'J90', #Pleural effusion, not elsewhere classified
                               'R918', #Other nonspecific abnormal finding of lung field
                               'M79605', #Pain in left leg
                               'R509', #Fever, unspecified
                               'U071', #COVID-19
                               'R0609', #Other forms of dyspnea
                               'R05', #Cough
                               'R600', #Localized edema
                               'M79662', #Pain in left lower leg
                               'M79661', #Pain in right lower leg
                               'R072', #Precordial pain
                               'R2242', #Localized swelling, mass and lump, left lower limb
                               'J189', #Pneumonia, unspecified organism
                               'K219', #Gastro-esophageal reflux disease without esophagitis
                               'J181', #Lobar pneumonia, unspecified organism
                               'I499', #Cardiac arrhythmia, unspecified
                               'R0689', #Other abnormalities of breathing
                               'I471', #Supraventricular tachycardia
                               'J80', #Acute respiratory distress syndrome
                               'J918', #Pleural effusion in other conditions classified elsewhere
                               'J9801', #Acute bronchospasm
                               'M940', #Chondrocostal junction syndrome [Tietze]
                               'B349', #Viral infection, unspecified
                               'M79606', #Pain in leg, unspecified
                               'I5031', #Acute diastolic (congestive) heart failure
                               'J168', #Pneumonia due to other specified infectious organisms
                               'I959', #Hypotension, unspecified
                               'K8010', #Calculus of gallbladder with chronic cholecystitis without obstruction
                               'J984', #Other disorders of lung
                               'J159', #Unspecified bacterial pneumonia
                               'I5021', #Acute systolic (congestive) heart failure
                               'A4189', #Other specified sepsis
                               'A4101', #Sepsis due to Methicillin susceptible Staphylococcus aureus
                               'I200', #Unstable angina
                               'J9691', #Respiratory failure, unspecified with hypoxia
                               'J188', #Other pneumonia, unspecified organism
                               'J45909', #Unspecified asthma, uncomplicated
                               'J9600', #Acute respiratory failure, unspecified whether with hypoxia or hypercapnia
                               'R1011', #Right upper quadrant pain
                               'R911', #Solitary pulmonary nodule
                               'J9621', #Acute and chronic respiratory failure with hypoxia
                               'J9690', #Respiratory failure, unspecified, unspecified whether with hypoxia or hypercapnia
                               'I213', #ST elevation (STEMI) myocardial infarction of unspecified site
                               'J9602', #Acute respiratory failure with hypercapnia
                               'J101', #Influenza due to other identified influenza virus with other respiratory manifestations
                               'R2241', #Localized swelling, mass and lump, right lower limb
                               'R5081', #Fever presenting with conditions classified elsewhere
                               'K8020' #Calculus of gallbladder without cholecystitis without obstruction
                               )))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
## Codes for bronchiectasis 

    
# Description:
    
desc <- ""
    
tokens <- c()
    
# Diagnosis codes:

library(tidyverse)
library(readxl)
library(icd)

# tmp <- readxl::read_xlsx("~/Data/codes_from_phil/bronchiectasis/Bronchiectasis SSD List Final for Analysis.xlsx") %>% 
#   select(Condition:`ICD-10`)
# 
# tmp9 <- tmp %>% 
#   select(Condition,`ICD-9`) %>% 
#   mutate(expand = map(`ICD-9`,~str_split(., ";")[[1]])) %>% 
#   select(Condition,expand) %>% 
#   unnest(expand) %>% 
#   mutate(expand = str_remove_all(expand," ")) %>% 
#   mutate(expand = str_remove_all(expand,"\\.")) %>% 
#   mutate(expand = str_remove_all(expand,"`")) %>% 
#   # mutate(expand = map(expand,~codeBuildr::children_safe(.))) %>% 
#   # unnest(expand) %>% 
#   rename(dx = expand) %>% 
#   distinct(dx)
# 
# tmp9 <- codeBuildr::all_icd_labels %>% 
#   filter(dx_ver==9) %>% 
#   left_join(tmp9,.) %>% 
#   select(-dx_ver,code=dx,desc)
# 
# cat(paste0("'",tmp9$code,"',", " #",tmp9$desc),sep="\n")
# 
# tmp10 <- tmp %>% 
#   select(Condition,`ICD-10`) %>% 
#   mutate(expand = map(`ICD-10`,~str_split(., ";")[[1]])) %>% 
#   select(Condition,expand) %>% 
#   unnest(expand) %>% 
#   mutate(expand = str_remove_all(expand," ")) %>% 
#   mutate(expand = str_remove_all(expand,"\\.")) %>% 
#   # mutate(expand = map(expand,~codeBuildr::children_safe(.))) %>% 
#   # unnest(expand) %>% 
#   rename(dx = expand) %>% 
#   distinct(dx)
# 
# tmp10 <- codeBuildr::all_icd_labels %>% 
#   filter(dx_ver==10) %>% 
#   left_join(tmp10,.) %>% 
#   select(-dx_ver,code=dx,desc)
# 
# cat(paste0("'",tmp10$code,"',", " #",tmp10$desc),sep="\n")
    
icd9_codes <- as.character(c('486', #Pneumonia, organism unspecified
                             '78605', #Shortness of breath
                             '78609', #Other respiratory abnormalities
                             '51889', #Other diseases of lung, not elsewhere classified
                             '78650', #Chest pain, unspecified
                             '4280', #Congestive heart failure, unspecified
                             '49121', #Obstructive chronic bronchitis with (acute) exacerbation
                             '51881', #Acute respiratory failure
                             '515', #Postinflammatory pulmonary fibrosis
                             '79902', #Hypoxemia
                             '2761', #Hyposmolality and/or hyponatremia
                             '5119', #Unspecified pleural effusion
                             '5180', #Pulmonary collapse
                             '4928', #Other emphysema
                             '51884', #Acute and chronic respiratory failure
                             '4829', #Bacterial pneumonia, unspecified
                             '49392', #Asthma, unspecified type, with (acute) exacerbation
                             '4168', #Other chronic pulmonary heart diseases
                             '28860', #Leukocytosis, unspecified
                             '49322', #Chronic obstructive asthma with (acute) exacerbation
                             '78630', #Hemoptysis, unspecified
                             '78639', #Other hemoptysis
                             '485', #Bronchopneumonia, organism unspecified
                             '42833', #Acute on chronic diastolic heart failure
                             '7994', #Cachexia
                             '4822', #Pneumonia due to Hemophilus influenzae [H. influenzae]
                             '79319', #Other nonspecific abnormal finding of lung field
                             '78060', #Fever, unspecified
                             '7931', #Lung field
                             '318', #Other specified intellectual disabilities
                             '5183', #Pulmonary eosinophilia
                             '78659', #Other chest pain
                             '7990', #Asphyxia and hypoxemia
                             '79901', #Asphyxia
                             '4830', #Pneumonia due to mycoplasma pneumoniae
                             '490', #Bronchitis, not specified as acute or chronic
                             '51882', #Other pulmonary insufficiency, not elsewhere classified
                             '4821', #Pneumonia due to Pseudomonas
                             '0391', #Pulmonary actinomycotic infection
                             '5110', #Pleurisy without mention of effusion or current tuberculosis
                             '48281', #Pneumonia due to anaerobes
                             '78064', #Chills (without fever)
                             '78607', #Wheezing
                             '481', #Pneumococcal pneumonia [Streptococcus pneumoniae pneumonia]
                             '51911', #Acute bronchospasm
                             '5070', #Pneumonitis due to inhalation of food or vomitus
                             '51631', #Idiopathic pulmonary fibrosis
                             '42823', #Acute on chronic systolic heart failure
                             '4660', #Acute bronchitis
                             '7862', #Cough
                             '48241', #Methicillin susceptible pneumonia due to Staphylococcus aureus
                             '496', #Chronic airway obstruction, not elsewhere classified
                             '5163', #Idiopathic interstitial pneumonia
                             '51634', #Respiratory bronchiolitis interstitial lung disease
                             '51632', #Idiopathic non-specific interstitial pneumonitis
                             '42830', #Diastolic heart failure, unspecified
                             '514', #Pulmonary congestion and hypostasis
                             '78600', #Respiratory abnormality, unspecified
                             '42821', #Acute systolic heart failure
                             '48289', #Pneumonia due to other specified bacteria
                             '2859', #Anemia, unspecified
                             '49390', #Asthma, unspecified type, unspecified
                             '51919', #Other diseases of trachea and bronchus
                             '4848', #Pneumonia in other infectious diseases classified elsewhere
                             '49391', #Asthma, unspecified type, with status asthmaticus
                             '4838', #Pneumonia due to other specified organism
                             '5130', #Abscess of lung
                             '42843', #Acute on chronic combined systolic and diastolic heart failure
                             '78652', #Painful respiration
                             '48242', #Methicillin resistant pneumonia due to Staphylococcus aureus
                             '4911', #Mucopurulent chronic bronchitis
                             '49312', #Intrinsic asthma with (acute) exacerbation
                             '5169', #Unspecified alveolar and parietoalveolar pneumonopathy
                             '1173', #Aspergillosis
                             '48239', #Pneumonia due to other Streptococcus
                             '49120', #Obstructive chronic bronchitis without exacerbation
                             '28529', #Anemia of other chronic disease
                             '48283', #Pneumonia due to other gram-negative bacteria
                             '49301', #Extrinsic asthma with status asthmaticus
                             '78079', #Other malaise and fatigue
                             '7864', #Abnormal sputum
                             '4918', #Other chronic bronchitis
                             '78321', #Loss of weight
                             '0319', #Unspecified diseases due to mycobacteria
                             '4809', #Viral pneumonia, unspecified
                             '48282', #Pneumonia due to escherichia coli [E. coli]
                             '4800', #Pneumonia due to adenovirus
                             '4919', #Unspecified chronic bronchitis
                             '49302', #Extrinsic asthma with (acute) exacerbation
                             '7867', #Abnormal chest sounds
                             'V1261', #Personal history of pneumonia (recurrent)
                             '7942', #Nonspecific abnormal results of pulmonary function study
                             '5198', #Other diseases of respiratory system, not elsewhere classified
                             '5184', #Acute edema of lung, unspecified
                             '4169', #Chronic pulmonary heart disease, unspecified
                             '5186', #Allergic bronchopulmonary aspergillosis
                             '51883', #Chronic respiratory failure
                             '0310', #Pulmonary diseases due to other mycobacteria
                             '49320', #Chronic obstructive asthma, unspecified
                             '46619', #Acute bronchiolitis due to other infectious organisms
                             '4910', #Simple chronic bronchitis
                             '4820', #Pneumonia due to Klebsiella pneumoniae
                             '49122', #Obstructive chronic bronchitis with acute bronchitis
                             '5178', #Lung involvement in other diseases classified elsewhere
                             '51630', #Idiopathic interstitial pneumonia, not otherwise specified
                             '99739', #Other respiratory complications
                             '42840', #Combined systolic and diastolic heart failure, unspecified
                             '118', #Opportunistic mycoses
                             '2638', #Other protein-calorie malnutrition
                             '40291', #Unspecified hypertensive heart disease with heart failure
                             '1124', #Candidiasis of lung
                             '261', #Nutritional marasmus
                             '4959', #Unspecified allergic alveolitis and pneumonitis
                             '7837', #Adult failure to thrive
                             '2639', #Unspecified protein-calorie malnutrition
                             '48230', #Pneumonia due to Streptococcus, unspecified
                             '7932', #Nonspecific (abnormal) findings on radiological and other examination of other intrathoracic organs
                             '4846', #Pneumonia in aspergillosis
                             '2630', #Malnutrition of moderate degree
                             '5111', #Pleurisy with effusion, with mention of a bacterial cause other than tuberculosis
                             '135', #Sarcoidosis
                             '4289', #Heart failure, unspecified
                             '5199', #Unspecified disease of respiratory system
                             '42820', #Systolic heart failure, unspecified
                             '9973', #Respiratory complications
                             '4801', #Pneumonia due to respiratory syncytial virus
                             '42841', #Acute combined systolic and diastolic heart failure
                             '49311', #Intrinsic asthma with status asthmaticus
                             '7869', #Other symptoms involving respiratory system and chest
                             '49321', #Chronic obstructive asthma with status asthmaticus
                             '48240', #Pneumonia due to Staphylococcus, unspecified
                             '78322', #Underweight
                             '78061', #Fever presenting with conditions classified elsewhere
                             '78491', #Postnasal drip
                             '4808', #Pneumonia due to other virus not elsewhere classified
                             '4841', #Pneumonia in cytomegalic inclusion disease
                             '2883', #Eosinophilia
                             '0312', #Disseminated due to other mycobacteria
                             '0417', #Pseudomonas infection in conditions classified elsewhere and of unspecified site
                             '4658', #Acute upper respiratory infections of other multiple sites
                             '4847' #Pneumonia in other systemic mycoses
                             ))
    
icd10_codes <- as.character(c('J189', #Pneumonia, unspecified organism
                              'J188', #Other pneumonia, unspecified organism
                              'R0602', #Shortness of breath
                              'R0600', #Dyspnea, unspecified
                              'R0609', #Other forms of dyspnea
                              'J984', #Other disorders of lung
                              'R079', #Chest pain, unspecified
                              'I509', #Heart failure, unspecified
                              'J441', #Chronic obstructive pulmonary disease with (acute) exacerbation
                              'J9601', #Acute respiratory failure with hypoxia
                              'J9602', #Acute respiratory failure with hypercapnia
                              'J9691', #Respiratory failure, unspecified with hypoxia
                              'J9692', #Respiratory failure, unspecified with hypercapnia
                              'J9600', #Acute respiratory failure, unspecified whether with hypoxia or hypercapnia
                              'J9690', #Respiratory failure, unspecified, unspecified whether with hypoxia or hypercapnia
                              'J8410', #Pulmonary fibrosis, unspecified
                              'R0902', #Hypoxemia
                              'E871', #Hypo-osmolality and hyponatremia
                              'J918', #Pleural effusion in other conditions classified elsewhere
                              'J9811', #Atelectasis
                              'J9819', #Other pulmonary collapse
                              'J438', #Other emphysema
                              'J432', #Centrilobular emphysema
                              'J439', #Emphysema, unspecified
                              'J9621', #Acute and chronic respiratory failure with hypoxia
                              'J9622', #Acute and chronic respiratory failure with hypercapnia
                              'J9620', #Acute and chronic respiratory failure, unspecified whether with hypoxia or hypercapnia
                              'J159', #Unspecified bacterial pneumonia
                              'J45901', #Unspecified asthma with (acute) exacerbation
                              'I2720', #Pulmonary hypertension, unspecified
                              'I2721', #Secondary pulmonary arterial hypertension
                              'I2723', #Pulmonary hypertension due to lung diseases and hypoxia
                              'D72829', #Elevated white blood cell count, unspecified
                              'R042', #Hemoptysis
                              'J180', #Bronchopneumonia, unspecified organism
                              'I5033', #Acute on chronic diastolic (congestive) heart failure
                              'R64', #Cachexia
                              'J14', #Pneumonia due to Hemophilus influenzae
                              'R918', #Other nonspecific abnormal finding of lung field
                              'R509', #Fever, unspecified
                              'A318', #Other mycobacterial infections
                              'J82', #Pulmonary eosinophilia, not elsewhere classified
                              'R0789', #Other chest pain
                              'R0901', #Asphyxia
                              'J157', #Pneumonia due to Mycoplasma pneumoniae
                              'J40', #Bronchitis, not specified as acute or chronic
                              'R0603', #Acute respiratory distress
                              'J151', #Pneumonia due to Pseudomonas
                              'A420', #Pulmonary actinomycosis
                              'R091', #Pleurisy
                              'J158', #Pneumonia due to other specified bacteria
                              'R6883', #Chills (without fever)
                              'R062', #Wheezing
                              'J13', #Pneumonia due to Streptococcus pneumoniae
                              'J181', #Lobar pneumonia, unspecified organism
                              'J9801', #Acute bronchospasm
                              'J690', #Pneumonitis due to inhalation of food and vomit
                              'J84112', #Idiopathic pulmonary fibrosis
                              'I5023', #Acute on chronic systolic (congestive) heart failure
                              'J20', #Acute bronchitis
                              'R05', #Cough
                              'J15211', #Pneumonia due to Methicillin susceptible Staphylococcus aureus
                              'J449', #Chronic obstructive pulmonary disease, unspecified
                              'J84111', #Idiopathic interstitial pneumonia, not otherwise specified
                              'J84115', #Respiratory bronchiolitis interstitial lung disease
                              'J84113', #Idiopathic non-specific interstitial pneumonitis
                              'I5030', #Unspecified diastolic (congestive) heart failure
                              'J811', #Chronic pulmonary edema
                              'R069', #Unspecified abnormalities of breathing
                              'I5021', #Acute systolic (congestive) heart failure
                              'D649', #Anemia, unspecified
                              'J45909', #Unspecified asthma, uncomplicated
                              'J45998', #Other asthma
                              'J9809', #Other diseases of bronchus, not elsewhere classified
                              'J17', #Pneumonia in diseases classified elsewhere
                              'J45902', #Unspecified asthma with status asthmaticus
                              'J168', #Pneumonia due to other specified infectious organisms
                              'J850', #Gangrene and necrosis of lung
                              'J851', #Abscess of lung with pneumonia
                              'J852', #Abscess of lung without pneumonia
                              'I5043', #Acute on chronic combined systolic (congestive) and diastolic (congestive) heart failure
                              'R071', #Chest pain on breathing
                              'R0781', #Pleurodynia
                              'J15212', #Pneumonia due to Methicillin resistant Staphylococcus aureus
                              'J411', #Mucopurulent chronic bronchitis
                              'J4531', #Mild persistent asthma with (acute) exacerbation
                              'J4541', #Moderate persistent asthma with (acute) exacerbation
                              'J4551', #Severe persistent asthma with (acute) exacerbation
                              'J4521', #Mild intermittent asthma with (acute) exacerbation
                              'J849', #Interstitial pulmonary disease, unspecified
                              'B441', #Other pulmonary aspergillosis
                              'B449', #Aspergillosis, unspecified
                              'B4489', #Other forms of aspergillosis
                              'J154', #Pneumonia due to other streptococci
                              'J4489', #NA
                              'D638', #Anemia in other chronic diseases classified elsewhere
                              'J156', #Pneumonia due to other Gram-negative bacteria
                              'J4532', #Mild persistent asthma with status asthmaticus
                              'J4542', #Moderate persistent asthma with status asthmaticus
                              'J4552', #Severe persistent asthma with status asthmaticus
                              'J4522', #Mild intermittent asthma with status asthmaticus
                              'R5381', #Other malaise
                              'R5383', #Other fatigue
                              'R093', #Abnormal sputum
                              'J418', #Mixed simple and mucopurulent chronic bronchitis
                              'R634', #Abnormal weight loss
                              'A319', #Mycobacterial infection, unspecified
                              'J129', #Viral pneumonia, unspecified
                              'J155', #Pneumonia due to Escherichia coli
                              'J120', #Adenoviral pneumonia
                              'J42', #Unspecified chronic bronchitis
                              'R0989', #Other specified symptoms and signs involving the circulatory and respiratory systems
                              'Z8701', #Personal history of pneumonia (recurrent)
                              'R942', #Abnormal results of pulmonary function studies
                              'J988', #Other specified respiratory disorders
                              'J22', #Unspecified acute lower respiratory infection
                              'J810', #Acute pulmonary edema
                              'I279', #Pulmonary heart disease, unspecified
                              'B4481', #Allergic bronchopulmonary aspergillosis
                              'J9611', #Chronic respiratory failure with hypoxia
                              'J9612', #Chronic respiratory failure with hypercapnia
                              'J9610', #Chronic respiratory failure, unspecified whether with hypoxia or hypercapnia
                              'A310', #Pulmonary mycobacterial infection
                              'J218', #Acute bronchiolitis due to other specified organisms
                              'J219', #Acute bronchiolitis, unspecified
                              'J410', #Simple chronic bronchitis
                              'J150', #Pneumonia due to Klebsiella pneumoniae
                              'J440', #Chronic obstructive pulmonary disease with acute lower respiratory infection
                              'I5031', #Acute diastolic (congestive) heart failure
                              'J99', #Respiratory disorders in diseases classified elsewhere
                              'J9589', #Other postprocedural complications and disorders of respiratory system, not elsewhere classified
                              'J9588', #Other intraoperative complications of respiratory system, not elsewhere classified
                              'I5040', #Unspecified combined systolic (congestive) and diastolic (congestive) heart failure
                              'B488', #Other specified mycoses
                              'E46', #Unspecified protein-calorie malnutrition
                              'I110', #Hypertensive heart disease with heart failure
                              'B371', #Pulmonary candidiasis
                              'E41', #Nutritional marasmus
                              'E43', #Unspecified severe protein-calorie malnutrition
                              'J679', #Hypersensitivity pneumonitis due to unspecified organic dust
                              'R627', #Adult failure to thrive
                              'R9389', #Abnormal findings on diagnostic imaging of other specified body structures
                              'B440', #Invasive pulmonary aspergillosis
                              'E440', #Moderate protein-calorie malnutrition
                              'J398', #Other specified diseases of upper respiratory tract
                              'J90', #Pleural effusion, not elsewhere classified
                              'D869', #Sarcoidosis, unspecified
                              'D860', #Sarcoidosis of lung
                              'J989', #Respiratory disorder, unspecified
                              'I5020', #Unspecified systolic (congestive) heart failure
                              'J95851', #Ventilator associated pneumonia
                              'J95859', #Other complication of respirator [ventilator]
                              'J121', #Respiratory syncytial virus pneumonia
                              'I5041', #Acute combined systolic (congestive) and diastolic (congestive) heart failure
                              'R0689', #Other abnormalities of breathing
                              'J1520', #Pneumonia due to staphylococcus, unspecified
                              'R636', #Underweight
                              'R5081', #Fever presenting with conditions classified elsewhere
                              'R0982', #Postnasal drip
                              'J1289', #Other viral pneumonia
                              'J1282', #Pneumonia due to coronavirus disease 2019
                              'J123', #Human metapneumovirus pneumonia
                              'B250', #Cytomegaloviral pneumonitis
                              'D721', #Eosinophilia
                              'D7210', #Eosinophilia, unspecified
                              'A312', #Disseminated mycobacterium avium-intracellulare complex (DMAC)
                              'B965', #Pseudomonas (aeruginosa) (mallei) (pseudomallei) as the cause of diseases classified elsewhere
                              'J069', #Acute upper respiratory infection, unspecified
                              'U071' #COVID-19
                              ))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
## Codes for pcp 

    
# Description:
    
desc <- "pneumocystis pneumonia"
    
tokens <- c("pneumocystis pneumonia","pcp")
    
# Diagnosis codes:

# tmp <- read_csv("~/Documents/GitHub/delay_dx/params/ssd_codes/pcp/ssd_codes.csv")
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
    
icd9_codes <- as.character(children_safe(c('7291', #Myalgia and myositis, unspecified
                                           '7806', #Fever and other physiologic disturbances of temperature regulation
                                           '78060', #Fever, unspecified
                                           '78079', #Other malaise and fatigue
                                           '78605', #Shortness of breath
                                           '78607', #Wheezing
                                           '7862', #Cough
                                           '7863', #Hemoptysis
                                           '78650', #Chest pain, unspecified
                                           '78652', #Painful respiration
                                           '78659', #Other chest pain
                                           '7869', #Other symptoms involving respiratory system and chest
                                           '78900', #Abdominal pain, unspecified site
                                           '07999', #Unspecified viral infection
                                           '389', #Hearing loss
                                           '4619', #Acute sinusitis, unspecified
                                           '462', #Acute pharyngitis
                                           '4658', #Acute upper respiratory infections of other multiple sites
                                           '4659', #Acute upper respiratory infections of unspecified site
                                           '4660', #Acute bronchitis
                                           '481', #Pneumococcal pneumonia [Streptococcus pneumoniae pneumonia]
                                           '48281', #Pneumonia due to anaerobes
                                           '48289', #Pneumonia due to other specified bacteria
                                           '4829', #Bacterial pneumonia, unspecified
                                           '4838', #Pneumonia due to other specified organism
                                           '4841', #Pneumonia in cytomegalic inclusion disease
                                           '485', #Bronchopneumonia, organism unspecified
                                           '486', #Pneumonia, organism unspecified
                                           '490', #Bronchitis, not specified as acute or chronic
                                           '785', #Symptoms involving cardiovascular system
                                           '7908', #Viremia, unspecified
                                           '99591', #Sepsis
                                           '1625', #Malignant neoplasm of lower lobe, bronchus or lung
                                           '2123', #Benign neoplasm of bronchus and lung
                                           '32723', #Obstructive sleep apnea (adult)(pediatric)
                                           '4160', #Primary pulmonary hypertension
                                           '4168', #Other chronic pulmonary heart diseases
                                           '4280', #Congestive heart failure, unspecified
                                           '49120', #Obstructive chronic bronchitis without exacerbation
                                           '49121', #Obstructive chronic bronchitis with (acute) exacerbation
                                           '49320', #Chronic obstructive asthma, unspecified
                                           '49322', #Chronic obstructive asthma with (acute) exacerbation
                                           '49390', #Asthma, unspecified type, unspecified
                                           '49392', #Asthma, unspecified type, with (acute) exacerbation
                                           '496', #Chronic airway obstruction, not elsewhere classified
                                           '5070', #Pneumonitis due to inhalation of food or vomitus
                                           '5111', #Pleurisy with effusion, with mention of a bacterial cause other than tuberculosis
                                           '51189', #Other specified forms of effusion, except tuberculous
                                           '514', #Pulmonary congestion and hypostasis
                                           '515', #Postinflammatory pulmonary fibrosis
                                           '5163', #Idiopathic interstitial pneumonia
                                           '51631', #Idiopathic pulmonary fibrosis
                                           '5168', #Other specified alveolar and parietoalveolar pneumonopathies
                                           '5169', #Unspecified alveolar and parietoalveolar pneumonopathy
                                           '5180', #Pulmonary collapse
                                           '5181', #Interstitial emphysema
                                           '51881', #Acute respiratory failure
                                           '51882', #Other pulmonary insufficiency, not elsewhere classified
                                           '51884', #Acute and chronic respiratory failure
                                           '51889', #Other diseases of lung, not elsewhere classified
                                           '78600', #Respiratory abnormality, unspecified
                                           '78609', #Other respiratory abnormalities
                                           '79311', #Solitary pulmonary nodule
                                           '28860', #Leukocytosis, unspecified
                                           '4589', #Hypotension, unspecified
                                           '5119', #Unspecified pleural effusion
                                           '5128', #Other pneumothorax and air leak
                                           '5183', #Pulmonary eosinophilia
                                           '5184', #Acute edema of lung, unspecified
                                           '78321', #Loss of weight
                                           '7856', #Enlargement of lymph nodes
                                           '7866', #Swelling, mass, or lump in chest
                                           '7931', #Lung field
                                           '79319', #Other nonspecific abnormal finding of lung field
                                           '7990', #Asphyxia and hypoxemia
                                           '79902' #Hypoxemia
                                           )))
    
icd10_codes <- as.character(children_safe(c('M791', #Myalgia
                                            'R05', #Cough
                                            'R0600', #Dyspnea, unspecified
                                            'R0602', #Shortness of breath
                                            'R0609', #Other forms of dyspnea
                                            'R062', #Wheezing
                                            'R063', #Periodic breathing
                                            'R068', #Other abnormalities of breathing
                                            'R068', #Other abnormalities of breathing
                                            'R069', #Unspecified abnormalities of breathing
                                            'R071', #Chest pain on breathing
                                            'R078', #Other chest pain
                                            'R078', #Other chest pain
                                            'R078', #Other chest pain
                                            'R079', #Chest pain, unspecified
                                            'R109', #Unspecified abdominal pain
                                            'R509', #Fever, unspecified
                                            'R531', #Weakness
                                            'R5381', #Other malaise
                                            'R5383', #Other fatigue
                                            'A419', #Sepsis, unspecified organism
                                            'B250', #Cytomegaloviral pneumonitis
                                            'B349', #Viral infection, unspecified
                                            'J019', #Acute sinusitis, unspecified
                                            'J029', #Acute pharyngitis, unspecified
                                            'J069', #Acute upper respiratory infection, unspecified
                                            'J13', #Pneumonia due to Streptococcus pneumoniae
                                            'J158', #Pneumonia due to other specified bacteria
                                            'J159', #Unspecified bacterial pneumonia
                                            'J168', #Pneumonia due to other specified infectious organisms
                                            'J180', #Bronchopneumonia, unspecified organism
                                            'J181', #Lobar pneumonia, unspecified organism
                                            'J182', #Hypostatic pneumonia, unspecified organism
                                            'J188', #Other pneumonia, unspecified organism
                                            'J189', #Pneumonia, unspecified organism
                                            'J209', #Acute bronchitis, unspecified
                                            'J40', #Bronchitis, not specified as acute or chronic
                                            'J441', #Chronic obstructive pulmonary disease with (acute) exacerbation
                                            'C3431', #Malignant neoplasm of lower lobe, right bronchus or lung
                                            'D1430', #Benign neoplasm of unspecified bronchus and lung
                                            'G4733', #Obstructive sleep apnea (adult) (pediatric)
                                            'I270', #Primary pulmonary hypertension
                                            'I272', #Other secondary pulmonary hypertension
                                            'I2789', #Other specified pulmonary heart diseases
                                            'I509', #Heart failure, unspecified
                                            'J449', #Chronic obstructive pulmonary disease, unspecified
                                            'J45901', #Unspecified asthma with (acute) exacerbation
                                            'J45909', #Unspecified asthma, uncomplicated
                                            'J690', #Pneumonitis due to inhalation of food and vomit
                                            'J80', #Acute respiratory distress syndrome
                                            'J811', #Chronic pulmonary edema
                                            'J82', #Pulmonary eosinophilia, not elsewhere classified
                                            'J8409', #Other alveolar and parieto-alveolar conditions
                                            'J8410', #Pulmonary fibrosis, unspecified
                                            'J8411', #Idiopathic interstitial pneumonia
                                            'J8489', #Other specified interstitial pulmonary diseases
                                            'J849', #Interstitial pulmonary disease, unspecified
                                            'J918', #Pleural effusion in other conditions classified elsewhere
                                            'J9819', #Other pulmonary collapse
                                            'J982', #Interstitial emphysema
                                            'J984', #Other disorders of lung
                                            'D72829', #Elevated white blood cell count, unspecified
                                            'I959', #Hypotension, unspecified
                                            'J810', #Acute pulmonary edema
                                            'J90', #Pleural effusion, not elsewhere classified
                                            'J9600', #Acute respiratory failure, unspecified whether with hypoxia or hypercapnia
                                            'J9601', #Acute respiratory failure with hypoxia
                                            'J9620', #Acute and chronic respiratory failure, unspecified whether with hypoxia or hypercapnia
                                            'J9621', #Acute and chronic respiratory failure with hypoxia
                                            'J9690', #Respiratory failure, unspecified, unspecified whether with hypoxia or hypercapnia
                                            'J9691', #Respiratory failure, unspecified with hypoxia
                                            'J9811', #Atelectasis
                                            'R0902', #Hypoxemia
                                            'R590', #Localized enlarged lymph nodes
                                            'R634', #Abnormal weight loss
                                            'R911' #Solitary pulmonary nodule
                                            )))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
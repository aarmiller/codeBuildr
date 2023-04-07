## Codes for histo 

    
# Description:
    
desc <- "Histoplasmosis"
    
# Diagnosis codes:
tmp <- read_csv("~/Documents/GitHub/delay_dx/params/ssd_codes/histo/ssd_codes.csv")

# tmp2 <- tmp %>%
#   filter(icd_version == 9) %>%
#   distinct(code = icd_codes) %>%
#   left_join(mutate(icd::icd9cm_hierarchy,code=as.character(code))) %>%
#   distinct(code,desc=short_desc)
# 
# cat(paste0("'",tmp2$code,"',", " #",tmp2$desc),sep="\n")
# 
# tmp2 <- tmp %>%
#   filter(icd_version == 10) %>%
#   distinct(code = icd_codes) %>%
#   left_join(mutate(icd::icd10cm2019,code=as.character(code))) %>%
#   distinct(code,desc=short_desc)
# 
# cat(paste0("'",tmp2$code,"',", " #",tmp2$desc),sep="\n")

    
icd9_codes <- as.character((c('7806', #Fever and other physiologic disturbances of temperature regulation
                              '78060', #Fever NOS
                              '78079', #Malaise and fatigue NEC
                              '78321', #Abnormal loss of weight
                              '7808', #Generalizd hyperhidrosis
                              '7840', #Headache
                              '78605', #Shortness of breath
                              '78607', #Wheezing
                              '7862', #Cough
                              '7863', #Hemoptysis
                              '78630', #Hemoptysis NOS
                              '78650', #Chest pain NOS
                              '78652', #Painful respiration
                              '78659', #Chest pain NEC
                              '78702', #Nausea alone
                              '78791', #Diarrhea
                              '78900', #Abdmnal pain unspcf site
                              '78901', #Abdmnal pain rt upr quad
                              '78906', #Abdmnal pain epigastric
                              '78907', #Abdmnal pain generalized
                              '010', #Primary tuberculous infection
                              '011', #Pulmonary tuberculosis
                              '012', #Other respiratory tuberculosis
                              '013', #Tuberculosis of meninges and central nervous system
                              '014', #Tuberculosis of intestines, peritoneum, and mesenteric glands
                              '015', #Tuberculosis of bones and joints
                              '016', #Tuberculosis of genitourinary system
                              '017', #Tuberculosis of other organs
                              '018', #Miliary tuberculosis
                              '07999', #Viral infection NOS
                              '4619', #Acute sinusitis NOS
                              '462', #Acute pharyngitis
                              '4658', #Acute uri mult sites NEC
                              '4659', #Acute uri NOS
                              '4660', #Acute bronchitis
                              '4739', #Chronic sinusitis NOS
                              '4829', #Bacterial pneumonia NOS
                              '486', #Pneumonia, organism NOS
                              '490', #Bronchitis NOS
                              '4919', #Chronic bronchitis NOS
                              '5130', #Abscess of lung
                              '5990', #Urin tract infection NOS
                              '7908', #Viremia NOS
                              '135', #Sarcoidosis
                              '1623', #Mal neo upper lobe lung
                              '1625', #Mal neo lower lobe lung
                              '1629', #Mal neo bronch/lung NOS
                              '2123', #Benign neo bronchus/lung
                              '2357', #Unc behav neo lung
                              '2391', #Respiratory neoplasm NOS
                              '4239', #Pericardial disease NOS
                              '4280', #CHF NOS
                              '49120', #Obst chr bronc w/o exac
                              '49121', #Obs chr bronc w(ac) exac
                              '4920', #Emphysematous bleb
                              '4928', #Emphysema NEC
                              '49320', #Chronic obst asthma NOS
                              '49322', #Ch obst asth w (ac) exac
                              '49390', #Asthma NOS
                              '496', #Chr airway obstruct NEC
                              '5110', #Pleurisy w/o effus or TB
                              '5111', #Bact pleur/effus not TB
                              '51189', #Effusion NEC exc tb
                              '514', #Pulm congest/hypostasis
                              '515', #Postinflam pulm fibrosis
                              '5169', #Alveol pneumonopathy NOS
                              '51851', #Ac resp flr fol trma/srg
                              '51853', #Ac/chr rsp flr fol tr/sg
                              '51881', #Acute respiratry failure
                              '51884', #Acute & chronc resp fail
                              '51889', #Other lung disease NEC
                              '78609', #Respiratory abnorm NEC
                              '53081', #Esophageal reflux
                              '5609', #Intestinal obstruct NOS
                              '2761', #Hyposmolality
                              '28419', #Other pancytopenia
                              '2859', #Anemia NOS
                              '2875', #Thrombocytopenia NOS
                              '28860', #Leukocytosis NOS
                              '2893', #Lymphadenitis NOS
                              '4293', #Cardiomegaly
                              '5119', #Pleural effusion NOS
                              '5128', #Other pneumothorax and air leak
                              '51289', #Other pneumothorax
                              '5180', #Pulmonary collapse
                              '5183', #Pulmonary eosinophilia
                              '5559', #Regional enteritis NOS
                              '57420', #Cholelithiasis NOS
                              '72981', #Swelling of limb
                              '7822', #Local suprficial swellng
                              '7842', #Swelling in head & neck
                              '7856', #Enlargement lymph nodes
                              '7866', #Chest swelling/mass/lump
                              '7892', #Splenomegaly
                              '7904', #Elev transaminase/ldh
                              '7931', #Lung field
                              '79311', #Solitary pulmonry nodule
                              '79319', #Ot nonsp ab fnd lung fld
                              '79902', #Hypoxemia
                              'V741' #Screening-pulmonary TB
                              )))
    
icd10_codes <- as.character((c('R042', #Hemoptysis
                               'R05', #Cough
                               'R0600', #Dyspnea, unspecified
                               'R0602', #Shortness of breath
                               'R0609', #Other forms of dyspnea
                               'R062', #Wheezing
                               'R063', #Periodic breathing
                               'R0683', #Snoring
                               'R0689', #Other abnormalities of breathing
                               'R071', #Chest pain on breathing
                               'R0781', #Pleurodynia
                               'R0782', #Intercostal pain
                               'R0789', #Other chest pain
                               'R079', #Chest pain, unspecified
                               'R1011', #Right upper quadrant pain
                               'R1013', #Epigastric pain
                               'R1084', #Generalized abdominal pain
                               'R109', #Unspecified abdominal pain
                               'R110', #Nausea
                               'R197', #Diarrhea, unspecified
                               'R509', #Fever, unspecified
                               'R51', #Headache
                               'R531', #Weakness
                               'R5381', #Other malaise
                               'R5383', #Other fatigue
                               'R61', #Generalized hyperhidrosis
                               'R634', #Abnormal weight loss
                               'A15', #Respiratory tuberculosis
                               'A17', #Tuberculosis of nervous system
                               'A18', #Tuberculosis of other organs
                               'A19', #Miliary tuberculosis
                               'B349', #Viral infection, unspecified
                               'B9789', #Oth viral agents as the cause of diseases classd elswhr
                               'G933', #Postviral fatigue syndrome
                               'J0190', #Acute sinusitis, unspecified
                               'J029', #Acute pharyngitis, unspecified
                               'J069', #Acute upper respiratory infection, unspecified
                               'J159', #Unspecified bacterial pneumonia
                               'J182', #Hypostatic pneumonia, unspecified organism
                               'J189', #Pneumonia, unspecified organism
                               'J209', #Acute bronchitis, unspecified
                               'J329', #Chronic sinusitis, unspecified
                               'J40', #Bronchitis, not specified as acute or chronic
                               'J851', #Abscess of lung with pneumonia
                               'J852', #Abscess of lung without pneumonia
                               'N390', #Urinary tract infection, site not specified
                               'R502', #Drug induced fever
                               'C3410', #Malignant neoplasm of upper lobe, unsp bronchus or lung
                               'C3411', #Malignant neoplasm of upper lobe, right bronchus or lung
                               'C3430', #Malignant neoplasm of lower lobe, unsp bronchus or lung
                               'C3490', #Malignant neoplasm of unsp part of unsp bronchus or lung
                               'D1430', #Benign neoplasm of unspecified bronchus and lung
                               'D381', #Neoplasm of uncertain behavior of trachea, bronchus and lung
                               'D491', #Neoplasm of unspecified behavior of respiratory system
                               'D649', #Anemia, unspecified
                               'D860', #Sarcoidosis of lung
                               'D869', #Sarcoidosis, unspecified
                               'I319', #Disease of pericardium, unspecified
                               'I509', #Heart failure, unspecified
                               'I889', #Nonspecific lymphadenitis, unspecified
                               'J42', #Unspecified chronic bronchitis
                               'J439', #Emphysema, unspecified
                               'J441', #Chronic obstructive pulmonary disease w (acute) exacerbation
                               'J449', #Chronic obstructive pulmonary disease, unspecified
                               'J45909', #Unspecified asthma, uncomplicated
                               'J45998', #Other asthma
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
                               'J9600', #Acute respiratory failure, unsp w hypoxia or hypercapnia
                               'J9601', #Acute respiratory failure with hypoxia
                               'J9621', #Acute and chronic respiratory failure with hypoxia
                               'J9690', #Respiratory failure, unsp, unsp w hypoxia or hypercapnia
                               'J9819', #Other pulmonary collapse
                               'J984', #Other disorders of lung
                               'R049', #Hemorrhage from respiratory passages, unspecified
                               'R091', #Pleurisy
                               'K219', #Gastro-esophageal reflux disease without esophagitis
                               'K5090', #Crohn's disease, unspecified, without complications
                               'K5660', #Unspecified intestinal obstruction
                               'K8020', #Calculus of gallbladder w/o cholecystitis w/o obstruction
                               'D61818', #Other pancytopenia
                               'D696', #Thrombocytopenia, unspecified
                               'D72829', #Elevated white blood cell count, unspecified
                               'E871', #Hypo-osmolality and hyponatremia
                               'I517', #Cardiomegaly
                               'J90', #Pleural effusion, not elsewhere classified
                               'J939', #Pneumothorax, unspecified
                               'J9811', #Atelectasis
                               'R0902', #Hypoxemia
                               'R161', #Splenomegaly, not elsewhere classified
                               'R220', #Localized swelling, mass and lump, head
                               'R221', #Localized swelling, mass and lump, neck
                               'R222', #Localized swelling, mass and lump, trunk
                               'R590', #Localized enlarged lymph nodes
                               'R591', #Generalized enlarged lymph nodes
                               'R599', #Enlarged lymph nodes, unspecified
                               'R740', #Nonspec elev of levels of transamns & lactic acid dehydrgnse
                               'R911', #Solitary pulmonary nodule
                               'R918', #Other nonspecific abnormal finding of lung field
                               'Z111' #Encounter for screening for respiratory tuberculosis
                               )))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
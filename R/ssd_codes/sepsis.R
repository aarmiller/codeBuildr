## Codes for sepsis 

    
# Description:
    
desc <- "Sepsis"
    
# Diagnosis codes:

library(tidyverse)
# tmp <- read_csv("/Volumes/Statepi_Diagnosis/grant_projects/sepsis_alg2/data/sepsis_ssd_codes.csv")
# 
# cat(paste0("'",tmp$code,"',", " #",tmp$desc),sep="\n")
    
icd9_codes <- c()
    
icd10_codes <- as.character(c('R0602', #Shortness of breath
                              'R05', #Cough
                              'R918', #Other nonspecific abnormal finding of lung field
                              'R079', #Chest pain, unspecified
                              'R109', #Unspecified abdominal pain
                              'J441', #Chronic obstructive pulmonary disease with (acute) exacerbation
                              'R509', #Fever, unspecified
                              'J9601', #Acute respiratory failure with hypoxia
                              'R531', #Weakness
                              'E860', #Dehydration
                              'E876', #Hypokalemia
                              'E871', #Hypo-osmolality and hyponatremia
                              'R0902', #Hypoxemia
                              'R4182', #Altered mental status, unspecified
                              'R0600', #Dyspnea, unspecified
                              'R112', #Nausea with vomiting, unspecified
                              'D72829', #Elevated white blood cell count, unspecified
                              'J45909', #Unspecified asthma, uncomplicated
                              'I480', #Paroxysmal atrial fibrillation
                              'R000', #Tachycardia, unspecified
                              'E872', #Acidosis
                              'U071', #COVID-19
                              'J9811', #Atelectasis
                              'R0789', #Other chest pain
                              'J9600', #Acute respiratory failure, unspecified whether with hypoxia or hypercapnia
                              'R197', #Diarrhea, unspecified
                              'R9431', #Abnormal electrocardiogram [ECG] [EKG]
                              'D696', #Thrombocytopenia, unspecified
                              'R5381', #Other malaise
                              'R55', #Syncope and collapse
                              'I959', #Hypotension, unspecified
                              'R51', #Headache
                              'N200', #Calculus of kidney
                              'L03115', #Cellulitis of right lower limb
                              'L03116', #Cellulitis of left lower limb
                              'G9340', #Encephalopathy, unspecified
                              'R5383', #Other fatigue
                              'R42', #Dizziness and giddiness
                              'R1084', #Generalized abdominal pain
                              'J209', #Acute bronchitis, unspecified
                              'M7989', #Other specified soft tissue disorders
                              'J984', #Other disorders of lung
                              'R110', #Nausea
                              'M549', #Dorsalgia, unspecified
                              'J181', #Lobar pneumonia, unspecified organism
                              'J9690', #Respiratory failure, unspecified, unspecified whether with hypoxia or hypercapnia
                              'J9621', #Acute and chronic respiratory failure with hypoxia
                              'K529', #Noninfective gastroenteritis and colitis, unspecified
                              'R7989', #Other specified abnormal findings of blood chemistry
                              'R1013', #Epigastric pain
                              'R52', #Pain, unspecified
                              'Z743', #Need for continuous supervision
                              'R1110', #Vomiting, unspecified
                              'M25552', #Pain in left hip
                              'J159', #Unspecified bacterial pneumonia
                              'R0989', #Other specified symptoms and signs involving the circulatory and respiratory systems
                              'L0390', #Cellulitis, unspecified
                              'K8020', #Calculus of gallbladder without cholecystitis without obstruction
                              'R410', #Disorientation, unspecified
                              'T814XXA', #Infection following a procedure, initial encounter
                              'N1330', #Unspecified hydronephrosis
                              'J45901', #Unspecified asthma with (acute) exacerbation
                              'K5730', #Diverticulosis of large intestine without perforation or abscess without bleeding
                              'J029', #Acute pharyngitis, unspecified
                              'J40', #Bronchitis, not specified as acute or chronic
                              'N201', #Calculus of ureter
                              'R1011', #Right upper quadrant pain
                              'M79604', #Pain in right leg
                              'B9689', #Other specified bacterial agents as the cause of diseases classified elsewhere
                              'R0689', #Other abnormalities of breathing
                              'R062', #Wheezing
                              'N10', #Acute pyelonephritis
                              'R319', #Hematuria, unspecified
                              'N3000', #Acute cystitis without hematuria
                              'N289', #Disorder of kidney and ureter, unspecified
                              'I499', #Cardiac arrhythmia, unspecified
                              'R739', #Hyperglycemia, unspecified
                              'R300', #Dysuria
                              'M79605', #Pain in left leg
                              'R1031', #Right lower quadrant pain
                              'R0609', #Other forms of dyspnea
                              'L089', #Local infection of the skin and subcutaneous tissue, unspecified
                              'R1032', #Left lower quadrant pain
                              'G43909', #Migraine, unspecified, not intractable, without status migrainosus
                              'J9602', #Acute respiratory failure with hypercapnia
                              'M791', #Myalgia
                              'J80', #Acute respiratory distress syndrome
                              'G459', #Transient cerebral ischemic attack, unspecified
                              'R030', #Elevated blood-pressure reading, without diagnosis of hypertension
                              'J1289', #Other viral pneumonia
                              'R102', #Pelvic and perineal pain
                              'K5732', #Diverticulitis of large intestine without perforation or abscess without bleeding
                              'R404', #Transient alteration of awareness
                              'J0190', #Acute sinusitis, unspecified
                              'B370', #Candidal stomatitis
                              'J1282', #Pneumonia due to coronavirus disease 2019
                              'R1030', #Lower abdominal pain, unspecified
                              'W19XXXA', #Unspecified fall, initial encounter
                              'L03119', #Cellulitis of unspecified part of limb
                              'E8339', #Other disorders of phosphorus metabolism
                              'M2550', #Pain in unspecified joint
                              'I469', #Cardiac arrest, cause unspecified
                              'K5792', #Diverticulitis of intestine, part unspecified, without perforation or abscess without bleeding
                              'B349', #Viral infection, unspecified
                              'K625', #Hemorrhage of anus and rectum
                              'I330', #Acute and subacute infective endocarditis
                              'R350', #Frequency of micturition
                              'N132', #Hydronephrosis with renal and ureteral calculous obstruction
                              'K5720', #Diverticulitis of large intestine with perforation and abscess without bleeding
                              'A4902', #Methicillin resistant Staphylococcus aureus infection, unspecified site
                              'R945', #Abnormal results of liver function studies
                              'R310', #Gross hematuria
                              'J329', #Chronic sinusitis, unspecified
                              'I951', #Orthostatic hypotension
                              'R6510', #Systemic inflammatory response syndrome (SIRS) of non-infectious origin without acute organ dysfunction
                              'F05', #Delirium due to known physiological condition
                              'K567', #Ileus, unspecified
                              'K5660', #Unspecified intestinal obstruction
                              'A4901', #Methicillin susceptible Staphylococcus aureus infection, unspecified site
                              'J188', #Other pneumonia, unspecified organism
                              'M009', #Pyogenic arthritis, unspecified
                              'K6389', #Other specified diseases of intestine
                              'R072', #Precordial pain
                              'R042', #Hemoptysis
                              'L02211', #Cutaneous abscess of abdominal wall
                              'J9691', #Respiratory failure, unspecified with hypoxia
                              'I498', #Other specified cardiac arrhythmias
                              'B9729', #Other coronavirus as the cause of diseases classified elsewhere
                              'M6282', #Rhabdomyolysis
                              'R5081', #Fever presenting with conditions classified elsewhere
                              'R0781', #Pleurodynia
                              'L0231', #Cutaneous abscess of buttock
                              'R338', #Other retention of urine
                              'J111', #Influenza due to unidentified influenza virus with other respiratory manifestations
                              'K810', #Acute cholecystitis
                              'L0291', #Cutaneous abscess, unspecified
                              'J101', #Influenza due to other identified influenza virus with other respiratory manifestations
                              'Z1159', #Encounter for screening for other viral diseases
                              'R740', #Nonspecific elevation of levels of transaminase and lactic acid dehydrogenase [LDH]
                              'R740', #Nonspecific elevation of levels of transaminase and lactic acid dehydrogenase [LDH]
                              'D72819', #Decreased white blood cell count, unspecified
                              'N3001', #Acute cystitis with hematuria
                              'E869', #Volume depletion, unspecified
                              'M25559', #Pain in unspecified hip
                              'L03113', #Cellulitis of right upper limb
                              'L03114', #Cellulitis of left upper limb
                              'K838', #Other specified diseases of biliary tract
                              'R200', #Anesthesia of skin
                              'K828', #Other specified diseases of gallbladder
                              'B999', #Unspecified infectious disease
                              'A09', #Infectious gastroenteritis and colitis, unspecified
                              'L03311', #Cellulitis of abdominal wall
                              'E861', #Hypovolemia
                              'L02415', #Cutaneous abscess of right lower limb
                              'Z03818', #Encounter for observation for suspected exposure to other biological agents ruled out
                              'R1012', #Left upper quadrant pain
                              'G061', #Intraspinal abscess and granuloma
                              'B9789', #Other viral agents as the cause of diseases classified elsewhere
                              'L02416', #Cutaneous abscess of left lower limb
                              'K5790', #Diverticulosis of intestine, part unspecified, without perforation or abscess without bleeding
                              'M79661', #Pain in right lower leg
                              'R0603', #Acute respiratory distress
                              'J0100', #Acute maxillary sinusitis, unspecified
                              'R1010', #Upper abdominal pain, unspecified
                              'M79662', #Pain in left lower leg
                              'J020', #Streptococcal pharyngitis
                              'K659', #Peritonitis, unspecified
                              'J168', #Pneumonia due to other specified infectious organisms
                              'A499', #Bacterial infection, unspecified
                              'N136', #Pyonephrosis
                              'N3289', #Other specified disorders of bladder
                              'K819', #Cholecystitis, unspecified
                              'K611', #Rectal abscess
                              'R069', #Unspecified abnormalities of breathing
                              'I248', #Other forms of acute ischemic heart disease
                              'J988', #Other specified respiratory disorders
                              'K8050', #Calculus of bile duct without cholangitis or cholecystitis without obstruction
                              'J9801', #Acute bronchospasm
                              'L02611', #Cutaneous abscess of right foot
                              'J180', #Bronchopneumonia, unspecified organism
                              'J4541', #Moderate persistent asthma with (acute) exacerbation
                              'R400', #Somnolence
                              'N202', #Calculus of kidney with calculus of ureter
                              'J129', #Viral pneumonia, unspecified
                              'K3580', #Unspecified acute appendicitis
                              'J13', #Pneumonia due to Streptococcus pneumoniae
                              'L03211', #Cellulitis of face
                              'L02214', #Cutaneous abscess of groin
                              'R0682' #Tachypnea, not elsewhere classified
                              ))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
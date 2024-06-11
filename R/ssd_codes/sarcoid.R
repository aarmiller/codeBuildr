## Codes for sarcoid 

    
# Description:
    
desc <- "Sarcoidosis"
    
# Diagnosis codes:
# library(tidyverse)
# tmp <- read_csv("~/Documents/GitHub/delay_dx/params/ssd_codes/sarcoid/ssd_codes.csv")
# 
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

# update 6/11/24
# old_codes <- codeBuildr::load_ssd_codes("sarcoid") %>% 
#   mutate(dx = code, dx_ver = ifelse(type=="icd9",9L,10L)) %>% 
#   select(dx,dx_ver) %>% 
#   inner_join(all_icd_labels) %>% 
#   inner_join(rename(all_icd_labels,dx_expand = dx)) %>% 
#   select(dx = dx_expand,dx_ver,desc)
# 
# to_add <- tribble(~dx,~dx_ver,
#                   "6961",9L,
#                   "6983",9L,
#                   "L930",10L,
#                   "L409",10L,
#                   "L4050",10L,
#                   "L929",10L) %>% 
#   inner_join(codeBuildr::all_icd_labels)
# 
# all_codes <- bind_rows(old_codes,to_add)
# 
# tmp <- all_codes %>% filter(dx_ver==9)
# cat(paste0("'",tmp$dx,"',", " #",tmp$desc),sep="\n")
# 
# tmp <- all_codes %>% filter(dx_ver==10)
# cat(paste0("'",tmp$dx,"',", " #",tmp$desc),sep="\n")
# 
# rm(all_codes,old_codes,tmp,to_add)
    
icd9_codes <- as.character(c('7856', #Enlargement of lymph nodes
                             '7866', #Swelling, mass, or lump in chest
                             '7931', #Lung field
                             '79319', #Other nonspecific abnormal finding of lung field
                             '7823', #Edema
                             '79431', #Nonspecific abnormal electrocardiogram [ECG] [EKG]
                             '2893', #Lymphadenitis, unspecified, except mesenteric
                             '79902', #Hypoxemia
                             '7821', #Rash and other nonspecific skin eruption
                             '5119', #Unspecified pleural effusion
                             '72981', #Swelling of limb
                             '5183', #Pulmonary eosinophilia
                             '79311', #Solitary pulmonary nodule
                             '7842', #Swelling, mass, or lump in head and neck
                             '7906', #Other abnormal blood chemistry
                             '5180', #Pulmonary collapse
                             '4293', #Cardiomegaly
                             '7850', #Tachycardia, unspecified
                             '7948', #Nonspecific abnormal results of function study of liver
                             'V741', #Screening examination for pulmonary tuberculosis
                             '7822', #Localized superficial swelling, mass, or lump
                             '7932', #Nonspecific (abnormal) findings on radiological and other examination of other intrathoracic organs
                             '7892', #Splenomegaly
                             '7904', #Nonspecific elevation of levels of transaminase or lactic acid dehydrogenase [LDH]
                             '7942', #Nonspecific abnormal results of pulmonary function study
                             '28860', #Leukocytosis, unspecified
                             '2875', #Thrombocytopenia, unspecified
                             '42769', #Other premature beats
                             '78930', #Abdominal or pelvic swelling, mass, or lump, unspecified site
                             '4589', #Hypotension, unspecified
                             '5128', #Other pneumothorax and air leak
                             '28850', #Leukocytopenia, unspecified
                             '78650', #Chest pain, unspecified
                             '78605', #Shortness of breath
                             '7862', #Cough
                             '78079', #Other malaise and fatigue
                             '7291', #Myalgia and myositis, unspecified
                             '78659', #Other chest pain
                             '78060', #Fever, unspecified
                             '7851', #Palpitations
                             '71947', #Pain in joint, ankle and foot
                             '71949', #Pain in joint, multiple sites
                             '7802', #Syncope and collapse
                             '71940', #Pain in joint, site unspecified
                             '78321', #Loss of weight
                             '78651', #Precordial pain
                             '78652', #Painful respiration
                             '7806', #Fever and other physiologic disturbances of temperature regulation
                             '78607', #Wheezing
                             '7869', #Other symptoms involving respiratory system and chest
                             '78630', #Hemoptysis, unspecified
                             '7863', #Hemoptysis
                             '7808', #Generalized hyperhidrosis
                             '78902', #Abdominal pain, left upper quadrant
                             '51889', #Other diseases of lung, not elsewhere classified
                             '78609', #Other respiratory abnormalities
                             '496', #Chronic airway obstruction, not elsewhere classified
                             '49390', #Asthma, unspecified type, unspecified
                             '515', #Postinflammatory pulmonary fibrosis
                             '1629', #Malignant neoplasm of bronchus and lung, unspecified
                             '51881', #Acute respiratory failure
                             '49121', #Obstructive chronic bronchitis with (acute) exacerbation
                             '49392', #Asthma, unspecified type, with (acute) exacerbation
                             '78600', #Respiratory abnormality, unspecified
                             '2357', #Neoplasm of uncertain behavior of trachea, bronchus, and lung
                             '2123', #Benign neoplasm of bronchus and lung
                             '4928', #Other emphysema
                             '514', #Pulmonary congestion and hypostasis
                             '5110', #Pleurisy without mention of effusion or current tuberculosis
                             '2391', #Neoplasm of unspecified nature of respiratory system
                             '49120', #Obstructive chronic bronchitis without exacerbation
                             '49320', #Chronic obstructive asthma, unspecified
                             '4239', #Unspecified disease of pericardium
                             '49310', #Intrinsic asthma, unspecified
                             '486', #Pneumonia, organism unspecified
                             '4660', #Acute bronchitis
                             '4659', #Acute upper respiratory infections of unspecified site
                             '490', #Bronchitis, not specified as acute or chronic
                             '6826', #Cellulitis and abscess of leg, except foot
                             '4610', #Acute maxillary sinusitis
                             '4730', #Chronic maxillary sinusitis
                             '07999', #Unspecified viral infection
                             '4829', #Bacterial pneumonia, unspecified
                             '6869', #Unspecified local infection of skin and subcutaneous tissue
                             '4919', #Unspecified chronic bronchitis
                             'V7283', #Other specified pre-operative examination
                             'V7284', #Pre-operative examination, unspecified
                             'V7281', #Pre-operative cardiovascular examination
                             '6929', #Contact dermatitis and other eczema, unspecified cause
                             '3643', #Unspecified iridocyclitis
                             '3051', #Tobacco use disorder
                             '2382', #Neoplasm of uncertain behavior of skin
                             '27542', #Hypercalcemia
                             'V726', #Laboratory examination
                             '36400', #Acute and subacute iridocyclitis, unspecified
                             '9999', #Other and unspecified complications of medical care, not elsewhere classified
                             '20280', #Other malignant lymphomas, unspecified site, extranodal and solid organ sites
                             '6952', #Erythema nodosum
                             '7149', #Unspecified inflammatory polyarthropathy
                             '36401', #Primary iridocyclitis
                             '7999', #Other unknown and unspecified cause of morbidity and mortality
                             'V7260', #Laboratory examination, unspecified
                             '37730', #Optic neuritis, unspecified
                             '7109', #Unspecified diffuse connective tissue disease
                             '36410', #Chronic iridocyclitis, unspecified
                             '3510', #Bell's palsy
                             '2410', #Nontoxic uninodular goiter
                             'V7282', #Pre-operative respiratory examination
                             '79399', #Other nonspecific (abnormal) findings on radiological and other examinations of body structure
                             '7964', #Other abnormal clinical findings
                             '6861', #Pyogenic granuloma of skin and subcutaneous tissue
                             '36320', #Chorioretinitis, unspecified
                             '36402', #Recurrent iridocyclitis
                             '37991', #Pain in or around eye
                             '7099', #Unspecified disorder of skin and subcutaneous tissue
                             '3688', #Other specified visual disturbances
                             '3682', #Diplopia
                             '7813', #Lack of coordination
                             '79579', #Other and unspecified nonspecific immunological findings
                             'V1582', #Personal history of tobacco use
                             '2392', #Neoplasm of unspecified nature of bone, soft tissue, and skin
                             'V7263', #Pre-procedural laboratory examination
                             'V718', #Observation and evaluation for other specified suspected conditions
                             'V7189', #Observation and evaluation for other specified suspected conditions
                             '4476', #Arteritis, unspecified
                             '36012', #Panuveitis
                             '7910', #Proteinuria
                             '5272', #Sialoadenitis
                             '37700', #Papilledema, unspecified
                             '71659', #Unspecified polyarthropathy or polyarthritis, multiple sites
                             '36283', #Retinal edema
                             '9953', #Allergy, unspecified, not elsewhere classified
                             '37900', #Scleritis, unspecified
                             'V725', #Radiological examination, not elsewhere classified
                             '36218', #Retinal vasculitis
                             '2290', #Benign neoplasm of lymph nodes
                             '08881', #Lyme Disease
                             '5733', #Hepatitis, unspecified
                             '37924', #Other vitreous opacities
                             '3689', #Unspecified visual disturbance
                             '3419', #Demyelinating disease of central nervous system, unspecified
                             '042', #Human immunodeficiency virus [HIV] disease
                             '2388', #Neoplasm of uncertain behavior of other specified sites
                             'V6709', #Follow-up examination, following other surgery
                             '37739', #Other optic neuritis
                             '2358', #Neoplasm of uncertain behavior of pleura, thymus, and mediastinum
                             '796', #Other nonspecific abnormal findings
                             '7969', #Other nonspecific abnormal findings
                             '4242', #Tricuspid valve disorders, specified as nonrheumatic
                             '348', #Other conditions of brain
                             '3488', #Other conditions of brain
                             '34889', #Other conditions of brain
                             '7909', #Other nonspecific findings on examination of blood
                             '79099', #Other nonspecific findings on examination of blood
                             '1991', #Other malignant neoplasm without specification of site
                             'V6759', #Other follow-up examination
                             '7930', #Nonspecific (abnormal) findings on radiological and other examination of skull and head
                             '3699', #Unspecified visual loss
                             '5121', #Iatrogenic pneumothorax
                             '3698', #Unqualified visual loss, one eye
                             '37992', #Swelling or mass of eye
                             '71699', #Arthropathy, unspecified, multiple sites
                             '71907', #Effusion of joint, ankle and foot
                             '5920', #Calculus of kidney
                             '5921', #Calculus of ureter
                             '5932', #Cyst of kidney, acquired
                             '5849', #Acute kidney failure, unspecified
                             '4278', #Other specified cardiac dysrhythmias
                             '42789', #Other specified cardiac dysrhythmias
                             '4279', #Cardiac dysrhythmia, unspecified
                             '4139', #Other and unspecified angina pectoris
                             '7852', #Undiagnosed cardiac murmurs
                             '42781', #Sinoatrial node dysfunction
                             '4270', #Paroxysmal supraventricular tachycardia
                             '4264', #Right bundle branch block
                             '5178', #Lung involvement in other diseases classified elsewhere
                             '2891', #Chronic lymphadenitis
                             '4168', #Other chronic pulmonary heart diseases
                             '5193', #Other diseases of mediastinum, not elsewhere classified
                             '4940', #Bronchiectasis without acute exacerbation
                             '5163', #Idiopathic interstitial pneumonia
                             '1970', #Secondary malignant neoplasm of lung
                             '71690', #Arthropathy, unspecified, site unspecified
                             '57420', #Calculus of gallbladder without mention of cholecystitis, without mention of obstruction
                             '5718', #Other chronic nonalcoholic liver disease
                             '5738', #Other specified disorders of liver
                             '5739', #Unspecified disorder of liver
                             '47819', #Other disease of nasal cavity and sinuses
                             '3559', #Mononeuritis of unspecified site
                             '3369', #Unspecified disease of spinal cord
                             '34830', #Encephalopathy, unspecified
                             '6961', #Other psoriasis
                             '6983' #Lichenification and lichen simplex chronicus,
                             ))
    
icd10_codes <- as.character(c('R590', #Localized enlarged lymph nodes
                              'R918', #Other nonspecific abnormal finding of lung field
                              'R591', #Generalized enlarged lymph nodes
                              'R911', #Solitary pulmonary nodule
                              'R599', #Enlarged lymph nodes, unspecified
                              'R9431', #Abnormal electrocardiogram [ECG] [EKG]
                              'R938', #Abnormal findings on diagnostic imaging of other specified body structures
                              'R9389', #Abnormal findings on diagnostic imaging of other specified body structures
                              'R000', #Tachycardia, unspecified
                              'J90', #Pleural effusion, not elsewhere classified
                              'R0902', #Hypoxemia
                              'J9811', #Atelectasis
                              'I517', #Cardiomegaly
                              'R798', #Other specified abnormal findings of blood chemistry
                              'R7989', #Other specified abnormal findings of blood chemistry
                              'D72829', #Elevated white blood cell count, unspecified
                              'R748', #Abnormal levels of other serum enzymes
                              'R001', #Bradycardia, unspecified
                              'R161', #Splenomegaly, not elsewhere classified
                              'E871', #Hypo-osmolality and hyponatremia
                              'D696', #Thrombocytopenia, unspecified
                              'R222', #Localized swelling, mass and lump, trunk
                              'R221', #Localized swelling, mass and lump, neck
                              'J939', #Pneumothorax, unspecified
                              'R0602', #Shortness of breath
                              'R05', #Cough
                              'R079', #Chest pain, unspecified
                              'R078', #Other chest pain
                              'R0789', #Other chest pain
                              'R0600', #Dyspnea, unspecified
                              'R51', #Headache
                              'R109', #Unspecified abdominal pain
                              'R5383', #Other fatigue
                              'R509', #Fever, unspecified
                              'M6281', #Muscle weakness (generalized)
                              'R531', #Weakness
                              'M2550', #Pain in unspecified joint
                              'R55', #Syncope and collapse
                              'R002', #Palpitations
                              'R202', #Paresthesia of skin
                              'R21', #Rash and other nonspecific skin eruption
                              'R0609', #Other forms of dyspnea
                              'R634', #Abnormal weight loss
                              'R4182', #Altered mental status, unspecified
                              'R200', #Anesthesia of skin
                              'R110', #Nausea
                              'R1084', #Generalized abdominal pain
                              'M549', #Dorsalgia, unspecified
                              'M791', #Myalgia
                              'R1011', #Right upper quadrant pain
                              'R5381', #Other malaise
                              'R062', #Wheezing
                              'R042', #Hemoptysis
                              'R098', #Other specified symptoms and signs involving the circulatory and respiratory systems
                              'R0989', #Other specified symptoms and signs involving the circulatory and respiratory systems
                              'M79605', #Pain in left leg
                              'R0781', #Pleurodynia
                              'R068', #Other abnormalities of breathing
                              'R0689', #Other abnormalities of breathing
                              'R072', #Precordial pain
                              'J449', #Chronic obstructive pulmonary disease, unspecified
                              'J984', #Other disorders of lung
                              'J45909', #Unspecified asthma, uncomplicated
                              'J8410', #Pulmonary fibrosis, unspecified
                              'J849', #Interstitial pulmonary disease, unspecified
                              'J9601', #Acute respiratory failure with hypoxia
                              'J441', #Chronic obstructive pulmonary disease with (acute) exacerbation
                              'J811', #Chronic pulmonary edema
                              'J45901', #Unspecified asthma with (acute) exacerbation
                              'J18', #Pneumonia, unspecified organism
                              'J189', #Pneumonia, unspecified organism
                              'J209', #Acute bronchitis, unspecified
                              'J069', #Acute upper respiratory infection, unspecified
                              'J40', #Bronchitis, not specified as acute or chronic
                              'J329', #Chronic sinusitis, unspecified
                              'B349', #Viral infection, unspecified
                              'G039', #Meningitis, unspecified
                              'Z01818', #Encounter for other preprocedural examination
                              'E8352', #Hypercalcemia
                              'F17210', #Nicotine dependence, cigarettes, uncomplicated
                              'I888', #Other nonspecific lymphadenitis
                              'M064', #Inflammatory polyarthropathy
                              'Z01810', #Encounter for preprocedural cardiovascular examination
                              'H209', #Unspecified iridocyclitis
                              'Z2082', #Contact with and (suspected) exposure to other viral communicable diseases
                              'Z20828', #Contact with and (suspected) exposure to other viral communicable diseases
                              'Z01812', #Encounter for preprocedural laboratory examination
                              'F17200', #Nicotine dependence, unspecified, uncomplicated
                              'I429', #Cardiomyopathy, unspecified
                              'Z87891', #Personal history of nicotine dependence
                              'L929', #Granulomatous disorder of the skin and subcutaneous tissue, unspecified
                              'L52', #Erythema nodosum
                              'M797', #Fibromyalgia
                              'I898', #Other specified noninfective disorders of lymphatic vessels and lymph nodes
                              'D485', #Neoplasm of uncertain behavior of skin
                              'H469', #Unspecified optic neuritis
                              'Z48813', #Encounter for surgical aftercare following surgery on the respiratory system
                              'L309', #Dermatitis, unspecified
                              'D898', #Other specified disorders involving the immune mechanism, not elsewhere classified
                              'D8989', #Other specified disorders involving the immune mechanism, not elsewhere classified
                              'H44112', #Panuveitis, left eye
                              'H4710', #Unspecified papilledema
                              'H538', #Other visual disturbances
                              'H04123', #Dry eye syndrome of bilateral lacrimal glands
                              'H20042', #Secondary noninfectious iridocyclitis, left eye
                              'M25572', #Pain in left ankle and joints of left foot
                              'G510', #Bell's palsy
                              'H532', #Diplopia
                              'Z115', #Encounter for screening for other viral diseases
                              'Z1159', #Encounter for screening for other viral diseases
                              'M25571', #Pain in right ankle and joints of right foot
                              'H21513', #Anterior synechiae (iris), bilateral
                              'H542', #Low vision, both eyes
                              'H2000', #Unspecified acute and subacute iridocyclitis
                              'H468', #Other optic neuritis
                              'C411', #Malignant neoplasm of mandible
                              'H7090', #Unspecified mastoiditis, unspecified ear
                              'M359', #Systemic involvement of connective tissue, unspecified
                              'D360', #Benign neoplasm of lymph nodes
                              'H20012', #Primary iridocyclitis, left eye
                              'H53133', #Sudden visual loss, bilateral
                              'H20011', #Primary iridocyclitis, right eye
                              'H44111', #Panuveitis, right eye
                              'I313', #Pericardial effusion (noninflammatory)
                              'H4922', #Sixth [abducent] nerve palsy, left eye
                              'L928', #Other granulomatous disorders of the skin and subcutaneous tissue
                              'I428', #Other cardiomyopathies
                              'M130', #Polyarthritis, unspecified
                              'C7951', #Secondary malignant neoplasm of bone
                              'L308', #Other specified dermatitis
                              'D71', #Functional disorders of polymorphonuclear neutrophils
                              'H5711', #Ocular pain, right eye
                              'H539', #Unspecified visual disturbance
                              'H20013', #Primary iridocyclitis, bilateral
                              'H20029', #Recurrent acute iridocyclitis, unspecified eye
                              'C8590', #Non-Hodgkin lymphoma, unspecified, unspecified site
                              'I469', #Cardiac arrest, cause unspecified
                              'R29810', #Facial weakness
                              'H44113', #Panuveitis, bilateral
                              'Z0001', #Encounter for general adult medical examination with abnormal findings
                              'R930', #Abnormal findings on diagnostic imaging of skull and head, not elsewhere classified
                              'R846', #Abnormal cytological findings in specimens from respiratory organs and thorax
                              'N12', #Tubulo-interstitial nephritis, not specified as acute or chronic
                              'Z862', #Personal history of diseases of the blood and blood-forming organs and certain disorders involving the immune mechanism
                              'D1431', #Benign neoplasm of right bronchus and lung
                              'R768', #Other specified abnormal immunological findings in serum
                              'Z018', #Encounter for other specified special examinations
                              'Z0189', #Encounter for other specified special examinations
                              'H3091', #Unspecified chorioretinal inflammation, right eye
                              'N200', #Calculus of kidney
                              'N201', #Calculus of ureter
                              'N179', #Acute kidney failure, unspecified
                              'I472', #Ventricular tachycardia
                              'I499', #Cardiac arrhythmia, unspecified
                              'I493', #Ventricular premature depolarization
                              'I471', #Supraventricular tachycardia
                              'I442', #Atrioventricular block, complete
                              'J479', #Bronchiectasis, uncomplicated
                              'M798', #Other specified soft tissue disorders
                              'M7989', #Other specified soft tissue disorders
                              'E860', #Dehydration
                              'K8020', #Calculus of gallbladder without cholecystitis without obstruction
                              'J4520', #Mild intermittent asthma, uncomplicated
                              'G629', #Polyneuropathy, unspecified
                              'G9340', #Encephalopathy, unspecified
                              'I889', #Nonspecific lymphadenitis, unspecified
                              'I2699', #Other pulmonary embolism without acute cor pulmonale
                              'L930', #Discoid lupus erythematosus
                              'L409', #Psoriasis, unspecified
                              'L4050', #Arthropathic psoriasis, unspecified
                              'L929' #Granulomatous disorder of the skin and subcutaneous tissue, unspecified
                              ))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
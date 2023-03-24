## Codes for endocarditis 

    
# Description:
    
desc <- "Endocarditis"
    
# Diagnosis codes:

# tmp <- read_csv("~/Documents/GitHub/delay_dx/params/fix_codes/endocarditis/current_ssd_codes.csv")
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
    
icd9_codes <- as.character((c('78002', #Trans alter awareness
                              '33819', #Acute pain NEC
                              '71940', #Joint pain-unspec
                              '71949', #Joint pain-mult jts
                              '7242', #Lumbago
                              '7245', #Backache NOS
                              '7291', #Myalgia and myositis NOS
                              '7802', #Syncope and collapse
                              '7804', #Dizziness and giddiness
                              '7806', #Fever and other physiologic disturbances of temperature regulation
                              '78060', #Fever NOS
                              '78079', #Malaise and fatigue NEC
                              '78097', #Altered mental status
                              '78321', #Abnormal loss of weight
                              '7840', #Headache
                              '7859', #Cardiovas sys symp NEC
                              '78605', #Shortness of breath
                              '7862', #Cough
                              '78630', #Hemoptysis NOS
                              '78650', #Chest pain NOS
                              '78651', #Precordial pain
                              '78659', #Chest pain NEC
                              '7869', #Resp sys/chest symp NEC
                              '78900', #Abdmnal pain unspcf site
                              '78907', #Abdmnal pain generalized
                              '78909', #Abdmnal pain oth spcf st
                              '389', #Hearing loss
                              '7999', #Unkn cause morb/mort NEC
                              '4619', #Acute sinusitis NOS
                              '4658', #Acute uri mult sites NEC
                              '4659', #Acute uri NOS
                              '4660', #Acute bronchitis
                              '4739', #Chronic sinusitis NOS
                              '4829', #Bacterial pneumonia NOS
                              '486', #Pneumonia, organism NOS
                              '490', #Bronchitis NOS
                              '78552', #Septic shock
                              '99591', #Sepsis
                              '99592', #Severe sepsis
                              '41519', #Pulm embol/infarct NEC
                              '49392', #Asthma NOS w (ac) exac
                              '5070', #Food/vomit pneumonitis
                              '514', #Pulm congest/hypostasis
                              '5184', #Acute lung edema NOS
                              '51881', #Acute respiratry failure
                              '51882', #Other pulmonary insuff
                              '51889', #Other lung disease NEC
                              '78609', #Respiratory abnorm NEC
                              '41071', #Subendo infarct, initial
                              '41091', #AMI NOS, initial
                              '4111', #Intermed coronary synd
                              '4139', #Angina pectoris NEC/NOS
                              '4260', #Atriovent block complete
                              '42611', #Atriovent block-1st degr
                              '4263', #Left bb block NEC
                              '4264', #Rt bundle branch block
                              '42821', #Ac systolic hrt failure
                              '42831', #Ac diastolic hrt failure
                              '4292', #Ascvd
                              '7852', #Cardiac murmurs NEC
                              '4359', #Trans cereb ischemia NOS
                              '436', #Cva
                              '4371', #Ac cerebrovasc insuf NOS
                              '78009', #Other alter consciousnes
                              '7140', #Rheumatoid arthritis
                              '4589', #Hypotension NOS
                              '7821', #Nonspecif skin erupt NEC
                              '7850', #Tachycardia NOS
                              '7867', #Abnormal chest sounds
                              '7931', #Lung field
                              '79319', #Ot nonsp ab fnd lung fld
                              '79902', #Hypoxemia
                              'V812' #Screen-cardiovasc NEC
                              )))
    
icd10_codes <- as.character((c('M255', #Pain in joint
                               'M548', #Other dorsalgia
                               'M549', #Dorsalgia, unspecified
                               'M791', #Myalgia
                               'R042', #Hemoptysis
                               'R05', #Cough
                               'R060', #Dyspnea
                               'R068', #Other abnormalities of breathing
                               'R072', #Precordial pain
                               'R078', #Other chest pain
                               'R079', #Chest pain, unspecified
                               'R098', #Oth symptoms and signs involving the circ and resp systems
                               'R101', #Pain localized to upper abdomen
                               'R103', #Pain localized to other parts of lower abdomen
                               'R108', #Other abdominal pain
                               'R109', #Unspecified abdominal pain
                               'R400', #Somnolence
                               'R401', #Stupor
                               'R404', #Transient alteration of awareness
                               'R410', #Disorientation, unspecified
                               'R418', #Oth symptoms and signs w cognitive functions and awareness
                               'R42', #Dizziness and giddiness
                               'R509', #Fever, unspecified
                               'R51', #Headache
                               'R531', #Weakness
                               'R538', #Other malaise and fatigue
                               'R55', #Syncope and collapse
                               'R634', #Abnormal weight loss
                               'A419', #Sepsis, unspecified organism
                               'B349', #Viral infection, unspecified
                               'J0190', #Acute sinusitis, unspecified
                               'J069', #Acute upper respiratory infection, unspecified
                               'J159', #Unspecified bacterial pneumonia
                               'J181', #Lobar pneumonia, unspecified organism
                               'J182', #Hypostatic pneumonia, unspecified organism
                               'J189', #Pneumonia, unspecified organism
                               'J209', #Acute bronchitis, unspecified
                               'J329', #Chronic sinusitis, unspecified
                               'J40', #Bronchitis, not specified as acute or chronic
                               'R6520', #Severe sepsis without septic shock
                               'R6521', #Severe sepsis with septic shock
                               'I2699', #Other pulmonary embolism without acute cor pulmonale
                               'I2789', #Other specified pulmonary heart diseases
                               'J45901', #Unspecified asthma with (acute) exacerbation
                               'J690', #Pneumonitis due to inhalation of food and vomit
                               'J80', #Acute respiratory distress syndrome
                               'J810', #Acute pulmonary edema
                               'J9600', #Acute respiratory failure, unsp w hypoxia or hypercapnia
                               'J9601', #Acute respiratory failure with hypoxia
                               'I200', #Unstable angina
                               'I208', #Other forms of angina pectoris
                               'I209', #Angina pectoris, unspecified
                               'I213', #ST elevation (STEMI) myocardial infarction of unsp site
                               'I214', #Non-ST elevation (NSTEMI) myocardial infarction
                               'I25110', #Athscl heart disease of native cor art w unstable ang pctrs
                               'I25119', #Athscl heart disease of native cor art w unsp ang pctrs
                               'I440', #Atrioventricular block, first degree
                               'I442', #Atrioventricular block, complete
                               'I447', #Left bundle-branch block, unspecified
                               'I4510', #Unspecified right bundle-branch block
                               'I5021', #Acute systolic (congestive) heart failure
                               'I5031', #Acute diastolic (congestive) heart failure
                               'R011', #Cardiac murmur, unspecified
                               'G459', #Transient cerebral ischemic attack, unspecified
                               'I639', #Cerebral infarction, unspecified
                               'I6781', #Acute cerebrovascular insufficiency
                               'I6782', #Cerebral ischemia
                               'M069', #Rheumatoid arthritis, unspecified
                               'I951', #Orthostatic hypotension
                               'I959', #Hypotension, unspecified
                               'J9690', #Respiratory failure, unsp, unsp w hypoxia or hypercapnia
                               'R000', #Tachycardia, unspecified
                               'R0902', #Hypoxemia
                               'R21', #Rash and other nonspecific skin eruption
                               'R918', #Other nonspecific abnormal finding of lung field
                               'R938', #Abnormal findings on diagnostic imaging of body structures
                               'Z136' #Encounter for screening for cardiovascular disorders
                               )))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
## Codes for sarcoid_skin 

# Note see Sarcoid for main list

    
# Description:
    
desc <- "Sarcoidosis Lung"
    
tokens <- c("sarcoidosis","sarcoid")
    
# Diagnosis codes:
    
icd9_codes <- as.character((c('7856', #Enlargement lymph nodes
                              '7866', #Chest swelling/mass/lump
                              '7931', #Lung field
                              '79319', #Ot nonsp ab fnd lung fld
                              '7823', #Edema
                              '79431', #Abnorm electrocardiogram
                              '2893', #Lymphadenitis NOS
                              '79902', #Hypoxemia
                              '7821', #Nonspecif skin erupt NEC
                              '5119', #Pleural effusion NOS
                              '72981', #Swelling of limb
                              '5183', #Pulmonary eosinophilia
                              '79311', #Solitary pulmonry nodule
                              '7842', #Swelling in head & neck
                              '7906', #Abn blood chemistry NEC
                              '5180', #Pulmonary collapse
                              '4293', #Cardiomegaly
                              '7850', #Tachycardia NOS
                              '7948', #Abn liver function study
                              'V741', #Screening-pulmonary TB
                              '7822', #Local suprficial swellng
                              '7932', #Nonsp abn intrathor NEC
                              '7892', #Splenomegaly
                              '7904', #Elev transaminase/ldh
                              '7942', #Abn pulmonary func study
                              '28860', #Leukocytosis NOS
                              '2875', #Thrombocytopenia NOS
                              '42769', #Premature beats NEC
                              '78930', #Abdmnal mass unspcf site
                              '4589', #Hypotension NOS
                              '5128', #Other pneumothorax and air leak
                              '28850', #Leukocytopenia NOS
                              '78650', #Chest pain NOS
                              '78605', #Shortness of breath
                              '7862', #Cough
                              '78079', #Malaise and fatigue NEC
                              '7291', #Myalgia and myositis NOS
                              '78659', #Chest pain NEC
                              '78060', #Fever NOS
                              '7851', #Palpitations
                              '71947', #Joint pain-ankle
                              '71949', #Joint pain-mult jts
                              '7802', #Syncope and collapse
                              '71940', #Joint pain-unspec
                              '78321', #Abnormal loss of weight
                              '78651', #Precordial pain
                              '78652', #Painful respiration
                              '7806', #Fever and other physiologic disturbances of temperature regulation
                              '78607', #Wheezing
                              '7869', #Resp sys/chest symp NEC
                              '78630', #Hemoptysis NOS
                              '7863', #Hemoptysis
                              '7808', #Generalizd hyperhidrosis
                              '78902', #Abdmnal pain lft up quad
                              '51889', #Other lung disease NEC
                              '78609', #Respiratory abnorm NEC
                              '496', #Chr airway obstruct NEC
                              '49390', #Asthma NOS
                              '515', #Postinflam pulm fibrosis
                              '1629', #Mal neo bronch/lung NOS
                              '51881', #Acute respiratry failure
                              '49121', #Obs chr bronc w(ac) exac
                              '49392', #Asthma NOS w (ac) exac
                              '78600', #Respiratory abnorm NOS
                              '2357', #Unc behav neo lung
                              '2123', #Benign neo bronchus/lung
                              '4928', #Emphysema NEC
                              '514', #Pulm congest/hypostasis
                              '5110', #Pleurisy w/o effus or TB
                              '2391', #Respiratory neoplasm NOS
                              '49120', #Obst chr bronc w/o exac
                              '49320', #Chronic obst asthma NOS
                              '4239', #Pericardial disease NOS
                              '49310', #Intrinsic asthma NOS
                              '486', #Pneumonia, organism NOS
                              '4660', #Acute bronchitis
                              '4659', #Acute uri NOS
                              '490', #Bronchitis NOS
                              '6826', #Cellulitis of leg
                              '4610', #Ac maxillary sinusitis
                              '4730', #Chr maxillary sinusitis
                              '07999', #Viral infection NOS
                              '4829', #Bacterial pneumonia NOS
                              '6869', #Local skin infection NOS
                              '4919', #Chronic bronchitis NOS
                              'V7283', #Oth spcf preop exam
                              'V7284', #Preop exam unspcf
                              'V7281', #Preop cardiovsclr exam
                              '6929', #Dermatitis NOS
                              '3643', #Iridocyclitis NOS
                              '3051', #Tobacco use disorder
                              '2382', #Unc behav neo skin
                              '27542', #Hypercalcemia
                              'V726', #Laboratory examination
                              '36400', #Acute iridocyclitis NOS
                              '9999', #Complic med care NEC/NOS
                              '20280', #Oth lymp unsp xtrndl org
                              '6952', #Erythema nodosum
                              '7149', #Inflamm polyarthrop NOS
                              '36401', #Primary iridocyclitis
                              '7999', #Unkn cause morb/mort NEC
                              'V7260', #Laboratory exam NOS
                              '37730', #Optic neuritis NOS
                              '7109', #Diff connect tis dis NOS
                              '36410', #Chr iridocyclitis NOS
                              '3510', #Bell's palsy
                              '2410', #Nontox uninodular goiter
                              'V7282', #Preop respiratory exam
                              '79399', #Nonsp abn find-body NEC
                              '7964', #Abn clinical finding NEC
                              '6861', #Pyogenic granuloma
                              '36320', #Chorioretinitis NOS
                              '36402', #Recurrent iridocyclitis
                              '37991', #Pain in or around eye
                              '7099', #Skin disorder NOS
                              '3688', #Visual disturbances NEC
                              '3682', #Diplopia
                              '7813', #Lack of coordination
                              '79579', #Oth unspcf nspf imun fnd
                              'V1582', #History of tobacco use
                              '2392', #Bone/skin neoplasm NOS
                              'V7263', #Pre-procedure lab exam
                              'V7189', #Observ-suspect cond NEC
                              '4476', #Arteritis NOS
                              '36012', #Panuveitis
                              '7910', #Proteinuria
                              '5272', #Sialoadenitis
                              '37700', #Papilledema NOS
                              '71659', #Polyarthritis NOS-mult
                              '36283', #Retinal edema
                              '9953', #Allergy, unspecified
                              '37900', #Scleritis NOS
                              'V725', #Radiological exam NEC
                              '36218', #Retinal vasculitis
                              '2290', #Benign neo lymph nodes
                              '08881', #Lyme disease
                              '5733', #Hepatitis NOS
                              '37924', #Vitreous opacities NEC
                              '3689', #Visual disturbance NOS
                              '3419', #Cns demyelination NOS
                              '042', #Human immuno virus dis
                              '2388', #Uncert behavior neo NEC
                              'V6709', #Follow-up surgery NEC
                              '37739', #Optic neuritis NEC
                              '2358', #Unc behav neo pleura
                              '7969', #Abnormal findings NEC
                              '4242', #Nonrheum tricusp val dis
                              '34889', #Brain conditions NEC
                              '79099', #Oth nspcf finding blood
                              '1991', #Malignant neoplasm NOS
                              'V6759', #Follow-up exam NEC
                              '7930', #Nonsp abn fd-skull/head
                              '3699', #Visual loss NOS
                              '5121', #Iatrogenic pneumothorax
                              '3698', #Visual loss, one eye NOS
                              '37992', #Swelling or mass of eye
                              '71699', #Arthropathy NOS-mult
                              '71907', #Joint effusion-ankle
                              '5920', #Calculus of kidney
                              '5921', #Calculus of ureter
                              '5932', #Cyst of kidney, acquired
                              '5849', #Acute kidney failure NOS
                              '42789', #Cardiac dysrhythmias NEC
                              '4279', #Cardiac dysrhythmia NOS
                              '4139', #Angina pectoris NEC/NOS
                              '7852', #Cardiac murmurs NEC
                              '42781', #Sinoatrial node dysfunct
                              '4270', #Parox atrial tachycardia
                              '4264', #Rt bundle branch block
                              '5178', #Lung involv in oth dis
                              '2891', #Chronic lymphadenitis
                              '4168', #Chr pulmon heart dis NEC
                              '5193', #Mediastinum disease NEC
                              '4940', #Bronchiectas w/o ac exac
                              '5163', #Idiopathic interstitial pneumonia
                              '1970', #Secondary malig neo lung
                              '71690', #Arthropathy NOS-unspec
                              '57420', #Cholelithiasis NOS
                              '5718', #Chronic liver dis NEC
                              '5738', #Liver disorders NEC
                              '5739', #Liver disorder NOS
                              '47819', #Nasal & sinus dis NEC
                              '3559', #Mononeuritis NOS
                              '3369', #Spinal cord disease NOS
                              '34830' #Encephalopathy NOS
)))

icd10_codes <- as.character((c('R590', #Localized enlarged lymph nodes
                               'R918', #Other nonspecific abnormal finding of lung field
                               'R591', #Generalized enlarged lymph nodes
                               'R911', #Solitary pulmonary nodule
                               'R599', #Enlarged lymph nodes, unspecified
                               'R9431', #Abnormal electrocardiogram [ECG] [EKG]
                               'R938', #Abnormal findings on diagnostic imaging of body structures
                               'R000', #Tachycardia, unspecified
                               'J90', #Pleural effusion, not elsewhere classified
                               'R0902', #Hypoxemia
                               'J9811', #Atelectasis
                               'I517', #Cardiomegaly
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
                               'R0989', #Oth symptoms and signs involving the circ and resp systems
                               'M79605', #Pain in left leg
                               'R0781', #Pleurodynia
                               'R0689', #Other abnormalities of breathing
                               'R072', #Precordial pain
                               'J449', #Chronic obstructive pulmonary disease, unspecified
                               'J984', #Other disorders of lung
                               'J45909', #Unspecified asthma, uncomplicated
                               'J8410', #Pulmonary fibrosis, unspecified
                               'J849', #Interstitial pulmonary disease, unspecified
                               'J9601', #Acute respiratory failure with hypoxia
                               'J441', #Chronic obstructive pulmonary disease w (acute) exacerbation
                               'J811', #Chronic pulmonary edema
                               'J45901', #Unspecified asthma with (acute) exacerbation
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
                               'Z20828', #Contact w and exposure to oth viral communicable diseases
                               'Z01812', #Encounter for preprocedural laboratory examination
                               'F17200', #Nicotine dependence, unspecified, uncomplicated
                               'I429', #Cardiomyopathy, unspecified
                               'Z87891', #Personal history of nicotine dependence
                               'L929', #Granulomatous disorder of the skin, subcu, unsp
                               'L52', #Erythema nodosum
                               'M797', #Fibromyalgia
                               'I898', #Oth noninfective disorders of lymphatic vessels and nodes
                               'D485', #Neoplasm of uncertain behavior of skin
                               'H469', #Unspecified optic neuritis
                               'Z48813', #Encntr for surgical aftcr following surgery on the resp sys
                               'L309', #Dermatitis, unspecified
                               'D8989', #Oth disrd involving the immune mechanism, NEC
                               'H44112', #Panuveitis, left eye
                               'H4710', #Unspecified papilledema
                               'H538', #Other visual disturbances
                               'H04123', #Dry eye syndrome of bilateral lacrimal glands
                               'H20042', #Secondary noninfectious iridocyclitis, left eye
                               'M25572', #Pain in left ankle and joints of left foot
                               'G510', #Bell's palsy
                               'H532', #Diplopia
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
                               'L928', #Oth granulomatous disorders of the skin, subcu
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
                               'Z0001', #Encounter for general adult medical exam w abnormal findings
                               'R930', #Abnormal findings on dx imaging of skull and head, NEC
                               'R846', #Abnormal cytolog findings in specimens from resp org/thrx
                               'N12', #Tubulo-interstitial nephritis, not spcf as acute or chronic
                               'Z862', #Prsnl history of dis of the bld/bld-form org/immun mechnsm
                               'D1431', #Benign neoplasm of right bronchus and lung
                               'R768', #Other specified abnormal immunological findings in serum
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
                               'M7989', #Other specified soft tissue disorders
                               'E860', #Dehydration
                               'K8020', #Calculus of gallbladder w/o cholecystitis w/o obstruction
                               'J4520', #Mild intermittent asthma, uncomplicated
                               'G629', #Polyneuropathy, unspecified
                               'G9340', #Encephalopathy, unspecified
                               'I889', #Nonspecific lymphadenitis, unspecified
                               'I2699' #Other pulmonary embolism without acute cor pulmonale
)))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
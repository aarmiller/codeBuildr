## Codes for cvst 

    
# Description:
    
desc <- "Cerebral Venous Sinus Thrombosis"
    
tokens <- c("cerebral venous sinus thrombosis","cvst")
    
# Diagnosis codes:

# tmp1 <- read_csv("~/OneDrive - University of Iowa/delay_dx_projects/cvst/ssd_list/cvst_icd9_from_phil.csv") %>% 
#   select(dx,include1) %>% 
#   filter(include1=="Y") %>% 
#   select(dx) %>% 
#   inner_join(codeBuildr::all_icd_labels) %>% 
#   filter(dx_ver==9) %>% 
#   select(dx,desc)
# 
# cat(paste0("'",tmp1$dx,"',", " #",tmp1$desc),sep="\n")
# 
# tmp2 <- read_csv("~/OneDrive - University of Iowa/delay_dx_projects/cvst/ssd_list/cvst_icd10_from_phil.csv") %>% 
#   select(dx,include1,include2)  %>% 
#   filter(include1=="Y" | include2=="Y") %>% 
#   select(dx) %>% 
#   inner_join(codeBuildr::all_icd_labels) %>% 
#   filter(dx_ver==10) %>% 
#   select(dx,desc)
# 
# cat(paste0("'",tmp2$dx,"',", " #",tmp2$desc),sep="\n")
    
icd9_codes <- as.character(children_safe(c('7840', #Headache
                                           '78039', #Other convulsions
                                           '34690', #Migraine, unspecified, without mention of intractable migraine without mention of status migrainosus
                                           '7804', #Dizziness and giddiness
                                           '7231', #Cervicalgia
                                           '78701', #Nausea with vomiting
                                           '78097', #Altered mental status
                                           '7820', #Disturbance of skin sensation
                                           '431', #Intracerebral hemorrhage
                                           '3482', #Benign intracranial hypertension
                                           '37700', #Papilledema, unspecified
                                           '436', #Acute, but ill-defined, cerebrovascular disease
                                           '7802', #Syncope and collapse
                                           '4619', #Acute sinusitis, unspecified
                                           '78009', #Other alteration of consciousness
                                           '311', #Depressive disorder, not elsewhere classified
                                           '430', #Subarachnoid hemorrhage
                                           '4329', #Unspecified intracranial hemorrhage
                                           '43400', #Cerebral thrombosis without mention of cerebral infarction
                                           '78703', #Vomiting alone
                                           '4359', #Unspecified transient cerebral ischemia
                                           '4739', #Unspecified sinusitis (chronic)
                                           '3688', #Other specified visual disturbances
                                           '34889', #Other conditions of brain
                                           '30000', #Anxiety state, unspecified
                                           '78031', #Febrile convulsions (simple), unspecified
                                           '78702', #Nausea alone
                                           '4321', #Subdural hemorrhage
                                           '3682', #Diplopia
                                           '7812', #Abnormality of gait
                                           '37991', #Pain in or around eye
                                           '3689', #Unspecified visual disturbance
                                           '37854', #Sixth or abducens nerve palsy
                                           '34590', #Epilepsy, unspecified, without mention of intractable epilepsy
                                           '34830', #Encephalopathy, unspecified
                                           '3201', #Pneumococcal meningitis
                                           '34982', #Toxic encephalopathy
                                           '74781', #Anomalies of cerebrovascular system
                                           '85300', #Other and unspecified intracranial hemorrhage following injury without mention of open intracranial wound, unspecified state of consciousness
                                           '78033', #Post traumatic seizures
                                           '3485', #Cerebral edema
                                           '36813', #Visual discomfort
                                           '37630', #Exophthalmos, unspecified
                                           '34600', #Migraine with aura, without mention of intractable migraine without mention of status migrainosus
                                           '43401', #Cerebral thrombosis with cerebral infarction
                                           '2989', #Unspecified psychosis
                                           '3229', #Meningitis, unspecified
                                           '37701', #Papilledema associated with increased intracranial pressure
                                           '7790', #Convulsions in newborn
                                           '3699', #Unspecified visual loss
                                           '37941', #Anisocoria
                                           '78002', #Transient alteration of awareness
                                           '37703', #Papilledema associated with retinal disorder
                                           '34693', #Migraine, unspecified, with intractable migraine, so stated, with status migrainosus
                                           '4353', #Vertebrobasilar artery syndrome
                                           '4613', #Acute sphenoidal sinusitis
                                           '34691', #Migraine, unspecified, with intractable migraine, so stated, without mention of status migrainosus
                                           '30781', #Tension headache
                                           '36843', #Sector or arcuate visual field defects
                                           '7813', #Lack of coordination
                                           '34613', #Migraine without aura, with intractable migraine, so stated, with status migrainosus
                                           '85301', #Other and unspecified intracranial hemorrhage following injury without mention of open intracranial wound, with no loss of consciousness
                                           '34610', #Migraine without aura, without mention of intractable migraine without mention of status migrainosus
                                           '34290', #Hemiplegia, unspecified, affecting unspecified side
                                           '33942', #New daily persistent headache
                                           '3239', #Unspecified causes of encephalitis, myelitis, and encephalomyelitis
                                           '7843', #Aphasia
                                           '79409', #Other nonspecific abnormal results of function study of brain and central nervous system
                                           '37852', #Third or oculomotor nerve palsy, total
                                           '4732', #Chronic ethmoidal sinusitis
                                           '67404', #Cerebrovascular disorders in the puerperium, postpartum condition or complication
                                           '78459', #Other speech disturbance
                                           '3419', #Demyelinating disease of central nervous system, unspecified
                                           '2982', #Reactive confusion
                                           '4371', #Other generalized ischemic cerebrovascular disease
                                           '3488', #Other conditions of brain
                                           '34601', #Migraine with aura, with intractable migraine, so stated, without mention of status migrainosus
                                           '34680', #Other forms of migraine, without mention of intractable migraine without mention of status migrainosus
                                           '32082', #Meningitis due to gram-negative bacteria, not elsewhere classified
                                           '64264', #Eclampsia, postpartum condition or complication
                                           '78093', #Memory loss
                                           '3453', #Grand mal status
                                           '4612', #Acute ethmoidal sinusitis
                                           '34540', #Localization-related (focal) (partial) epilepsy and epileptic syndromes with complex partial seizures, without mention of intractable epilepsy
                                           '2931', #Subacute delirium
                                           '34620', #Variants of migraine, not elsewhere classified, without mention of intractable migraine without mention of status migrainosus
                                           '36840', #Visual field defect, unspecified
                                           '37851', #Third or oculomotor nerve palsy, partial
                                           '4379', #Unspecified cerebrovascular disease
                                           '340', #Multiple sclerosis
                                           '78720', #Dysphagia, unspecified
                                           '34489', #Other specified paralytic syndrome
                                           '34570', #Epilepsia partialis continua, without mention of intractable epilepsy
                                           '4730', #Chronic maxillary sinusitis
                                           '3489', #Unspecified condition of brain
                                           '34510', #Generalized convulsive epilepsy, without mention of intractable epilepsy
                                           '3501', #Trigeminal neuralgia
                                           '34611', #Migraine without aura, with intractable migraine, so stated, without mention of status migrainosus
                                           '7814', #Transient paralysis of limb
                                           '4738', #Other chronic sinusitis
                                           '37855', #External ophthalmoplegia
                                           '78194', #Facial weakness
                                           '3484', #Compression of brain
                                           '67403', #Cerebrovascular disorders in the puerperium, antepartum condition or complication
                                           '33989', #Other headache syndromes
                                           '37749', #Other disorders of optic nerve
                                           '3510', #Bell's palsy
                                           '34603', #Migraine with aura, with intractable migraine, so stated, with status migrainosus
                                           '3449', #Paralysis, unspecified
                                           '5362', #Persistent vomiting
                                           '3004', #Dysthymic disorder
                                           '30002', #Generalized anxiety disorder
                                           '34681', #Other forms of migraine, with intractable migraine, so stated, without mention of status migrainosus
                                           '33920' #Post-traumatic headache, unspecified
                                           )))
    
icd10_codes <- as.character(children_safe(c('R51', #Headache
                                            'I639', #Cerebral infarction, unspecified
                                            'G932', #Benign intracranial hypertension
                                            'R42', #Dizziness and giddiness
                                            'M542', #Cervicalgia
                                            'R569', #Unspecified convulsions
                                            'G43909', #Migraine, unspecified, not intractable, without status migrainosus
                                            'R4182', #Altered mental status, unspecified
                                            'R531', #Weakness
                                            'H4710', #Unspecified papilledema
                                            'S0291XA', #Unspecified fracture of skull, initial encounter for closed fracture
                                            'R112', #Nausea with vomiting, unspecified
                                            'F419', #Anxiety disorder, unspecified
                                            'H538', #Other visual disturbances
                                            'I611', #Nontraumatic intracerebral hemorrhage in hemisphere, cortical
                                            'R110', #Nausea
                                            'R401', #Stupor
                                            'R259', #Unspecified abnormal involuntary movements
                                            'G459', #Transient cerebral ischemic attack, unspecified
                                            'R200', #Anesthesia of skin
                                            'H05242', #Constant exophthalmos, left eye
                                            'S020XXA', #Fracture of vault of skull, initial encounter for closed fracture
                                            'P90', #Convulsions of newborn
                                            'H532', #Diplopia
                                            'J0130', #Acute sphenoidal sinusitis, unspecified
                                            'M6281', #Muscle weakness (generalized)
                                            'F329', #Major depressive disorder, single episode, unspecified
                                            'R1110', #Vomiting, unspecified
                                            'G460', #Middle cerebral artery syndrome
                                            'I609', #Nontraumatic subarachnoid hemorrhage, unspecified
                                            'H4902', #Third [oculomotor] nerve palsy, left eye
                                            'R410', #Disorientation, unspecified
                                            'G002', #Streptococcal meningitis
                                            'F4489', #Other dissociative and conversion disorders
                                            'I629', #Nontraumatic intracranial hemorrhage, unspecified
                                            'S065X9A', #Traumatic subdural hemorrhage with loss of consciousness of unspecified duration, initial encounter
                                            'S066X0A', #Traumatic subarachnoid hemorrhage without loss of consciousness, initial encounter
                                            'H5702', #Anisocoria
                                            'S0990XA', #Unspecified injury of head, initial encounter
                                            'G9340', #Encephalopathy, unspecified
                                            'I618', #Other nontraumatic intracerebral hemorrhage
                                            'S0181XA', #Laceration without foreign body of other part of head, initial encounter
                                            'F411', #Generalized anxiety disorder
                                            'S0219XA', #Other fracture of base of skull, initial encounter for closed fracture
                                            'I82C11', #Acute embolism and thrombosis of right internal jugular vein
                                            'S065X0A', #Traumatic subdural hemorrhage without loss of consciousness, initial encounter
                                            'H543', #Unqualified visual loss, both eyes
                                            'H539', #Unspecified visual disturbance
                                            'R29810', #Facial weakness
                                            'G001', #Pneumococcal meningitis
                                            'I607', #Nontraumatic subarachnoid hemorrhage from unspecified intracranial artery
                                            'I619', #Nontraumatic intracerebral hemorrhage, unspecified
                                            'H4922', #Sixth [abducent] nerve palsy, left eye
                                            'S06369A', #Traumatic hemorrhage of cerebrum, unspecified, with loss of consciousness of unspecified duration, initial encounter
                                            'R4781', #Slurred speech
                                            'R9402', #Abnormal brain scan
                                            'S06339A', #Contusion and laceration of cerebrum, unspecified, with loss of consciousness of unspecified duration, initial encounter
                                            'L03211', #Cellulitis of face
                                            'T80219D', #Unspecified infection due to central venous catheter, subsequent encounter
                                            'I6200', #Nontraumatic subdural hemorrhage, unspecified
                                            'G8321', #Monoplegia of upper limb affecting right dominant side
                                            'H547', #Unspecified visual loss
                                            'G40301', #Generalized idiopathic epilepsy and epileptic syndromes, not intractable, with status epilepticus
                                            'G936', #Cerebral edema
                                            'J0190', #Acute sinusitis, unspecified
                                            'I82290', #Acute embolism and thrombosis of other thoracic veins
                                            'R202', #Paresthesia of skin
                                            'F79', #Unspecified intellectual disabilities
                                            'H5712', #Ocular pain, left eye
                                            'R4020', #Unspecified coma
                                            'J323', #Chronic sphenoidal sinusitis
                                            'H47093', #Other disorders of optic nerve, not elsewhere classified, bilateral
                                            'R201', #Hypoesthesia of skin
                                            'H4920', #Sixth [abducent] nerve palsy, unspecified eye
                                            'R9089', #Other abnormal findings on diagnostic imaging of central nervous system
                                            'I82890', #Acute embolism and thrombosis of other specified veins
                                            'I638', #Other cerebral infarction
                                            'G009', #Bacterial meningitis, unspecified
                                            'I6789', #Other cerebrovascular disease
                                            'R1112', #Projectile vomiting
                                            'R1111', #Vomiting without nausea
                                            'R291', #Meningismus
                                            'S064X0D', #Epidural hemorrhage without loss of consciousness, subsequent encounter
                                            'H7091', #Unspecified mastoiditis, right ear
                                            'G039', #Meningitis, unspecified
                                            'G030', #Nonpyogenic meningitis
                                            'H4711', #Papilledema associated with increased intracranial pressure
                                            'G0490', #Encephalitis and encephalomyelitis, unspecified
                                            'R404', #Transient alteration of awareness
                                            'H4900', #Third [oculomotor] nerve palsy, unspecified eye
                                            'F338', #Other recurrent depressive disorders
                                            'G40909', #Epilepsy, unspecified, not intractable, without status epilepticus
                                            'H7502', #Mastoiditis in infectious and parasitic diseases classified elsewhere, left ear
                                            'O152', #Eclampsia complicating the puerperium
                                            'O871', #Deep phlebothrombosis in the puerperium
                                            'R29818', #Other symptoms and signs involving the nervous system
                                            'S066X1A', #Traumatic subarachnoid hemorrhage with loss of consciousness of 30 minutes or less, initial encounter
                                            'I82C12', #Acute embolism and thrombosis of left internal jugular vein
                                            'G4452', #New daily persistent headache (NDPH)
                                            'T80219A', #Unspecified infection due to central venous catheter, initial encounter
                                            'I6359', #Cerebral infarction due to unspecified occlusion or stenosis of other cerebral artery
                                            'O9943', #Diseases of the circulatory system complicating the puerperium
                                            'H5711', #Ocular pain, right eye
                                            'H53122', #Transient visual loss, left eye
                                            'S0003XA', #Contusion of scalp, initial encounter
                                            'D331', #Benign neoplasm of brain, infratentorial
                                            'G43819', #Other migraine, intractable, without status migrainosus
                                            'G441', #Vascular headache, not elsewhere classified
                                            'G458', #Other transient cerebral ischemic attacks and related syndromes
                                            'G43009', #Migraine without aura, not intractable, without status migrainosus
                                            'G44031', #Episodic paroxysmal hemicrania, intractable
                                            'G4489', #Other headache syndrome
                                            'I63231', #Cerebral infarction due to unspecified occlusion or stenosis of right carotid arteries
                                            'C719', #Malignant neoplasm of brain, unspecified
                                            'G939', #Disorder of brain, unspecified
                                            'C7931', #Secondary malignant neoplasm of brain
                                            'G008', #Other bacterial meningitis
                                            'H53149', #Visual discomfort, unspecified
                                            'G43109', #Migraine with aura, not intractable, without status migrainosus
                                            'R4701', #Aphasia
                                            'M9901', #Segmental and somatic dysfunction of cervical region
                                            'R419', #Unspecified symptoms and signs involving cognitive functions and awareness
                                            'G44209', #Tension-type headache, unspecified, not intractable
                                            'H70001', #Acute mastoiditis without complications, right ear
                                            'O2230', #Deep phlebothrombosis in pregnancy, unspecified trimester
                                            'H53452', #Other localized visual field defect, left eye
                                            'D320', #Benign neoplasm of cerebral meninges
                                            'G9341', #Metabolic encephalopathy
                                            'O873', #Cerebral venous thrombosis in the puerperium
                                            'I6781', #Acute cerebrovascular insufficiency
                                            'G259', #Extrapyramidal and movement disorder, unspecified
                                            'G060', #Intracranial abscess and granuloma
                                            'G43809', #Other migraine, not intractable, without status migrainosus
                                            'G44201', #Tension-type headache, unspecified, intractable
                                            'I8002', #Phlebitis and thrombophlebitis of superficial vessels of left lower extremity
                                            'H65191', #Other acute nonsuppurative otitis media, right ear
                                            'I674', #Hypertensive encephalopathy
                                            'H53141', #Visual discomfort, right eye
                                            'G43911', #Migraine, unspecified, intractable, with status migrainosus
                                            'O2233', #Deep phlebothrombosis in pregnancy, third trimester
                                            'G4441', #Drug-induced headache, not elsewhere classified, intractable
                                            'H6692', #Otitis media, unspecified, left ear
                                            'H7090', #Unspecified mastoiditis, unspecified ear
                                            'G43101', #Migraine with aura, not intractable, with status migrainosus
                                            'S06309A', #Unspecified focal traumatic brain injury with loss of consciousness of unspecified duration, initial encounter
                                            'H4923', #Sixth [abducent] nerve palsy, bilateral
                                            'H34812', #Central retinal vein occlusion, left eye
                                            'G519', #Disorder of facial nerve, unspecified
                                            'J0120', #Acute ethmoidal sinusitis, unspecified
                                            'G468', #Other vascular syndromes of brain in cerebrovascular diseases
                                            'S098XXA', #Other specified injuries of head, initial encounter
                                            'H5462', #Unqualified visual loss, left eye, normal vision right eye
                                            'G4453', #Primary thunderclap headache
                                            'I8290', #Acute embolism and thrombosis of unspecified vein
                                            'H53483', #Generalized contraction of visual field, bilateral
                                            'G935', #Compression of brain
                                            'R295', #Transient paralysis
                                            'J329', #Chronic sinusitis, unspecified
                                            'R2689', #Other abnormalities of gait and mobility
                                            'I82619', #Acute embolism and thrombosis of superficial veins of unspecified upper extremity
                                            'Z711', #Person with feared health complaint in whom no diagnosis is made
                                            'F331', #Major depressive disorder, recurrent, moderate
                                            'S0180XA', #Unspecified open wound of other part of head, initial encounter
                                            'I6201', #Nontraumatic acute subdural hemorrhage
                                            'I69998', #Other sequelae following unspecified cerebrovascular disease
                                            'D496', #Neoplasm of unspecified behavior of brain
                                            'S0190XA', #Unspecified open wound of unspecified part of head, initial encounter
                                            'A879', #Viral meningitis, unspecified
                                            'H4901', #Third [oculomotor] nerve palsy, right eye
                                            'H4921', #Sixth [abducent] nerve palsy, right eye
                                            'R269', #Unspecified abnormalities of gait and mobility
                                            'H469', #Unspecified optic neuritis
                                            'F459', #Somatoform disorder, unspecified
                                            'G8194', #Hemiplegia, unspecified affecting left nondominant side
                                            'H53433', #Sector or arcuate defects, bilateral
                                            'R400', #Somnolence
                                            'G43011', #Migraine without aura, intractable, with status migrainosus
                                            'R251', #Tremor, unspecified
                                            'Z8669', #Personal history of other diseases of the nervous system and sense organs
                                            'G518', #Other disorders of facial nerve
                                            'H35033', #Hypertensive retinopathy, bilateral
                                            'S069X0D', #Unspecified intracranial injury without loss of consciousness, subsequent encounter
                                            'F3340', #Major depressive disorder, recurrent, in remission, unspecified
                                            'S060X1A', #Concussion with loss of consciousness of 30 minutes or less, initial encounter
                                            'I6350', #Cerebral infarction due to unspecified occlusion or stenosis of unspecified cerebral artery
                                            'G44021', #Chronic cluster headache, intractable
                                            'R69', #Illness, unspecified
                                            'H5202', #Hypermetropia, left eye
                                            'R413', #Other amnesia
                                            'G43919', #Migraine, unspecified, intractable, without status migrainosus
                                            'J328', #Other chronic sinusitis
                                            'H53143', #Visual discomfort, bilateral
                                            'H748X1', #Other specified disorders of right middle ear and mastoid
                                            'H5461', #Unqualified visual loss, right eye, normal vision left eye
                                            'S069X0A', #Unspecified intracranial injury without loss of consciousness, initial encounter
                                            'S062X1A', #Diffuse traumatic brain injury with loss of consciousness of 30 minutes or less, initial encounter
                                            'S0093XA', #Contusion of unspecified part of head, initial encounter
                                            'T80211A' #Bloodstream infection due to central venous catheter, initial encounter
                                            )))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
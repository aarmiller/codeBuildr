## Codes for meningitis 

    
# Description:
    
desc <- "Meningitis"
    
# Diagnosis codes:

tmp <- read_csv("~/Documents/GitHub/delay_dx/params/ssd_codes/meningitis/ssd_codes.csv")

# NOTE: Need fo fix this to get the actual ICD-10 sets
# tmp2 <- tmp %>% 
#   distinct(code = icd_codes) %>% 
#   mutate(code = str_remove(code,"\\.")) %>% 
#   left_join(mutate(icd::icd9cm_hierarchy,code=as.character(code))) %>% 
#   distinct(code,desc=short_desc)
# 
# tmp_fix <- tmp2 %>% 
#   filter(is.na(desc)) %>% 
#   filter(!is.na(code)) %>% 
#   mutate(code = map_chr(code,~str_trim(.))) %>% 
#   .$code %>% 
#   codeBuildr::children_safe() 
# 
# tmp3 <- tibble(code=tmp_fix) %>% 
#   left_join(mutate(icd::icd9cm_hierarchy,code=as.character(code))) %>% 
#   distinct(code,desc=short_desc)
# 
# tmp2 <- bind_rows(tmp2,tmp3) %>% distinct()
# 
# cat(paste0("'",tmp2$code,"',", " #",tmp2$desc),sep="\n")
# 
# tmp2 <- tibble(code=icd9_to_icd10(tmp2$code)) %>% 
#   left_join(mutate(icd::icd10cm2019,code=as.character(code))) %>%
#   distinct(code,desc=short_desc)
# 
# cat(paste0("'",tmp2$code,"',", " #",tmp2$desc),sep="\n")
    
icd9_codes <- as.character((c('7840', #Headache
                              '78060', #Fever NOS
                              '7806', #Fever and other physiologic disturbances of temperature regulation
                              '07999', #Viral infection NOS
                              '7231', #Cervicalgia
                              '78097', #Altered mental status
                              '346', #Migraine
                              '462', #Acute pharyngitis
                              '78701', #Nausea with vomiting
                              '78039', #Convulsions NEC
                              '486', #Pneumonia, organism NOS
                              '7862', #Cough
                              '461', #Acute sinusitis
                              '27651', #Dehydration
                              '4659', #Acute uri NOS
                              '78009', #Other alter consciousnes
                              '78703', #Vomiting alone
                              '7291', #Myalgia and myositis NOS
                              '78702', #Nausea alone
                              '7802', #Syncope and collapse
                              '382', #Suppurative and unspecified otitis media
                              '473', #Chronic sinusitis
                              '0389', #Septicemia NOS
                              '34830', #Encephalopathy NOS
                              '7821', #Nonspecif skin erupt NEC
                              '28860', #Leukocytosis NOS
                              '4660', #Acute bronchitis
                              '2989', #Psychosis NOS
                              '78002', #Trans alter awareness
                              '3239', #Encephalitis NOS
                              '4871', #Flu w resp manifest NEC
                              '7816', #Meningismus
                              '8470', #Sprain of neck
                              '0340', #Strep sore throat
                              '7850', #Tachycardia NOS
                              '72885', #Spasm of muscle
                              '99591', #Sepsis
                              '4359', #Trans cereb ischemia NOS
                              '30781', #Tension headache
                              '2875', #Thrombocytopenia NOS
                              '95901', #Head injury NOS
                              '345', #Epilepsy and recurrent seizures
                              '36813', #Visual discomfort
                              '481', #Pneumococcal pneumonia
                              '482 ', #NA
                              '7907', #Bacteremia
                              '3510', #Bell's palsy
                              '3682', #Diplopia
                              '4589', #Hypotension NOS
                              '2930', #Delirium d/t other cond
                              '3688', #Visual disturbances NEC
                              '78061', #Fever in other diseases
                              '7235', #Torticollis NOS
                              '4371', #Ac cerebrovasc insuf NOS
                              '463', #Acute tonsillitis
                              '3887', #Otalgia
                              '490', #Bronchitis NOS
                              '483 ', #NA
                              '2765', #Volume depletion
                              '34831', #Metabolic encephalopathy
                              '3801', #Infective otitis externa
                              '7843', #Aphasia
                              '78459', #Speech disturbance NEC
                              '075', #Infectious mononucleosis
                              '3689', #Visual disturbance NOS
                              '27650', #Volume depletion NOS
                              '78001', #Coma
                              '78064', #Chills (without fever)
                              '78194', #Facial weakness
                              '383', #Mastoiditis and related conditions
                              '5362', #Persistent vomiting
                              '7904', #Elev transaminase/ldh
                              '78552', #Septic shock
                              '339', #Other headache syndromes
                              '7845', #Other speech disturbance
                              '28850', #Leukocytopenia NOS
                              'NA', #NA
                              '482', #Other bacterial pneumonia
                              '4820', #K. pneumoniae pneumonia
                              '4821', #Pseudomonal pneumonia
                              '4822', #H.influenzae pneumonia
                              '4823', #Pneumonia due to Streptococcus
                              '48230', #Streptococcal pneumn NOS
                              '48231', #Pneumonia strptococcus a
                              '48232', #Pneumonia strptococcus b
                              '48239', #Pneumonia oth strep
                              '4824', #Pneumonia due to Staphylococcus
                              '48240', #Staphylococcal pneu NOS
                              '48241', #Meth sus pneum d/t Staph
                              '48242', #Meth res pneu d/t Staph
                              '48249', #Staph pneumonia NEC
                              '4828', #Pneumonia due to other specified bacteria
                              '48281', #Pneumonia anaerobes
                              '48282', #Pneumonia e coli
                              '48283', #Pneumo oth grm-neg bact
                              '48284', #Legionnaires' disease
                              '48289', #Pneumonia oth spcf bact
                              '4829', #Bacterial pneumonia NOS
                              '483', #Pneumonia due to other specified organism
                              '4830', #Pneu mycplsm pneumoniae
                              '4831', #Pneumonia d/t chlamydia
                              '4838' #Pneumon oth spec orgnsm
                              )))
    
icd10_codes <- as.character((c('J020', #Streptococcal pharyngitis
                               'J0300', #Acute streptococcal tonsillitis, unspecified
                               'A419', #Sepsis, unspecified organism
                               'B2790', #Infectious mononucleosis, unspecified without complication
                               'B9789', #Oth viral agents as the cause of diseases classd elswhr
                               'E869', #Volume depletion, unspecified
                               'E860', #Dehydration
                               'D696', #Thrombocytopenia, unspecified
                               'D72819', #Decreased white blood cell count, unspecified
                               'D72829', #Elevated white blood cell count, unspecified
                               'F05', #Delirium due to known physiological condition
                               'F29', #Unsp psychosis not due to a substance or known physiol cond
                               'G44209', #Tension-type headache, unspecified, not intractable
                               'G0490', #Encephalitis and encephalomyelitis, unspecified
                               'G0491', #Myelitis, unspecified
                               'G9340', #Encephalopathy, unspecified
                               'G9341', #Metabolic encephalopathy
                               'G510', #Bell's palsy
                               'H53149', #Visual discomfort, unspecified
                               'H532', #Diplopia
                               'H538', #Other visual disturbances
                               'H539', #Unspecified visual disturbance
                               'G459', #Transient cerebral ischemic attack, unspecified
                               'I67848', #Other cerebrovascular vasospasm and vasoconstriction
                               'I6781', #Acute cerebrovascular insufficiency
                               'I6782', #Cerebral ischemia
                               'I6789', #Other cerebrovascular disease
                               'I959', #Hypotension, unspecified
                               'J029', #Acute pharyngitis, unspecified
                               'J0390', #Acute tonsillitis, unspecified
                               'J069', #Acute upper respiratory infection, unspecified
                               'J209', #Acute bronchitis, unspecified
                               'J13', #Pneumonia due to Streptococcus pneumoniae
                               'J181', #Lobar pneumonia, unspecified organism
                               'J150', #Pneumonia due to Klebsiella pneumoniae
                               'J151', #Pneumonia due to Pseudomonas
                               'J14', #Pneumonia due to Hemophilus influenzae
                               'J154', #Pneumonia due to other streptococci
                               'J153', #Pneumonia due to streptococcus, group B
                               'J1520', #Pneumonia due to staphylococcus, unspecified
                               'J15211', #Pneumonia due to methicillin suscep staph
                               'J15212', #Pneumonia due to Methicillin resistant Staphylococcus aureus
                               'J1529', #Pneumonia due to other staphylococcus
                               'J158', #Pneumonia due to other specified bacteria
                               'J155', #Pneumonia due to Escherichia coli
                               'J156', #Pneumonia due to other Gram-negative bacteria
                               'A481', #Legionnaires' disease
                               'J159', #Unspecified bacterial pneumonia
                               'J157', #Pneumonia due to Mycoplasma pneumoniae
                               'J160', #Chlamydial pneumonia
                               'J168', #Pneumonia due to other specified infectious organisms
                               'J189', #Pneumonia, unspecified organism
                               'J101', #Flu due to oth ident influenza virus w oth resp manifest
                               'J111', #Flu due to unidentified influenza virus w oth resp manifest
                               'J40', #Bronchitis, not specified as acute or chronic
                               'R1110', #Vomiting, unspecified
                               'M542', #Cervicalgia
                               'M436', #Torticollis
                               'M6240', #Contracture of muscle, unspecified site
                               'M62838', #Other muscle spasm
                               'M609', #Myositis, unspecified
                               'M791', #Myalgia
                               'M797', #Fibromyalgia
                               'R4020', #Unspecified coma
                               'R404', #Transient alteration of awareness
                               'R400', #Somnolence
                               'R401', #Stupor
                               'R55', #Syncope and collapse
                               'R569', #Unspecified convulsions
                               'R502', #Drug induced fever
                               'R509', #Fever, unspecified
                               'R5081', #Fever presenting with conditions classified elsewhere
                               'R6883', #Chills (without fever)
                               'R4182', #Altered mental status, unspecified
                               'R291', #Meningismus
                               'R29810', #Facial weakness
                               'R21', #Rash and other nonspecific skin eruption
                               'G441', #Vascular headache, not elsewhere classified
                               'R51', #Headache
                               'R4701', #Aphasia
                               'R4702', #Dysphasia
                               'R4781', #Slurred speech
                               'R4789', #Other speech disturbances
                               'R000', #Tachycardia, unspecified
                               'R6521', #Severe sepsis with septic shock
                               'R05', #Cough
                               'R112', #Nausea with vomiting, unspecified
                               'R110', #Nausea
                               'R1111', #Vomiting without nausea
                               'R1112', #Projectile vomiting
                               'R740', #Nonspec elev of levels of transamns & lactic acid dehydrgnse
                               'R7881', #Bacteremia
                               'S134XXA', #Sprain of ligaments of cervical spine, initial encounter
                               'S138XXA', #Sprain of joints and ligaments of oth prt neck, init encntr
                               'S098XXA', #Other specified injuries of head, initial encounter
                               'S0990XA' #Unspecified injury of head, initial encounter
                               )))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
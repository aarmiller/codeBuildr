## Codes for ami 

    
# Description:
    
desc <- "Acute myocardial infarction"
    
# Diagnosis codes:
library(tidyverse)

# Updated on 5/14/2024
# tmp <- read_csv("data_from_phil/icd9_top1000_AMI_PMP.csv")
# 
# tmp %>% count(`FROM ICD10`)
# tmp %>% count(`ICD9`)
# 
# tmp2 <- tmp %>% 
#   filter(ICD9=="Y" | `FROM ICD10`=="Y") %>% 
#   mutate(dx = map_chr(desc,~str_split(.," - ",simplify = T)[1])) %>% 
#   select(dx) %>% 
#   inner_join(filter(codeBuildr::all_icd_labels,dx_ver==9))
# 
# 
# cat(paste0("'",tmp2$dx,"',", " #",tmp2$desc),sep="\n")
# 
# 
# tmp <- read_csv("data_from_phil/icd10_top1000_AMI_PMP.csv")
# 
# tmp %>% count(`from ICD9`)
# tmp %>% count(`ICD10 plots`)
# tmp %>% filter(`from ICD9`=="Y" | `ICD10 plots`=="Y")
# 
# tmp2 <- tmp %>% 
#   filter(`from ICD9`=="Y" | `ICD10 plots`=="Y") %>% 
#   mutate(dx = map_chr(desc,~str_split(.," - ",simplify = T)[1])) %>% 
#   select(dx) %>% 
#   inner_join(filter(codeBuildr::all_icd_labels,dx_ver==10))
# 
# 
# cat(paste0("'",tmp2$dx,"',", " #",tmp2$desc),sep="\n")
#   

    
icd9_codes <- as.character((c('496', #Chronic airway obstruction, not elsewhere classified
                              '42731', #Atrial fibrillation
                              '78650', #Chest pain, unspecified
                              '78605', #Shortness of breath
                              '7295', #Pain in limb
                              '78079', #Other malaise and fatigue
                              '2449', #Unspecified acquired hypothyroidism
                              '53081', #Esophageal reflux
                              '72887', #Muscle weakness (generalized)
                              '486', #Pneumonia, organism unspecified
                              '4439', #Peripheral vascular disease, unspecified
                              '78609', #Other respiratory abnormalities
                              '78900', #Abdominal pain, unspecified site
                              '7862', #Cough
                              '7231', #Cervicalgia
                              '71941', #Pain in joint, shoulder region
                              '7823', #Edema
                              '4660', #Acute bronchitis
                              '78659', #Other chest pain
                              '7245', #Backache, unspecified
                              '30000', #Anxiety state, unspecified
                              '7804', #Dizziness and giddiness
                              '4139', #Other and unspecified angina pectoris
                              '49390', #Asthma, unspecified type, unspecified
                              '49121', #Obstructive chronic bronchitis with (acute) exacerbation
                              '4241', #Aortic valve disorders
                              '79431', #Nonspecific abnormal electrocardiogram [ECG] [EKG]
                              '7802', #Syncope and collapse
                              '5119', #Unspecified pleural effusion
                              '7840', #Headache
                              '4240', #Mitral valve disorders
                              '79902', #Hypoxemia
                              '4293', #Cardiomegaly
                              '51881', #Acute respiratory failure
                              '7291', #Myalgia and myositis, unspecified
                              '78701', #Nausea with vomiting
                              '51889', #Other diseases of lung, not elsewhere classified
                              '42789', #Other specified cardiac dysrhythmias
                              '4659', #Acute upper respiratory infections of unspecified site
                              '4619', #Acute sinusitis, unspecified
                              '56210', #Diverticulosis of colon (without mention of hemorrhage)
                              '27651', #Dehydration
                              '72981', #Swelling of limb
                              '4928', #Other emphysema
                              '78651', #Precordial pain
                              '42781', #Sinoatrial node dysfunction
                              '5180', #Pulmonary collapse
                              '78097', #Altered mental status
                              '2768', #Hypopotassemia
                              '7851', #Palpitations
                              '4279', #Cardiac dysrhythmia, unspecified
                              '2761', #Hyposmolality and/or hyponatremia
                              '7241', #Pain in thoracic spine
                              '78909', #Abdominal pain, other specified site
                              '78060', #Fever, unspecified
                              '78057', #Unspecified sleep apnea
                              '2767', #Hyperpotassemia
                              '490', #Bronchitis, not specified as acute or chronic
                              '78702', #Nausea alone
                              '78907', #Abdominal pain, generalized
                              '515', #Postinflammatory pulmonary fibrosis
                              '4271', #Paroxysmal ventricular tachycardia
                              '7820', #Disturbance of skin sensation
                              '0389', #Unspecified septicemia
                              '7210', #Cervical spondylosis without myelopathy
                              '4589', #Hypotension, unspecified
                              '78906', #Abdominal pain, epigastric
                              '5589', #Other and unspecified noninfectious gastroenteritis and colitis
                              '49120', #Obstructive chronic bronchitis without exacerbation
                              '7931', #Lung field
                              '514', #Pulmonary congestion and hypostasis
                              '78009', #Other alteration of consciousness
                              '79319', #Other nonspecific abnormal finding of lung field
                              '5533', #Diaphragmatic hernia without mention of obstruction or gangrene
                              '2875', #Thrombocytopenia, unspecified
                              '462', #Acute pharyngitis
                              '4168', #Other chronic pulmonary heart diseases
                              '79029', #Other abnormal glucose
                              '53550', #Unspecified gastritis and gastroduodenitis, without mention of hemorrhage
                              '42732', #Atrial flutter
                              '7850', #Tachycardia, unspecified
                              '28860', #Leukocytosis, unspecified
                              '57420', #Calculus of gallbladder without mention of cholecystitis, without mention of obstruction
                              '78052', #Insomnia, unspecified
                              '7859', #Other symptoms involving cardiovascular system
                              '2639', #Unspecified protein-calorie malnutrition
                              '49320', #Chronic obstructive asthma, unspecified
                              '78901', #Abdominal pain, right upper quadrant
                              '53011', #Reflux esophagitis
                              '4299', #Heart disease, unspecified
                              '99591', #Sepsis
                              '56211', #Diverticulitis of colon (without mention of hemorrhage)
                              '78703', #Vomiting alone
                              '78652', #Painful respiration
                              '7852', #Undiagnosed cardiac murmurs
                              '2762', #Acidosis
                              '71949', #Pain in joint, multiple sites
                              '7292', #Neuralgia, neuritis, and radiculitis, unspecified
                              '7230', #Spinal stenosis in cervical region
                              '71944', #Pain in joint, hand
                              '78959', #Other ascites
                              '27669', #Other fluid overload
                              '51884', #Acute and chronic respiratory failure
                              '5609', #Unspecified intestinal obstruction
                              '78904', #Abdominal pain, left lower quadrant
                              '42769', #Other premature beats
                              '7806', #Fever and other physiologic disturbances of temperature regulation
                              '2512', #Hypoglycemia, unspecified
                              '78607', #Wheezing
                              '7873', #Flatulence, eructation, and gas pain
                              '78600', #Respiratory abnormality, unspecified
                              '78903', #Abdominal pain, right lower quadrant
                              '5070', #Pneumonitis due to inhalation of food or vomitus
                              '4580', #Orthostatic hypotension
                              '4260', #Atrioventricular block, complete
                              '4270', #Paroxysmal supraventricular tachycardia
                              '49392', #Asthma, unspecified type, with (acute) exacerbation
                              '71942', #Pain in joint, upper arm
                              '51882', #Other pulmonary insufficiency, not elsewhere classified
                              '53540', #Other specified gastritis, without mention of hemorrhage
                              '53510', #Atrophic gastritis, without mention of hemorrhage
                              '53500', #Acute gastritis, without mention of hemorrhage
                              '53010', #Esophagitis, unspecified
                              '4264', #Right bundle branch block
                              '5368', #Dyspepsia and other specified disorders of function of stomach
                              '4829', #Bacterial pneumonia, unspecified
                              '4263', #Other left bundle branch block
                              '42611', #First degree atrioventricular block
                              '7869', #Other symptoms involving respiratory system and chest
                              '79311', #Solitary pulmonary nodule
                              '07999', #Unspecified viral infection
                              '2765', #Volume depletion
                              '4940', #Bronchiectasis without acute exacerbation
                              '7837', #Adult failure to thrive
                              '27650', #Volume depletion, unspecified
                              '42761', #Supraventricular premature beats
                              '7990', #Asphyxia and hypoxemia
                              '78902', #Abdominal pain, left upper quadrant
                              '5184', #Acute edema of lung, unspecified
                              '5110', #Pleurisy without mention of effusion or current tuberculosis
                              '7808', #Generalized hyperhidrosis
                              '481', #Pneumococcal pneumonia [Streptococcus pneumoniae pneumonia]
                              '57510', #Cholecystitis, unspecified
                              '7871', #Heartburn
                              '4259' #Secondary cardiomyopathy, unspecified
                              )))
    
icd10_codes <- as.character((c('J449', #Chronic obstructive pulmonary disease, unspecified
                               'R0602', #Shortness of breath
                               'E039', #Hypothyroidism, unspecified
                               'K219', #Gastro-esophageal reflux disease without esophagitis
                               'I4891', #Unspecified atrial fibrillation
                               'R079', #Chest pain, unspecified
                               'F419', #Anxiety disorder, unspecified
                               'I739', #Peripheral vascular disease, unspecified
                               'J441', #Chronic obstructive pulmonary disease with (acute) exacerbation
                               'R05', #Cough
                               'R531', #Weakness
                               'M542', #Cervicalgia
                               'I480', #Paroxysmal atrial fibrillation
                               'J189', #Pneumonia, unspecified organism
                               'R0789', #Other chest pain
                               'F411', #Generalized anxiety disorder
                               'R109', #Unspecified abdominal pain
                               'R918', #Other nonspecific abnormal finding of lung field
                               'J45909', #Unspecified asthma, uncomplicated
                               'R9431', #Abnormal electrocardiogram [ECG] [EKG]
                               'R0600', #Dyspnea, unspecified
                               'R42', #Dizziness and giddiness
                               'R0902', #Hypoxemia
                               'J90', #Pleural effusion, not elsewhere classified
                               'R600', #Localized edema
                               'E876', #Hypokalemia
                               'R5383', #Other fatigue
                               'R112', #Nausea with vomiting, unspecified
                               'I517', #Cardiomegaly
                               'M25512', #Pain in left shoulder
                               'A419', #Sepsis, unspecified organism
                               'R55', #Syncope and collapse
                               'R51', #Headache
                               'R4182', #Altered mental status, unspecified
                               'E875', #Hyperkalemia
                               'E871', #Hypo-osmolality and hyponatremia
                               'E860', #Dehydration
                               'M549', #Dorsalgia, unspecified
                               'G4700', #Insomnia, unspecified
                               'R5381', #Other malaise
                               'J439', #Emphysema, unspecified
                               'R110', #Nausea
                               'J209', #Acute bronchitis, unspecified
                               'J9601', #Acute respiratory failure with hypoxia
                               'I429', #Cardiomyopathy, unspecified
                               'I350', #Nonrheumatic aortic (valve) stenosis
                               'I340', #Nonrheumatic mitral (valve) insufficiency
                               'R000', #Tachycardia, unspecified
                               'J9811', #Atelectasis
                               'R509', #Fever, unspecified
                               'M546', #Pain in thoracic spine
                               'J069', #Acute upper respiratory infection, unspecified
                               'R609', #Edema, unspecified
                               'D72829', #Elevated white blood cell count, unspecified
                               'D696', #Thrombocytopenia, unspecified
                               'R1084', #Generalized abdominal pain
                               'G4730', #Sleep apnea, unspecified
                               'E872', #Acidosis
                               'R002', #Palpitations
                               'R1013', #Epigastric pain
                               'I959', #Hypotension, unspecified
                               'R001', #Bradycardia, unspecified
                               'K5730', #Diverticulosis of large intestine without perforation or abscess without bleeding
                               'R0989', #Other specified symptoms and signs involving the circulatory and respiratory systems
                               'E8770', #Fluid overload, unspecified
                               'J9600', #Acute respiratory failure, unspecified whether with hypoxia or hypercapnia
                               'M791', #Myalgia
                               'J40', #Bronchitis, not specified as acute or chronic
                               'M47812', #Spondylosis without myelopathy or radiculopathy, cervical region
                               'J984', #Other disorders of lung
                               'R0609', #Other forms of dyspnea
                               'R911', #Solitary pulmonary nodule
                               'I519', #Heart disease, unspecified
                               'J9621', #Acute and chronic respiratory failure with hypoxia
                               'J0190', #Acute sinusitis, unspecified
                               'K449', #Diaphragmatic hernia without obstruction or gangrene
                               'F418', #Other specified anxiety disorders
                               'I499', #Cardiac arrhythmia, unspecified
                               'K529', #Noninfective gastroenteritis and colitis, unspecified
                               'R188', #Other ascites
                               'J440', #Chronic obstructive pulmonary disease with acute lower respiratory infection
                               'M4802', #Spinal stenosis, cervical region
                               'R072', #Precordial pain
                               'M2550', #Pain in unspecified joint
                               'J811', #Chronic pulmonary edema
                               'I209', #Angina pectoris, unspecified
                               'I472', #Ventricular tachycardia
                               'I272', #Other secondary pulmonary hypertension
                               'I495', #Sick sinus syndrome
                               'J029', #Acute pharyngitis, unspecified
                               'I4892', #Unspecified atrial flutter
                               'K210', #Gastro-esophageal reflux disease with esophagitis
                               'R410', #Disorientation, unspecified
                               'I471', #Supraventricular tachycardia
                               'R1011', #Right upper quadrant pain
                               'J9690', #Respiratory failure, unspecified, unspecified whether with hypoxia or hypercapnia
                               'K8020', #Calculus of gallbladder without cholecystitis without obstruction
                               'K2970', #Gastritis, unspecified, without bleeding
                               'J8410', #Pulmonary fibrosis, unspecified
                               'R1110', #Vomiting, unspecified
                               'R062', #Wheezing
                               'R7309', #Other abnormal glucose
                               'R202', #Paresthesia of skin
                               'I481', #Persistent atrial fibrillation
                               'I2720', #Pulmonary hypertension, unspecified
                               'I493', #Ventricular premature depolarization
                               'I951', #Orthostatic hypotension
                               'I351', #Nonrheumatic aortic (valve) insufficiency
                               'R0689', #Other abnormalities of breathing
                               'R1032', #Left lower quadrant pain
                               'R200', #Anesthesia of skin
                               'E162', #Hypoglycemia, unspecified
                               'R140', #Abdominal distension (gaseous)
                               'I200', #Unstable angina
                               'R1031', #Right lower quadrant pain
                               'J690', #Pneumonitis due to inhalation of food and vomit
                               'J45901', #Unspecified asthma with (acute) exacerbation
                               'R1030', #Lower abdominal pain, unspecified
                               'I447', #Left bundle-branch block, unspecified
                               'J181', #Lobar pneumonia, unspecified organism
                               'R011', #Cardiac murmur, unspecified
                               'M25519', #Pain in unspecified shoulder
                               'I4510', #Unspecified right bundle-branch block
                               'R0781', #Pleurodynia
                               'E440', #Moderate protein-calorie malnutrition
                               'R627', #Adult failure to thrive
                               'I498', #Other specified cardiac arrhythmias
                               'J9622', #Acute and chronic respiratory failure with hypercapnia
                               'I440', #Atrioventricular block, first degree
                               'K2950', #Unspecified chronic gastritis without bleeding
                               'I208', #Other forms of angina pectoris
                               'J810', #Acute pulmonary edema
                               'J9602', #Acute respiratory failure with hypercapnia
                               'R601', #Generalized edema
                               'I442', #Atrioventricular block, complete
                               'M79602', #Pain in left arm
                               'I359', #Nonrheumatic aortic valve disorder, unspecified
                               'R404', #Transient alteration of awareness
                               'M79609', #Pain in unspecified limb
                               'K5790', #Diverticulosis of intestine, part unspecified, without perforation or abscess without bleeding
                               'M792', #Neuralgia and neuritis, unspecified
                               'J159', #Unspecified bacterial pneumonia
                               'J479', #Bronchiectasis, uncomplicated
                               'K5732', #Diverticulitis of large intestine without perforation or abscess without bleeding
                               'J45998', #Other asthma
                               'R1012', #Left upper quadrant pain
                               'I491', #Atrial premature depolarization
                               'I358', #Other nonrheumatic aortic valve disorders
                               'K209', #Esophagitis, unspecified
                               'B349', #Viral infection, unspecified
                               'M25521', #Pain in right elbow
                               'R1010', #Upper abdominal pain, unspecified
                               'M5489', #Other dorsalgia
                               'M25522', #Pain in left elbow
                               'J111', #Influenza due to unidentified influenza virus with other respiratory manifestations
                               'R6521', #Severe sepsis with septic shock
                               'I348', #Other nonrheumatic mitral valve disorders
                               'K2900' #Acute gastritis without bleeding
                               )))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
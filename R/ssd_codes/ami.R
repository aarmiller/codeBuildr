## Codes for ami 

    
# Description:
    
desc <- "Acute myocardial infarction"
    
# Diagnosis codes:

# tmp <- read_csv("~/Documents/GitHub/delay_dx/params/ssd_codes/ami/ssd_codes.csv")
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
    
icd9_codes <- as.character((c('78650', #Chest pain NOS
                              '78651', #Precordial pain
                              '78659', #Chest pain NEC
                              '4110', #Post MI syndrome
                              '4111', #Intermed coronary synd
                              '4118', #Other
                              '41181', #Acute cor occlsn w/o MI
                              '41189', #Ac ischemic hrt dis NEC
                              '412', #Old myocardial infarct
                              '4130', #Angina decubitus
                              '4131', #Prinzmetal angina
                              '4139', #Angina pectoris NEC/NOS
                              '4140', #Coronary atherosclerosis
                              '41400', #Cor ath unsp vsl ntv/gft
                              '41401', #Crnry athrscl natve vssl
                              '41406', #Cor ath natv art tp hrt
                              '4142', #Chr tot occlus cor artry
                              '4143', #Cor ath d/t lpd rch plaq
                              '4144', #Cor ath d/t calc cor lsn
                              '4148', #Chr ischemic hrt dis NEC
                              '4149', #Chr ischemic hrt dis NOS
                              'V4581', #Aortocoronary bypass
                              'V4582', #Status-post ptca
                              '5131', #Abscess of mediastinum
                              '514', #Pulm congest/hypostasis
                              '515', #Postinflam pulm fibrosis
                              '5160', #Pul alveolar proteinosis
                              '5161', #Idio pulm hemosiderosis
                              '5162', #Pulm alveolar microlith
                              '5163', #Idiopathic interstitial pneumonia
                              '51630', #Idiopath inters pneu NOS
                              '51631', #Idiopath pulmon fibrosis
                              '51632', #Idio non-spec inter pneu
                              '51633', #Acute interstitial pneum
                              '51634', #Resp brncio interst lung
                              '51635', #Idiopth lym interst pneu
                              '51636', #Cryptogenic organiz pneu
                              '51637', #Desquamatv interst pneu
                              '5164', #Lymphangioleiomyomatosis
                              '5165', #Adlt pul Langs cell hist
                              '51661', #Neuroend cell hyprpl inf
                              '51662', #Pulm interstitl glycogen
                              '51663', #Surfactant mutation lung
                              '51664', #Alv cap dysp w vn misaln
                              '51669', #Oth intrst lung dis chld
                              '5168', #Alveol pneumonopathy NEC
                              '5169', #Alveol pneumonopathy NOS
                              '5172', #Syst sclerosis lung dis
                              '5178', #Lung involv in oth dis
                              '5183', #Pulmonary eosinophilia
                              '5184', #Acute lung edema NOS
                              '51889', #Other lung disease NEC
                              '5194', #Disorders of diaphragm
                              '5198', #Resp system disease NEC
                              '5199', #Resp system disease NOS
                              '7825', #Cyanosis
                              '78600', #Respiratory abnorm NOS
                              '78601', #Hyperventilation
                              '78602', #Orthopnea
                              '78603', #Apnea
                              '78604', #Cheyne-stokes respiratn
                              '78605', #Shortness of breath
                              '78606', #Tachypnea
                              '78607', #Wheezing
                              '78609', #Respiratory abnorm NEC
                              '7862', #Cough
                              '7863', #Hemoptysis
                              '78630', #Hemoptysis NOS
                              '78631', #Ac idio pul hemrg infant
                              '78639', #Hemoptysis NEC
                              '7864', #Abnormal sputum
                              '78652', #Painful respiration
                              '7866', #Chest swelling/mass/lump
                              '7867', #Abnormal chest sounds
                              '7868', #Hiccough
                              '7869', #Resp sys/chest symp NEC
                              '7931', #Lung field
                              '79311', #Solitary pulmonry nodule
                              '79319', #Ot nonsp ab fnd lung fld
                              '7942', #Abn pulmonary func study
                              'V126', #Diseases of respiratory system
                              'V1260', #Hx resp system dis NOS
                              'V1261', #Prsnl hx recur pneumonia
                              'V1269', #Hx resp system dis NEC
                              'V426', #Lung transplant status
                              '7890', #Abdominal pain
                              '78900', #Abdmnal pain unspcf site
                              '78901', #Abdmnal pain rt upr quad
                              '78902', #Abdmnal pain lft up quad
                              '78903', #Abdmnal pain rt lwr quad
                              '78904', #Abdmnal pain lt lwr quad
                              '78905', #Abdmnal pain periumbilic
                              '78906', #Abdmnal pain epigastric
                              '78907', #Abdmnal pain generalized
                              '78909', #Abdmnal pain oth spcf st
                              '78960', #Abdmnal tndr unspcf site
                              '78961', #Abdmnal tndr rt upr quad
                              '78962', #Abdmnal tndr lft up quad
                              '78963', #Abdmnal tndr rt lwr quad
                              '78964', #Abdmnal tndr lt lwr quad
                              '78965', #Abdmnal tndr periumbilic
                              '78966', #Abdmnal tndr epigastric
                              '78967', #Abdmnal tndr generalized
                              '78969', #Abdmnal tndr oth spcf st
                              '39891', #Rheumatic heart failure
                              '4280', #CHF NOS
                              '4281', #Left heart failure
                              '42820', #Systolic hrt failure NOS
                              '42821', #Ac systolic hrt failure
                              '42822', #Chr systolic hrt failure
                              '42823', #Ac on chr syst hrt fail
                              '42830', #Diastolc hrt failure NOS
                              '42831', #Ac diastolic hrt failure
                              '42832', #Chr diastolic hrt fail
                              '42833', #Ac on chr diast hrt fail
                              '42840', #Syst/diast hrt fail NOS
                              '42841', #Ac syst/diastol hrt fail
                              '42842', #Chr syst/diastl hrt fail
                              '42843', #Ac/chr syst/dia hrt fail
                              '4289', #Heart failure NOS
                              '4270', #Parox atrial tachycardia
                              '4271', #Parox ventric tachycard
                              '4272', #Parox tachycardia NOS
                              '42731', #Atrial fibrillation
                              '42732', #Atrial flutter
                              '42760', #Premature beats NOS
                              '42761', #Atrial premature beats
                              '42769', #Premature beats NEC
                              '42781', #Sinoatrial node dysfunct
                              '42789', #Cardiac dysrhythmias NEC
                              '4279', #Cardiac dysrhythmia NOS
                              '7850', #Tachycardia NOS
                              '7851', #Palpitations
                              '4561', #Esoph varices w/o bleed
                              '45621', #Esoph varice oth dis NOS
                              '5300', #Achalasia & cardiospasm
                              '5301', #Esophagitis
                              '53010', #Esophagitis, unspecified
                              '53011', #Reflux esophagitis
                              '53012', #Acute esophagitis
                              '53013', #Eosinophilic esophagitis
                              '53019', #Other esophagitis
                              '5302', #Ulcer of esophagus
                              '53020', #Ulc esophagus w/o bleed
                              '53021', #Ulcer esophagus w bleed
                              '5303', #Esophageal stricture
                              '5304', #Perforation of esophagus
                              '5305', #Dyskinesia of esophagus
                              '5306', #Acq esophag diverticulum
                              '5308', #Other specified disorders of esophagus
                              '53081', #Esophageal reflux
                              '53083', #Esophageal leukoplakia
                              '53084', #Tracheoesophageal fstula
                              '53085', #Barrett's esophagus
                              '53089', #Other dsrders esophagus
                              '5309', #Esophageal disorder NOS
                              '7802', #Syncope and collapse
                              '538', #GI mucositis (ulceratve)
                              '5581', #Radiation gastroenterit
                              '5582', #Toxic gastroenteritis
                              '5640', #Constipation
                              '56400', #Constipation NOS
                              '56401', #Slow transt constipation
                              '56402', #Outlet dysfnc constption
                              '56409', #Constipation NEC
                              '5641', #Irritable bowel syndrome
                              '5645', #Functional diarrhea
                              '5647', #Megacolon NEC
                              '5648', #Other specified functional disorders of intestine
                              '56481', #Neurogenic bowel
                              '56489', #Funct dis intestine NEC
                              '5649', #Funct dis intestine NOS
                              '5680', #Peritoneal adhesions
                              '56881', #Hemoperitoneum
                              '56882', #Peritoneal effusion
                              '56889', #Peritoneal disorder NEC
                              '5689', #Peritoneal disorder NOS
                              '56981', #Intestinal fistula
                              '56982', #Ulceration of intestine
                              '56983', #Perforation of intestine
                              '56984', #Angio intes w/o hmrhg
                              '56985', #Angio intes w hmrhg
                              '56986', #Dieulafoy les, intestine
                              '56987', #Vomiting of fecal matter
                              '56989', #Intestinal disorders NEC
                              '5699', #Intestinal disorder NOS
                              '5790', #Celiac disease
                              '5791', #Tropical sprue
                              '5792', #Blind loop syndrome
                              '5798', #Intest malabsorption NEC
                              '5799', #Intest malabsorption NOS
                              '7871', #Heartburn
                              '7872', #Dysphagia
                              '78720', #Dysphagia NOS
                              '78721', #Dysphagia, oral phase
                              '78722', #Dysphagia, oropharyngeal
                              '78723', #Dysphagia, pharyngeal
                              '78724', #Dysphagia,pharyngoesoph
                              '78729', #Dysphagia NEC
                              '7873', #Flatul/eructat/gas pain
                              '7874', #Visible peristalsis
                              '7875', #Abnormal bowel sounds
                              '7876', #Incontinence of feces
                              '78760', #Full incontinence-feces
                              '78761', #Incomplete defecation
                              '78762', #Fecal smearing
                              '78763', #Fecal urgency
                              '7877', #Abnormal feces
                              '7879', #Other symptoms involving digestive system
                              '78791', #Diarrhea
                              '78799', #Digestve syst symptm NEC
                              '7892', #Splenomegaly
                              '7893', #Abdominal or pelvic swelling, mass, or lump
                              '78930', #Abdmnal mass unspcf site
                              '78931', #Abdmnal mass rt upr quad
                              '78932', #Abdmnal mass lft up quad
                              '78933', #Abdmnal mass rt lwr quad
                              '78934', #Abdmnal mass lt lwr quad
                              '78935', #Abdmnal mass periumbilic
                              '78936', #Abdmnal mass epigastric
                              '78937', #Abdmnal mass generalized
                              '78939', #Abdmnal mass oth spcf st
                              '7894', #Abdominal rigidity
                              '78940', #Abdmnal rgdt unspcf site
                              '78941', #Abdmnal rgdt rt upr quad
                              '78942', #Abdmnal rgdt lft up quad
                              '78943', #Abdmnal rgdt rt lwr quad
                              '78944', #Abdmnal rgdt lt lwr quad
                              '78945', #Abdmnal rgdt periumbilic
                              '78946', #Abdmnal rgdt epigastric
                              '78947', #Abdmnal rgdt generalized
                              '78949', #Abdmnal rgdt oth spcf st
                              '7899', #Abdomen/pelvis symp NEC
                              '7921', #Abn find-stool contents
                              '7934', #Nonsp abn find-gi tract
                              '7936', #Nonsp abn fnd-abdom area
                              'V127', #Diseases of digestive system
                              'V1270', #Prsnl hst unspc dgstv ds
                              'V1279', #Prsnl hst ot spf dgst ds
                              'V416', #Problem w swallowing
                              'V441', #Gastrostomy status
                              'V442', #Ileostomy status
                              'V443', #Colostomy status
                              'V444', #Enterostomy status NEC
                              'V453', #Intestinal bypass status
                              'V473', #Digestive problems NEC
                              'V535', #Other gastrointestinal appliance and device
                              'V5350', #Fit/adjust intestinl dev
                              'V5351', #Fit/adj gastric lap band
                              'V5359', #Fit/adjust gi app-device
                              'V551', #Atten to gastrostomy
                              'V552', #Atten to ileostomy
                              'V553', #Atten to colostomy
                              'V554', #Atten to enterostomy NEC
                              '4011', #Benign hypertension
                              '4019', #Hypertension NOS
                              '7807', #Malaise and fatigue
                              '78071', #Chronic fatigue syndrome
                              '78079', #Malaise and fatigue NEC
                              '38600', #Meniere's disease NOS
                              '38601', #Actv Meniere,cochlvestib
                              '38602', #Active Meniere, cochlear
                              '38603', #Actv Meniere, vestibular
                              '38604', #Inactive Meniere's dis
                              '38610', #Peripheral vertigo NOS
                              '38611', #Benign parxysmal vertigo
                              '38612', #Vestibular neuronitis
                              '38619', #Peripheral vertigo NEC
                              '3862', #Central origin vertigo
                              '38630', #Labyrinthitis NOS
                              '38631', #Serous labyrinthitis
                              '38632', #Circumscri labyrinthitis
                              '38633', #Suppurativ labyrinthitis
                              '38634', #Toxic labyrinthitis
                              '38635', #Viral labyrinthitis
                              '38640', #Labyrinthine fistula NOS
                              '38641', #Round window fistula
                              '38642', #Oval window fistula
                              '38643', #Semicircul canal fistula
                              '38648', #Labyrinth fistula comb
                              '38650', #Labyrinthine dysfunc NOS
                              '38651', #Hypract labyrinth unilat
                              '38652', #Hyperact labyrinth bilat
                              '38653', #Hypoact labyrinth unilat
                              '38654', #Hypoact labyrinth bilat
                              '38655', #Loss labyrn react unilat
                              '38656', #Loss labyrin react bilat
                              '38658', #Labyrinthine dysfunc NEC
                              '3868', #Disorders labyrinth NEC
                              '3869', #Vertiginous synd NOS
                              '7804', #Dizziness and giddiness
                              '5350', #Acute gastritis
                              '53500', #Acute gastrtis w/o hmrhg
                              '53501', #Acute gastritis w hmrhg
                              '5351', #Atrophic gastritis
                              '53510', #Atrph gastrtis w/o hmrhg
                              '53511', #Atrph gastritis w hmrhg
                              '5352', #Gastric mucosal hypertrophy
                              '53520', #Gstr mcsl hyprt w/o hmrg
                              '53521', #Gstr mcsl hyprt w hmrg
                              '5354', #Other specified gastritis
                              '53540', #Oth spf gstrt w/o hmrhg
                              '53541', #Oth spf gastrt w hmrhg
                              '5355', #Unspecified gastritis and gastroduodenitis
                              '53550', #Gstr/ddnts NOS w/o hmrhg
                              '53551', #Gstr/ddnts NOS w hmrhg
                              '5356', #Duodenitis
                              '53560', #Duodenitis w/o hmrhg
                              '53561', #Duodenitis w hmrhg
                              '53570', #Eosinophil gastrt wo hem
                              '53571' #Eosinophilc gastrt w hem
                              )))
    
icd10_codes <- as.character((c('R072', #Precordial pain
                               'R0782', #Intercostal pain
                               'R0789', #Other chest pain
                               'R079', #Chest pain, unspecified
                               'I200', #Unstable angina
                               'I201', #Angina pectoris with documented spasm
                               'I208', #Other forms of angina pectoris
                               'I209', #Angina pectoris, unspecified
                               'I237', #Postinfarction angina
                               'I240', #Acute coronary thrombosis not resulting in myocardial infrc
                               'I241', #Dressler's syndrome
                               'I248', #Other forms of acute ischemic heart disease
                               'I249', #Acute ischemic heart disease, unspecified
                               'I2510', #Athscl heart disease of native coronary artery w/o ang pctrs
                               'I25110', #Athscl heart disease of native cor art w unstable ang pctrs
                               'I25111', #Athscl heart disease of native cor art w ang pctrs w spasm
                               'I25118', #Athscl heart disease of native cor art w oth ang pctrs
                               'I25119', #Athscl heart disease of native cor art w unsp ang pctrs
                               'I252', #Old myocardial infarction
                               'I255', #Ischemic cardiomyopathy
                               'I256', #Silent myocardial ischemia
                               'I25750', #Athscl native cor art of txplt heart w unstable angina
                               'I25751', #Athscl native cor art of txplt heart w ang pctrs w spasm
                               'I25758', #Athscl native cor art of transplanted heart w oth ang pctrs
                               'I25759', #Athscl native cor art of transplanted heart w unsp ang pctrs
                               'I25811', #Athscl native cor art of transplanted heart w/o ang pctrs
                               'I2582', #Chronic total occlusion of coronary artery
                               'I2583', #Coronary atherosclerosis due to lipid rich plaque
                               'I2584', #Coronary atherosclerosis due to calcified coronary lesion
                               'I2589', #Other forms of chronic ischemic heart disease
                               'I259', #Chronic ischemic heart disease, unspecified
                               'Z951', #Presence of aortocoronary bypass graft
                               'Z955', #Presence of coronary angioplasty implant and graft
                               'Z9861', #Coronary angioplasty status
                               'J182', #Hypostatic pneumonia, unspecified organism
                               'J22', #Unspecified acute lower respiratory infection
                               'J810', #Acute pulmonary edema
                               'J811', #Chronic pulmonary edema
                               'J82', #Pulmonary eosinophilia, not elsewhere classified
                               'J8401', #Alveolar proteinosis
                               'J8402', #Pulmonary alveolar microlithiasis
                               'J8403', #Idiopathic pulmonary hemosiderosis
                               'J8409', #Other alveolar and parieto-alveolar conditions
                               'J8410', #Pulmonary fibrosis, unspecified
                               'J84111', #Idiopathic interstitial pneumonia, not otherwise specified
                               'J84112', #Idiopathic pulmonary fibrosis
                               'J84113', #Idiopathic non-specific interstitial pneumonitis
                               'J84114', #Acute interstitial pneumonitis
                               'J84115', #Respiratory bronchiolitis interstitial lung disease
                               'J84116', #Cryptogenic organizing pneumonia
                               'J84117', #Desquamative interstitial pneumonia
                               'J8417', #Oth interstit pulmon dis w fibrosis in dis classd elswhr
                               'J842', #Lymphoid interstitial pneumonia
                               'J8481', #Lymphangioleiomyomatosis
                               'J8482', #Adult pulmonary Langerhans cell histiocytosis
                               'J8483', #Surfactant mutations of the lung
                               'J84841', #Neuroendocrine cell hyperplasia of infancy
                               'J84842', #Pulmonary interstitial glycogenosis
                               'J84843', #Alveolar capillary dysplasia with vein misalignment
                               'J84848', #Other interstitial lung diseases of childhood
                               'J8489', #Other specified interstitial pulmonary diseases
                               'J849', #Interstitial pulmonary disease, unspecified
                               'J852', #Abscess of lung without pneumonia
                               'J853', #Abscess of mediastinum
                               'J984', #Other disorders of lung
                               'J986', #Disorders of diaphragm
                               'J988', #Other specified respiratory disorders
                               'J989', #Respiratory disorder, unspecified
                               'J99', #Respiratory disorders in diseases classified elsewhere
                               'R042', #Hemoptysis
                               'R0481', #Acute idiopathic pulmonary hemorrhage in infants
                               'R0489', #Hemorrhage from other sites in respiratory passages
                               'R049', #Hemorrhage from respiratory passages, unspecified
                               'R05', #Cough
                               'R0600', #Dyspnea, unspecified
                               'R0601', #Orthopnea
                               'R0602', #Shortness of breath
                               'R0603', #Acute respiratory distress
                               'R0609', #Other forms of dyspnea
                               'R062', #Wheezing
                               'R063', #Periodic breathing
                               'R064', #Hyperventilation
                               'R066', #Hiccough
                               'R0681', #Apnea, not elsewhere classified
                               'R0682', #Tachypnea, not elsewhere classified
                               'R0683', #Snoring
                               'R0689', #Other abnormalities of breathing
                               'R069', #Unspecified abnormalities of breathing
                               'R071', #Chest pain on breathing
                               'R0781', #Pleurodynia
                               'R0902', #Hypoxemia
                               'R093', #Abnormal sputum
                               'R230', #Cyanosis
                               'R911', #Solitary pulmonary nodule
                               'R918', #Other nonspecific abnormal finding of lung field
                               'Z8701', #Personal history of pneumonia (recurrent)
                               'Z8709', #Personal history of other diseases of the respiratory system
                               'Z942', #Lung transplant status
                               'R100', #Acute abdomen
                               'R1010', #Upper abdominal pain, unspecified
                               'R1011', #Right upper quadrant pain
                               'R1012', #Left upper quadrant pain
                               'R1013', #Epigastric pain
                               'R102', #Pelvic and perineal pain
                               'R1030', #Lower abdominal pain, unspecified
                               'R1031', #Right lower quadrant pain
                               'R1032', #Left lower quadrant pain
                               'R1033', #Periumbilical pain
                               'R10811', #Right upper quadrant abdominal tenderness
                               'R10812', #Left upper quadrant abdominal tenderness
                               'R10813', #Right lower quadrant abdominal tenderness
                               'R10814', #Left lower quadrant abdominal tenderness
                               'R10815', #Periumbilic abdominal tenderness
                               'R10816', #Epigastric abdominal tenderness
                               'R10817', #Generalized abdominal tenderness
                               'R10819', #Abdominal tenderness, unspecified site
                               'R10821', #Right upper quadrant rebound abdominal tenderness
                               'R10822', #Left upper quadrant rebound abdominal tenderness
                               'R10823', #Right lower quadrant rebound abdominal tenderness
                               'R10824', #Left lower quadrant rebound abdominal tenderness
                               'R10825', #Periumbilic rebound abdominal tenderness
                               'R10826', #Epigastric rebound abdominal tenderness
                               'R10827', #Generalized rebound abdominal tenderness
                               'R10829', #Rebound abdominal tenderness, unspecified site
                               'R1084', #Generalized abdominal pain
                               'R109', #Unspecified abdominal pain
                               'I0981', #Rheumatic heart failure
                               'I501', #Left ventricular failure, unspecified
                               'I5020', #Unspecified systolic (congestive) heart failure
                               'I5021', #Acute systolic (congestive) heart failure
                               'I5022', #Chronic systolic (congestive) heart failure
                               'I5023', #Acute on chronic systolic (congestive) heart failure
                               'I5030', #Unspecified diastolic (congestive) heart failure
                               'I5031', #Acute diastolic (congestive) heart failure
                               'I5032', #Chronic diastolic (congestive) heart failure
                               'I5033', #Acute on chronic diastolic (congestive) heart failure
                               'I5040', #Unsp combined systolic and diastolic (congestive) hrt fail
                               'I5041', #Acute combined systolic and diastolic (congestive) hrt fail
                               'I5042', #Chronic combined systolic and diastolic hrt fail
                               'I5043', #Acute on chronic combined systolic and diastolic hrt fail
                               'I50810', #Right heart failure, unspecified
                               'I50811', #Acute right heart failure
                               'I50812', #Chronic right heart failure
                               'I50813', #Acute on chronic right heart failure
                               'I50814', #Right heart failure due to left heart failure
                               'I5082', #Biventricular heart failure
                               'I5083', #High output heart failure
                               'I5084', #End stage heart failure
                               'I5089', #Other heart failure
                               'I509', #Heart failure, unspecified
                               'I470', #Re-entry ventricular arrhythmia
                               'I471', #Supraventricular tachycardia
                               'I472', #Ventricular tachycardia
                               'I479', #Paroxysmal tachycardia, unspecified
                               'I480', #Paroxysmal atrial fibrillation
                               'I481', #Persistent atrial fibrillation
                               'I482', #Chronic atrial fibrillation
                               'I483', #Typical atrial flutter
                               'I484', #Atypical atrial flutter
                               'I4891', #Unspecified atrial fibrillation
                               'I4892', #Unspecified atrial flutter
                               'I491', #Atrial premature depolarization
                               'I492', #Junctional premature depolarization
                               'I493', #Ventricular premature depolarization
                               'I4940', #Unspecified premature depolarization
                               'I4949', #Other premature depolarization
                               'I495', #Sick sinus syndrome
                               'I498', #Other specified cardiac arrhythmias
                               'I499', #Cardiac arrhythmia, unspecified
                               'R000', #Tachycardia, unspecified
                               'R001', #Bradycardia, unspecified
                               'R002', #Palpitations
                               'B5731', #Megaesophagus in Chagas' disease
                               'I8500', #Esophageal varices without bleeding
                               'I8510', #Secondary esophageal varices without bleeding
                               'K200', #Eosinophilic esophagitis
                               'K208', #Other esophagitis
                               'K209', #Esophagitis, unspecified
                               'K210', #Gastro-esophageal reflux disease with esophagitis
                               'K219', #Gastro-esophageal reflux disease without esophagitis
                               'K220', #Achalasia of cardia
                               'K2210', #Ulcer of esophagus without bleeding
                               'K2211', #Ulcer of esophagus with bleeding
                               'K222', #Esophageal obstruction
                               'K223', #Perforation of esophagus
                               'K224', #Dyskinesia of esophagus
                               'K225', #Diverticulum of esophagus, acquired
                               'K226', #Gastro-esophageal laceration-hemorrhage syndrome
                               'K2270', #Barrett's esophagus without dysplasia
                               'K22710', #Barrett's esophagus with low grade dysplasia
                               'K22711', #Barrett's esophagus with high grade dysplasia
                               'K22719', #Barrett's esophagus with dysplasia, unspecified
                               'K228', #Other specified diseases of esophagus
                               'K229', #Disease of esophagus, unspecified
                               'K23', #Disorders of esophagus in diseases classified elsewhere
                               'R55', #Syncope and collapse
                               'B5732', #Megacolon in Chagas' disease
                               'K520', #Gastroenteritis and colitis due to radiation
                               'K521', #Toxic gastroenteritis and colitis
                               'K5520', #Angiodysplasia of colon without hemorrhage
                               'K5521', #Angiodysplasia of colon with hemorrhage
                               'K5530', #Necrotizing enterocolitis, unspecified
                               'K5531', #Stage 1 necrotizing enterocolitis
                               'K5532', #Stage 2 necrotizing enterocolitis
                               'K5533', #Stage 3 necrotizing enterocolitis
                               'K580', #Irritable bowel syndrome with diarrhea
                               'K581', #Irritable bowel syndrome with constipation
                               'K582', #Mixed irritable bowel syndrome
                               'K588', #Other irritable bowel syndrome
                               'K589', #Irritable bowel syndrome without diarrhea
                               'K5900', #Constipation, unspecified
                               'K5901', #Slow transit constipation
                               'K5902', #Outlet dysfunction constipation
                               'K5903', #Drug induced constipation
                               'K5904', #Chronic idiopathic constipation
                               'K5909', #Other constipation
                               'K591', #Functional diarrhea
                               'K592', #Neurogenic bowel, not elsewhere classified
                               'K593', #Megacolon, not elsewhere classified
                               'K5931', #Toxic megacolon
                               'K5939', #Other megacolon
                               'K598', #Other specified functional intestinal disorders
                               'K599', #Functional intestinal disorder, unspecified
                               'K631', #Perforation of intestine (nontraumatic)
                               'K632', #Fistula of intestine
                               'K633', #Ulcer of intestine
                               'K634', #Enteroptosis
                               'K6381', #Dieulafoy lesion of intestine
                               'K6389', #Other specified diseases of intestine
                               'K639', #Disease of intestine, unspecified
                               'K660', #Peritoneal adhesions (postprocedural) (postinfection)
                               'K661', #Hemoperitoneum
                               'K668', #Other specified disorders of peritoneum
                               'K669', #Disorder of peritoneum, unspecified
                               'K689', #Other disorders of retroperitoneum
                               'K900', #Celiac disease
                               'K901', #Tropical sprue
                               'K902', #Blind loop syndrome, not elsewhere classified
                               'K904', #Other malabsorption due to intolerance
                               'K9049', #Malabsorption due to intolerance, not elsewhere classified
                               'K9089', #Other intestinal malabsorption
                               'K909', #Intestinal malabsorption, unspecified
                               'K9281', #Gastrointestinal mucositis (ulcerative)
                               'K9289', #Other specified diseases of the digestive system
                               'K929', #Disease of digestive system, unspecified
                               'R1113', #Vomiting of fecal matter
                               'R12', #Heartburn
                               'R130', #Aphagia
                               'R1310', #Dysphagia, unspecified
                               'R1311', #Dysphagia, oral phase
                               'R1312', #Dysphagia, oropharyngeal phase
                               'R1313', #Dysphagia, pharyngeal phase
                               'R1314', #Dysphagia, pharyngoesophageal phase
                               'R1319', #Other dysphagia
                               'R140', #Abdominal distension (gaseous)
                               'R141', #Gas pain
                               'R142', #Eructation
                               'R143', #Flatulence
                               'R150', #Incomplete defecation
                               'R151', #Fecal smearing
                               'R152', #Fecal urgency
                               'R159', #Full incontinence of feces
                               'R161', #Splenomegaly, not elsewhere classified
                               'R188', #Other ascites
                               'R1900', #Intra-abd and pelvic swelling, mass and lump, unsp site
                               'R1901', #Right upper quadrant abdominal swelling, mass and lump
                               'R1902', #Left upper quadrant abdominal swelling, mass and lump
                               'R1903', #Right lower quadrant abdominal swelling, mass and lump
                               'R1904', #Left lower quadrant abdominal swelling, mass and lump
                               'R1905', #Periumbilic swelling, mass or lump
                               'R1906', #Epigastric swelling, mass or lump
                               'R1907', #Generalized intra-abd and pelvic swelling, mass and lump
                               'R1909', #Other intra-abdominal and pelvic swelling, mass and lump
                               'R1911', #Absent bowel sounds
                               'R1912', #Hyperactive bowel sounds
                               'R1915', #Other abnormal bowel sounds
                               'R192', #Visible peristalsis
                               'R1930', #Abdominal rigidity, unspecified site
                               'R1931', #Right upper quadrant abdominal rigidity
                               'R1932', #Left upper quadrant abdominal rigidity
                               'R1933', #Right lower quadrant abdominal rigidity
                               'R1934', #Left lower quadrant abdominal rigidity
                               'R1935', #Periumbilic abdominal rigidity
                               'R1936', #Epigastric abdominal rigidity
                               'R1937', #Generalized abdominal rigidity
                               'R194', #Change in bowel habit
                               'R195', #Other fecal abnormalities
                               'R197', #Diarrhea, unspecified
                               'R198', #Oth symptoms and signs involving the dgstv sys and abdomen
                               'Z431', #Encounter for attention to gastrostomy
                               'Z432', #Encounter for attention to ileostomy
                               'Z433', #Encounter for attention to colostomy
                               'Z434', #Encounter for attn to oth artif openings of digestive tract
                               'Z4651', #Encounter for fitting and adjustment of gastric lap band
                               'Z4659', #Encounter for fit/adjst of GI appliance and device
                               'Z8719', #Personal history of other diseases of the digestive system
                               'Z931', #Gastrostomy status
                               'Z932', #Ileostomy status
                               'Z933', #Colostomy status
                               'Z934', #Other artificial openings of gastrointestinal tract status
                               'Z9482', #Intestine transplant status
                               'Z980', #Intestinal bypass and anastomosis status
                               'Z9884', #Bariatric surgery status
                               'I10', #Essential (primary) hypertension
                               'G933', #Postviral fatigue syndrome
                               'R530', #Neoplastic (malignant) related fatigue
                               'R531', #Weakness
                               'R5381', #Other malaise
                               'R5382', #Chronic fatigue, unspecified
                               'R5383', #Other fatigue
                               'H8101', #Meniere's disease, right ear
                               'H8102', #Meniere's disease, left ear
                               'H8103', #Meniere's disease, bilateral
                               'H8109', #Meniere's disease, unspecified ear
                               'H8110', #Benign paroxysmal vertigo, unspecified ear
                               'H8111', #Benign paroxysmal vertigo, right ear
                               'H8112', #Benign paroxysmal vertigo, left ear
                               'H8113', #Benign paroxysmal vertigo, bilateral
                               'H8120', #Vestibular neuronitis, unspecified ear
                               'H8121', #Vestibular neuronitis, right ear
                               'H8122', #Vestibular neuronitis, left ear
                               'H8123', #Vestibular neuronitis, bilateral
                               'H81311', #Aural vertigo, right ear
                               'H81312', #Aural vertigo, left ear
                               'H81313', #Aural vertigo, bilateral
                               'H81319', #Aural vertigo, unspecified ear
                               'H81391', #Other peripheral vertigo, right ear
                               'H81392', #Other peripheral vertigo, left ear
                               'H81393', #Other peripheral vertigo, bilateral
                               'H81399', #Other peripheral vertigo, unspecified ear
                               'H8141', #Vertigo of central origin, right ear
                               'H8142', #Vertigo of central origin, left ear
                               'H8143', #Vertigo of central origin, bilateral
                               'H8149', #Vertigo of central origin, unspecified ear
                               'H818X1', #Other disorders of vestibular function, right ear
                               'H818X2', #Other disorders of vestibular function, left ear
                               'H818X3', #Other disorders of vestibular function, bilateral
                               'H818X9', #Other disorders of vestibular function, unspecified ear
                               'H8190', #Unspecified disorder of vestibular function, unspecified ear
                               'H8191', #Unspecified disorder of vestibular function, right ear
                               'H8192', #Unspecified disorder of vestibular function, left ear
                               'H8193', #Unspecified disorder of vestibular function, bilateral
                               'H821', #Vertiginous syndromes in diseases classd elswhr, right ear
                               'H822', #Vertiginous syndromes in diseases classd elswhr, left ear
                               'H823', #Vertiginous syndromes in diseases classd elswhr, bilateral
                               'H829', #Vertiginous syndromes in diseases classd elswhr, unsp ear
                               'H8301', #Labyrinthitis, right ear
                               'H8302', #Labyrinthitis, left ear
                               'H8303', #Labyrinthitis, bilateral
                               'H8309', #Labyrinthitis, unspecified ear
                               'H8311', #Labyrinthine fistula, right ear
                               'H8312', #Labyrinthine fistula, left ear
                               'H8313', #Labyrinthine fistula, bilateral
                               'H8319', #Labyrinthine fistula, unspecified ear
                               'H832X1', #Labyrinthine dysfunction, right ear
                               'H832X2', #Labyrinthine dysfunction, left ear
                               'H832X3', #Labyrinthine dysfunction, bilateral
                               'H832X9', #Labyrinthine dysfunction, unspecified ear
                               'H838X1', #Other specified diseases of right inner ear
                               'H838X2', #Other specified diseases of left inner ear
                               'H838X3', #Other specified diseases of inner ear, bilateral
                               'H838X9', #Other specified diseases of inner ear, unspecified ear
                               'H8390', #Unspecified disease of inner ear, unspecified ear
                               'H8391', #Unspecified disease of right inner ear
                               'H8392', #Unspecified disease of left inner ear
                               'H8393', #Unspecified disease of inner ear, bilateral
                               'R42', #Dizziness and giddiness
                               'K2900', #Acute gastritis without bleeding
                               'K2901', #Acute gastritis with bleeding
                               'K2930', #Chronic superficial gastritis without bleeding
                               'K2931', #Chronic superficial gastritis with bleeding
                               'K2940', #Chronic atrophic gastritis without bleeding
                               'K2941', #Chronic atrophic gastritis with bleeding
                               'K2950', #Unspecified chronic gastritis without bleeding
                               'K2951', #Unspecified chronic gastritis with bleeding
                               'K2960', #Other gastritis without bleeding
                               'K2961', #Other gastritis with bleeding
                               'K2970', #Gastritis, unspecified, without bleeding
                               'K2971', #Gastritis, unspecified, with bleeding
                               'K2980', #Duodenitis without bleeding
                               'K2981', #Duodenitis with bleeding
                               'K2990', #Gastroduodenitis, unspecified, without bleeding
                               'K2991' #Gastroduodenitis, unspecified, with bleeding
                               )))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
## Codes for tb 

    
# Description:
    
desc <- "Tuberculosis"
    
# Diagnosis codes:

library(tidyverse)
# tmp <- read_csv("~/Documents/GitHub/delay_dx/params/ssd_codes/tb/ssd_codes.csv")
# 
# tmp2 <- tmp %>% 
#   filter(icd_version == 9) %>% 
#   distinct(code = icd_codes) %>% 
#   left_join(mutate(icd::icd9cm_hierarchy,code=as.character(code))) %>% 
#   distinct(code,desc=short_desc)
# 
# cat(paste0("'",tmp2$code,"',", " #",tmp2$desc),sep="\n")
# 
# icd::icd10cm2019
# tmp2 <- tmp %>% 
#   filter(icd_version == 10) %>% 
#   distinct(code = icd_codes) %>% 
#   left_join(mutate(icd::icd10cm2019,code=as.character(code))) %>% 
#   distinct(code,desc=short_desc)
# 
# cat(paste0("'",tmp2$code,"',", " #",tmp2$desc),sep="\n")
    
icd9_codes <- as.character(c('7806', #Fever and other physiologic disturbances of temperature regulation
                           '78060', #Fever NOS
                           '78061', #Fever in other diseases
                           '78079', #Malaise and fatigue NEC
                           '7808', #Generalizd hyperhidrosis
                           '78321', #Abnormal loss of weight
                           '7841', #Throat pain
                           '78441', #Aphonia
                           '78442', #Dysphonia
                           '7849', #Other symptoms involving head and neck
                           '78491', #Postnasal drip
                           '78499', #Head & neck symptoms NEC
                           '78602', #Orthopnea
                           '78605', #Shortness of breath
                           '78607', #Wheezing
                           '7862', #Cough
                           '7863', #Hemoptysis
                           '78630', #Hemoptysis NOS
                           '7864', #Abnormal sputum
                           '78650', #Chest pain NOS
                           '78651', #Precordial pain
                           '78652', #Painful respiration
                           '78659', #Chest pain NEC
                           '0389', #Septicemia NOS
                           '07999', #Viral infection NOS
                           '1124', #Candidiasis of lung
                           '1140', #Primary coccidioidomycos
                           '1144', #Ch pl coccidioidomycosis
                           '11505', #Histoplasm caps pneumon
                           '11515', #Histoplasm dub pneumonia
                           '11595', #Histoplasmosis pneumonia
                           '1304', #Toxoplasma pneumonitis
                           '1363', #Pneumocystosis
                           '310', #Specific nonpsychotic mental disorders due to brain damage
                           '340', #Multiple sclerosis
                           '391', #Rheumatic fever with heart involvement
                           '460', #Acute nasopharyngitis
                           '4610', #Ac maxillary sinusitis
                           '4611', #Ac frontal sinusitis
                           '4612', #Ac ethmoidal sinusitis
                           '4613', #Ac sphenoidal sinusitis
                           '4619', #Acute sinusitis NOS
                           '462', #Acute pharyngitis
                           '463', #Acute tonsillitis
                           '4640', #Acute laryngitis
                           '46400', #Ac laryngitis w/o obst
                           '46401', #Ac laryngitis w obstruct
                           '46411', #Ac tracheitis w obstruct
                           '46420', #Ac laryngotrach no obstr
                           '46421', #Ac laryngotrach w obstr
                           '46430', #Ac epiglottitis no obstr
                           '46431', #Ac epiglottitis w obstr
                           '4644', #Croup
                           '46450', #Supraglottis w/o obs NOS
                           '46451', #Supraglottis w obstr NOS
                           '4650', #Acute laryngopharyngitis
                           '4658', #Acute uri mult sites NEC
                           '4659', #Acute uri NOS
                           '4660', #Acute bronchitis
                           '4661', #Acute bronchiolitis
                           '46611', #Acu broncholitis d/t RSV
                           '46619', #Acu brnchlts d/t oth org
                           '4722', #Chronic nasopharyngitis
                           '4730', #Chr maxillary sinusitis
                           '4731', #Chr frontal sinusitis
                           '4732', #Chr ethmoidal sinusitis
                           '4733', #Chr sphenoidal sinusitis
                           '4738', #Chronic sinusitis NEC
                           '4739', #Chronic sinusitis NOS
                           '4740', #Chronic tonsillitis and adenoiditis
                           '47400', #Chronic tonsillitis
                           '47401', #Chronic adenoiditis
                           '47402', #Chronic tonsils&adenoids
                           '47410', #Hypertrophy T and A
                           '47411', #Hypertrophy tonsils
                           '475', #Peritonsillar abscess
                           '4760', #Chronic laryngitis
                           '4761', #Chr laryngotracheitis
                           '47821', #Cellulitis of pharynx
                           '47822', #Parapharyngeal abscess
                           '47824', #Retropharyngeal abscess
                           '47871', #Laryngeal cellulitis
                           '4789', #Upper resp dis NEC/NOS
                           '4800', #Adenoviral pneumonia
                           '4801', #Resp syncyt viral pneum
                           '4802', #Parinfluenza viral pneum
                           '4808', #Viral pneumonia NEC
                           '4809', #Viral pneumonia NOS
                           '481', #Pneumococcal pneumonia
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
                           '48283', #Pneumo oth grm-neg bact
                           '48284', #Legionnaires' disease
                           '48289', #Pneumonia oth spcf bact
                           '4829', #Bacterial pneumonia NOS
                           '483', #Pneumonia due to other specified organism
                           '4830', #Pneu mycplsm pneumoniae
                           '4831', #Pneumonia d/t chlamydia
                           '4838', #Pneumon oth spec orgnsm
                           '4841', #Pneum w cytomeg incl dis
                           '4843', #Pneumonia in whoop cough
                           '4846', #Pneum in aspergillosis
                           '4847', #Pneum in oth sys mycoses
                           '4848', #Pneum in infect dis NEC
                           '485', #Bronchopneumonia org NOS
                           '486', #Pneumonia, organism NOS
                           '4870', #Influenza with pneumonia
                           '4871', #Flu w resp manifest NEC
                           '4878', #Flu w manifestation NEC
                           '488', #Influenza due to certain identified influenza viruses
                           '4881', #Influenza due to identified 2009 H1N1 influenza virus
                           '48811', #Flu dt 2009 H1N1 w pneu
                           '48812', #Flu-2009 H1N1 w oth resp
                           '48819', #Flu-2009 H1N1 w oth man
                           '48881', #Flu dt nvl A vrs w pneu
                           '48882', #Flu dt nvl A w oth resp
                           '48889', #Flu dt novel A w oth man
                           '490', #Bronchitis NOS
                           '4910', #Simple chr bronchitis
                           '4911', #Mucopurul chr bronchitis
                           '4918', #Chronic bronchitis NEC
                           '4919', #Chronic bronchitis NOS
                           '5100', #Empyema with fistula
                           '5130', #Abscess of lung
                           '5131', #Abscess of mediastinum
                           '5192', #Mediastinitis
                           '5990', #Urin tract infection NOS
                           '830', #Dislocation of jaw
                           '99591', #Sepsis
                           '135', #Sarcoidosis
                           '1622', #Malig neo main bronchus
                           '1623', #Mal neo upper lobe lung
                           '1624', #Mal neo middle lobe lung
                           '1625', #Mal neo lower lobe lung
                           '1628', #Mal neo bronch/lung NEC
                           '1629', #Mal neo bronch/lung NOS
                           '1630', #Mal neo parietal pleura
                           '1631', #Mal neo visceral pleura
                           '1638', #Malig neopl pleura NEC
                           '1639', #Malig neopl pleura NOS
                           '1650', #Mal neo upper resp NOS
                           '1658', #Mal neo thorax/resp NEC
                           '1659', #Mal neo resp system NOS
                           '1970', #Secondary malig neo lung
                           '20921', #Mal carcinoid bronc/lung
                           '2123', #Benign neo bronchus/lung
                           '2311', #Ca in situ trachea
                           '2318', #Ca in situ resp sys NEC
                           '2319', #Ca in situ resp sys NOS
                           '2357', #Unc behav neo lung
                           '2391', #Respiratory neoplasm NOS
                           '2891', #Chronic lymphadenitis
                           '4168', #Chr pulmon heart dis NEC
                           '4239', #Pericardial disease NOS
                           '4280', #CHF NOS
                           '4464', #Wegener's granulomatosis
                           '46410', #Ac tracheitis no obstruc
                           '4720', #Chronic rhinitis
                           '47412', #Hypertrophy adenoids
                           '4742', #Adenoid vegetations
                           '4748', #Chr T & A dis NEC
                           '4749', #Chr T & A dis NOS
                           '4770', #Rhinitis due to pollen
                           '4772', #Allerg rhinitis-cat/dog
                           '4778', #Allergic rhinitis NEC
                           '4779', #Allergic rhinitis NOS
                           '4781', #Other diseases of nasal cavity and sinuses
                           '47819', #Nasal & sinus dis NEC
                           '47820', #Disease of pharynx NOS
                           '47829', #Disease of pharynx NEC
                           '47830', #Vocal cord paralysis NOS
                           '47831', #Vocal paral unilat part
                           '47832', #Vocal paral unilat total
                           '47833', #Vocal paral bilat part
                           '47834', #Vocal paral bilat total
                           '4784', #Vocal cord/larynx polyp
                           '4785', #Vocal cord disease NEC
                           '47870', #Disease of larynx NOS
                           '47874', #Stenosis of larynx
                           '47875', #Laryngeal spasm
                           '47879', #Disease of larynx NEC
                           '4788', #Urt hypersens react NOS
                           '4912', #Obstructive chronic bronchitis
                           '49120', #Obst chr bronc w/o exac
                           '49121', #Obs chr bronc w(ac) exac
                           '49122', #Obs chr bronc w ac bronc
                           '4920', #Emphysematous bleb
                           '4928', #Emphysema NEC
                           '49300', #Extrinsic asthma NOS
                           '49301', #Ext asthma w status asth
                           '49302', #Ext asthma w(acute) exac
                           '49310', #Intrinsic asthma NOS
                           '49311', #Int asthma w status asth
                           '49312', #Int asthma w (ac) exac
                           '49320', #Chronic obst asthma NOS
                           '49321', #Ch ob asthma w stat asth
                           '49322', #Ch obst asth w (ac) exac
                           '49381', #Exercse ind bronchospasm
                           '49382', #Cough variant asthma
                           '49390', #Asthma NOS
                           '49392', #Asthma NOS w (ac) exac
                           '494', #Bronchiectasis
                           '4940', #Bronchiectas w/o ac exac
                           '4941', #Bronchiectasis w ac exac
                           '4950', #Farmers' lung
                           '4951', #Bagassosis
                           '4952', #Bird-fanciers' lung
                           '4953', #Suberosis
                           '4954', #Malt workers' lung
                           '4955', #Mushroom workers' lung
                           '4956', #Mapl bark-stripprs' lung
                           '4957', #"ventilation" pneumonit
                           '4958', #Allerg alveol/pneum NEC
                           '4959', #Allerg alveol/pneum NOS
                           '496', #Chr airway obstruct NEC
                           '500', #Coal workers' pneumocon
                           '501', #Asbestosis
                           '502', #Silica pneumocon NEC
                           '503', #Inorg dust pneumocon NEC
                           '504', #Dust pneumonopathy NEC
                           '505', #Pneumoconiosis NOS
                           '5060', #Fum/vapor bronc/pneumon
                           '5061', #Fum/vapor ac pulm edema
                           '5062', #Fum/vapor up resp inflam
                           '5063', #Fum/vap ac resp cond NEC
                           '5064', #Fum/vapor chr resp cond
                           '5069', #Fum/vapor resp cond NOS
                           '5070', #Food/vomit pneumonitis
                           '5071', #Oil/essence pneumonitis
                           '5078', #Solid/liq pneumonit NEC
                           '5080', #Ac pul manif d/t radiat
                           '5081', #Chr pul manif d/t radiat
                           '5082', #Resp cond dt smoke inhal
                           '5088', #Resp cond: ext agent NEC
                           '5089', #Resp cond: ext agent NOS
                           '5110', #Pleurisy w/o effus or TB
                           '5111', #Bact pleur/effus not TB
                           '5118', #Other specified forms of effusion, except tuberculous
                           '51189', #Effusion NEC exc tb
                           '5120', #Spont tens pneumothorax
                           '5128', #Other pneumothorax and air leak
                           '51281', #Prim spont pneumothorax
                           '51282', #Sec spont pneumothorax
                           '51283', #Chronic pneumothorax
                           '51284', #Other air leak
                           '51289', #Other pneumothorax
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
                           '5168', #Alveol pneumonopathy NEC
                           '5169', #Alveol pneumonopathy NOS
                           '5171', #Rheumatic pneumonia
                           '5172', #Syst sclerosis lung dis
                           '5173', #Acute chest syndrome
                           '5178', #Lung involv in oth dis
                           '5181', #Interstitial emphysema
                           '5182', #Compensatory emphysema
                           '5183', #Pulmonary eosinophilia
                           '5184', #Acute lung edema NOS
                           '51881', #Acute respiratry failure
                           '51882', #Other pulmonary insuff
                           '51883', #Chronic respiratory fail
                           '51884', #Acute & chronc resp fail
                           '51889', #Other lung disease NEC
                           '5191', #Other diseases of trachea and bronchus, not elsewhere classified
                           '51911', #Acute bronchospasm
                           '51919', #Trachea & bronch dis NEC
                           '5193', #Mediastinum disease NEC
                           '5194', #Disorders of diaphragm
                           '5198', #Resp system disease NEC
                           '5199', #Resp system disease NOS
                           '78440', #Voice/resonance dis NOS
                           '78449', #Voice/resonance dis NEC
                           '7847', #Epistaxis
                           '7848', #Hemorrhage from throat
                           '78600', #Respiratory abnorm NOS
                           '78609', #Respiratory abnorm NEC
                           '78639', #Hemoptysis NEC
                           '7869', #Resp sys/chest symp NEC
                           '79311', #Solitary pulmonry nodule
                           '7942', #Abn pulmonary func study
                           '7991', #Respiratory arrest
                           '2639', #Protein-cal malnutr NOS
                           '2761', #Hyposmolality
                           '28529', #Anemia-other chronic dis
                           '2859', #Anemia NOS
                           '28860', #Leukocytosis NOS
                           '2893', #Lymphadenitis NOS
                           '4293', #Cardiomegaly
                           '5119', #Pleural effusion NOS
                           '5180', #Pulmonary collapse
                           '7822', #Local suprficial swellng
                           '7842', #Swelling in head & neck
                           '7850', #Tachycardia NOS
                           '7856', #Enlargement lymph nodes
                           '7866', #Chest swelling/mass/lump
                           '7867', #Abnormal chest sounds
                           '7931', #Lung field
                           '79319', #Ot nonsp ab fnd lung fld
                           '79902', #Hypoxemia
                           '7994' #Cachexia
                           ))
                           
    
icd10_codes <- as.character(c('R042', #Hemoptysis
                            'R05', #Cough
                            'R0600', #Dyspnea, unspecified
                            'R0601', #Orthopnea
                            'R0602', #Shortness of breath
                            'R0603', #Acute respiratory distress
                            'R0609', #Other forms of dyspnea
                            'R062', #Wheezing
                            'R0689', #Other abnormalities of breathing
                            'R069', #Unspecified abnormalities of breathing
                            'R071', #Chest pain on breathing
                            'R072', #Precordial pain
                            'R0781', #Pleurodynia
                            'R0782', #Intercostal pain
                            'R0789', #Other chest pain
                            'R079', #Chest pain, unspecified
                            'R093', #Abnormal sputum
                            'R490', #Dysphonia
                            'R498', #Other voice and resonance disorders
                            'R499', #Unspecified voice and resonance disorder
                            'R50', #Fever of other and unknown origin
                            'R5081', #Fever presenting with conditions classified elsewhere
                            'R509', #Fever, unspecified
                            'R531', #Weakness
                            'R5381', #Other malaise
                            'R5383', #Other fatigue
                            'R61', #Generalized hyperhidrosis
                            'R634', #Abnormal weight loss
                            'A310', #Pulmonary mycobacterial infection
                            'A3701', #Whooping cough due to Bordetella pertussis with pneumonia
                            'A3711', #Whooping cough due to Bordetella parapertussis w pneumonia
                            'A419', #Sepsis, unspecified organism
                            'A430', #Pulmonary nocardiosis
                            'A481', #Legionnaires' disease
                            'B250', #Cytomegaloviral pneumonitis
                            'B349', #Viral infection, unspecified
                            'B371', #Pulmonary candidiasis
                            'B380', #Acute pulmonary coccidioidomycosis
                            'B381', #Chronic pulmonary coccidioidomycosis
                            'B382', #Pulmonary coccidioidomycosis, unspecified
                            'B390', #Acute pulmonary histoplasmosis capsulati
                            'B391', #Chronic pulmonary histoplasmosis capsulati
                            'B392', #Pulmonary histoplasmosis capsulati, unspecified
                            'B583', #Pulmonary toxoplasmosis
                            'B59', #Pneumocystosis
                            'B7781', #Ascariasis pneumonia
                            'D1430', #Benign neoplasm of unspecified bronchus and lung
                            'D381', #Neoplasm of uncertain behavior of trachea, bronchus and lung
                            'D491', #Neoplasm of unspecified behavior of respiratory system
                            'D860', #Sarcoidosis of lung
                            'D869', #Sarcoidosis, unspecified
                            'J00', #Acute nasopharyngitis [common cold]
                            'J0100', #Acute maxillary sinusitis, unspecified
                            'J0101', #Acute recurrent maxillary sinusitis
                            'J0110', #Acute frontal sinusitis, unspecified
                            'J0111', #Acute recurrent frontal sinusitis
                            'J0120', #Acute ethmoidal sinusitis, unspecified
                            'J0121', #Acute recurrent ethmoidal sinusitis
                            'J0130', #Acute sphenoidal sinusitis, unspecified
                            'J0131', #Acute recurrent sphenoidal sinusitis
                            'J0140', #Acute pansinusitis, unspecified
                            'J0141', #Acute recurrent pansinusitis
                            'J0180', #Other acute sinusitis
                            'J0181', #Other acute recurrent sinusitis
                            'J0190', #Acute sinusitis, unspecified
                            'J0191', #Acute recurrent sinusitis, unspecified
                            'J020', #Streptococcal pharyngitis
                            'J028', #Acute pharyngitis due to other specified organisms
                            'J029', #Acute pharyngitis, unspecified
                            'J0300', #Acute streptococcal tonsillitis, unspecified
                            'J0301', #Acute recurrent streptococcal tonsillitis
                            'J0380', #Acute tonsillitis due to other specified organisms
                            'J0381', #Acute recurrent tonsillitis due to other specified organisms
                            'J0390', #Acute tonsillitis, unspecified
                            'J0391', #Acute recurrent tonsillitis, unspecified
                            'J040', #Acute laryngitis
                            'J0410', #Acute tracheitis without obstruction
                            'J0411', #Acute tracheitis with obstruction
                            'J042', #Acute laryngotracheitis
                            'J0430', #Supraglottitis, unspecified, without obstruction
                            'J0431', #Supraglottitis, unspecified, with obstruction
                            'J050', #Acute obstructive laryngitis [croup]
                            'J0510', #Acute epiglottitis without obstruction
                            'J0511', #Acute epiglottitis with obstruction
                            'J060', #Acute laryngopharyngitis
                            'J069', #Acute upper respiratory infection, unspecified
                            'J09X1', #Influenza due to ident novel influenza A virus w pneumonia
                            'J09X2', #Flu due to ident novel influenza A virus w oth resp manifest
                            'J09X3', #Influenza due to ident novel influenza A virus w GI manifest
                            'J09X9', #Flu due to ident novel influenza A virus w oth manifest
                            'J1000', #Flu due to oth ident flu virus w unsp type of pneumonia
                            'J1001', #Flu due to oth ident flu virus w same oth ident flu virus pn
                            'J1008', #Influenza due to oth ident influenza virus w oth pneumonia
                            'J101', #Flu due to oth ident influenza virus w oth resp manifest
                            'J102', #Influenza due to oth ident influenza virus w GI manifest
                            'J1089', #Influenza due to oth ident influenza virus w oth manifest
                            'J1100', #Flu due to unidentified flu virus w unsp type of pneumonia
                            'J1108', #Flu due to unidentified flu virus w specified pneumonia
                            'J111', #Flu due to unidentified influenza virus w oth resp manifest
                            'J112', #Influenza due to unidentified influenza virus w GI manifest
                            'J1181', #Flu due to unidentified influenza virus w encephalopathy
                            'J1182', #Influenza due to unidentified influenza virus w myocarditis
                            'J1183', #Influenza due to unidentified influenza virus w otitis media
                            'J1189', #Influenza due to unidentified influenza virus w oth manifest
                            'J120', #Adenoviral pneumonia
                            'J121', #Respiratory syncytial virus pneumonia
                            'J122', #Parainfluenza virus pneumonia
                            'J123', #Human metapneumovirus pneumonia
                            'J1289', #Other viral pneumonia
                            'J129', #Viral pneumonia, unspecified
                            'J13', #Pneumonia due to Streptococcus pneumoniae
                            'J14', #Pneumonia due to Hemophilus influenzae
                            'J150', #Pneumonia due to Klebsiella pneumoniae
                            'J151', #Pneumonia due to Pseudomonas
                            'J1520', #Pneumonia due to staphylococcus, unspecified
                            'J15211', #Pneumonia due to methicillin suscep staph
                            'J15212', #Pneumonia due to Methicillin resistant Staphylococcus aureus
                            'J1529', #Pneumonia due to other staphylococcus
                            'J153', #Pneumonia due to streptococcus, group B
                            'J154', #Pneumonia due to other streptococci
                            'J155', #Pneumonia due to Escherichia coli
                            'J156', #Pneumonia due to other Gram-negative bacteria
                            'J157', #Pneumonia due to Mycoplasma pneumoniae
                            'J158', #Pneumonia due to other specified bacteria
                            'J159', #Unspecified bacterial pneumonia
                            'J160', #Chlamydial pneumonia
                            'J168', #Pneumonia due to other specified infectious organisms
                            'J17', #Pneumonia in diseases classified elsewhere
                            'J180', #Bronchopneumonia, unspecified organism
                            'J181', #Lobar pneumonia, unspecified organism
                            'J182', #Hypostatic pneumonia, unspecified organism
                            'J188', #Other pneumonia, unspecified organism
                            'J189', #Pneumonia, unspecified organism
                            'J200', #Acute bronchitis due to Mycoplasma pneumoniae
                            'J201', #Acute bronchitis due to Hemophilus influenzae
                            'J202', #Acute bronchitis due to streptococcus
                            'J203', #Acute bronchitis due to coxsackievirus
                            'J204', #Acute bronchitis due to parainfluenza virus
                            'J205', #Acute bronchitis due to respiratory syncytial virus
                            'J206', #Acute bronchitis due to rhinovirus
                            'J207', #Acute bronchitis due to echovirus
                            'J208', #Acute bronchitis due to other specified organisms
                            'J209', #Acute bronchitis, unspecified
                            'J210', #Acute bronchiolitis due to respiratory syncytial virus
                            'J211', #Acute bronchiolitis due to human metapneumovirus
                            'J218', #Acute bronchiolitis due to other specified organisms
                            'J219', #Acute bronchiolitis, unspecified
                            'J22', #Unspecified acute lower respiratory infection
                            'J311', #Chronic nasopharyngitis
                            'J312', #Chronic pharyngitis
                            'J320', #Chronic maxillary sinusitis
                            'J321', #Chronic frontal sinusitis
                            'J322', #Chronic ethmoidal sinusitis
                            'J323', #Chronic sphenoidal sinusitis
                            'J324', #Chronic pansinusitis
                            'J328', #Other chronic sinusitis
                            'J329', #Chronic sinusitis, unspecified
                            'J3501', #Chronic tonsillitis
                            'J3502', #Chronic adenoiditis
                            'J3503', #Chronic tonsillitis and adenoiditis
                            'J352', #Hypertrophy of adenoids
                            'J353', #Hypertrophy of tonsils with hypertrophy of adenoids
                            'J358', #Other chronic diseases of tonsils and adenoids
                            'J359', #Chronic disease of tonsils and adenoids, unspecified
                            'J36', #Peritonsillar abscess
                            'J390', #Retropharyngeal and parapharyngeal abscess
                            'J391', #Other abscess of pharynx
                            'J40', #Bronchitis, not specified as acute or chronic
                            'J410', #Simple chronic bronchitis
                            'J411', #Mucopurulent chronic bronchitis
                            'J42', #Unspecified chronic bronchitis
                            'J440', #Chronic obstructive pulmon disease w acute lower resp infct
                            'J470', #Bronchiectasis with acute lower respiratory infection
                            'J851', #Abscess of lung with pneumonia
                            'J852', #Abscess of lung without pneumonia
                            'J853', #Abscess of mediastinum
                            'J860', #Pyothorax with fistula
                            'J9311', #Primary spontaneous pneumothorax
                            'J9611', #Chronic respiratory failure with hypoxia
                            'J9691', #Respiratory failure, unspecified with hypoxia
                            'J9809', #Other diseases of bronchus, not elsewhere classified
                            'J985', #Diseases of mediastinum, not elsewhere classified
                            'J9859', #Other diseases of mediastinum, not elsewhere classified
                            'J989', #Respiratory disorder, unspecified
                            'R066', #Hiccough
                            'R0682', #Tachypnea, not elsewhere classified
                            'R070', #Pain in throat
                            'R0901', #Asphyxia
                            'R0982', #Postnasal drip
                            'C33', #Malignant neoplasm of trachea
                            'C3400', #Malignant neoplasm of unspecified main bronchus
                            'C3401', #Malignant neoplasm of right main bronchus
                            'C3402', #Malignant neoplasm of left main bronchus
                            'C3410', #Malignant neoplasm of upper lobe, unsp bronchus or lung
                            'C3411', #Malignant neoplasm of upper lobe, right bronchus or lung
                            'C3412', #Malignant neoplasm of upper lobe, left bronchus or lung
                            'C342', #Malignant neoplasm of middle lobe, bronchus or lung
                            'C3430', #Malignant neoplasm of lower lobe, unsp bronchus or lung
                            'C3431', #Malignant neoplasm of lower lobe, right bronchus or lung
                            'C3432', #Malignant neoplasm of lower lobe, left bronchus or lung
                            'C3480', #Malignant neoplasm of ovrlp sites of unsp bronchus and lung
                            'C3481', #Malignant neoplasm of ovrlp sites of right bronchus and lung
                            'C3482', #Malignant neoplasm of ovrlp sites of left bronchus and lung
                            'C3490', #Malignant neoplasm of unsp part of unsp bronchus or lung
                            'C3491', #Malignant neoplasm of unsp part of right bronchus or lung
                            'C3492', #Malignant neoplasm of unsp part of left bronchus or lung
                            'C384', #Malignant neoplasm of pleura
                            'C390', #Malignant neoplasm of upper respiratory tract, part unsp
                            'C399', #Malignant neoplasm of lower respiratory tract, part unsp
                            'C450', #Mesothelioma of pleura
                            'C7A090', #Malignant carcinoid tumor of the bronchus and lung
                            'D021', #Carcinoma in situ of trachea
                            'D0220', #Carcinoma in situ of unspecified bronchus and lung
                            'D0221', #Carcinoma in situ of right bronchus and lung
                            'D0222', #Carcinoma in situ of left bronchus and lung
                            'D023', #Carcinoma in situ of other parts of respiratory system
                            'D024', #Carcinoma in situ of respiratory system, unspecified
                            'I509', #Heart failure, unspecified
                            'J300', #Vasomotor rhinitis
                            'J301', #Allergic rhinitis due to pollen
                            'J302', #Other seasonal allergic rhinitis
                            'J3081', #Allergic rhinitis due to animal (cat) (dog) hair and dander
                            'J3089', #Other allergic rhinitis
                            'J309', #Allergic rhinitis, unspecified
                            'J310', #Chronic rhinitis
                            'J342', #Deviated nasal septum
                            'J3489', #Other specified disorders of nose and nasal sinuses
                            'J351', #Hypertrophy of tonsils
                            'J370', #Chronic laryngitis
                            'J371', #Chronic laryngotracheitis
                            'J3800', #Paralysis of vocal cords and larynx, unspecified
                            'J3801', #Paralysis of vocal cords and larynx, unilateral
                            'J3802', #Paralysis of vocal cords and larynx, bilateral
                            'J381', #Polyp of vocal cord and larynx
                            'J382', #Nodules of vocal cords
                            'J383', #Other diseases of vocal cords
                            'J384', #Edema of larynx
                            'J385', #Laryngeal spasm
                            'J386', #Stenosis of larynx
                            'J387', #Other diseases of larynx
                            'J392', #Other diseases of pharynx
                            'J393', #Upper respiratory tract hypersensitivity reaction, site unsp
                            'J398', #Other specified diseases of upper respiratory tract
                            'J399', #Disease of upper respiratory tract, unspecified
                            'J418', #Mixed simple and mucopurulent chronic bronchitis
                            'J430', #Unilateral pulmonary emphysema [MacLeod's syndrome]
                            'J431', #Panlobular emphysema
                            'J432', #Centrilobular emphysema
                            'J438', #Other emphysema
                            'J439', #Emphysema, unspecified
                            'J441', #Chronic obstructive pulmonary disease w (acute) exacerbation
                            'J449', #Chronic obstructive pulmonary disease, unspecified
                            'J4520', #Mild intermittent asthma, uncomplicated
                            'J4521', #Mild intermittent asthma with (acute) exacerbation
                            'J4522', #Mild intermittent asthma with status asthmaticus
                            'J4530', #Mild persistent asthma, uncomplicated
                            'J4531', #Mild persistent asthma with (acute) exacerbation
                            'J4532', #Mild persistent asthma with status asthmaticus
                            'J4540', #Moderate persistent asthma, uncomplicated
                            'J4541', #Moderate persistent asthma with (acute) exacerbation
                            'J4542', #Moderate persistent asthma with status asthmaticus
                            'J4550', #Severe persistent asthma, uncomplicated
                            'J4551', #Severe persistent asthma with (acute) exacerbation
                            'J4552', #Severe persistent asthma with status asthmaticus
                            'J45901', #Unspecified asthma with (acute) exacerbation
                            'J45902', #Unspecified asthma with status asthmaticus
                            'J45909', #Unspecified asthma, uncomplicated
                            'J45990', #Exercise induced bronchospasm
                            'J45991', #Cough variant asthma
                            'J45998', #Other asthma
                            'J471', #Bronchiectasis with (acute) exacerbation
                            'J479', #Bronchiectasis, uncomplicated
                            'J60', #Coalworker's pneumoconiosis
                            'J61', #Pneumoconiosis due to asbestos and other mineral fibers
                            'J620', #Pneumoconiosis due to talc dust
                            'J628', #Pneumoconiosis due to other dust containing silica
                            'J630', #Aluminosis (of lung)
                            'J631', #Bauxite fibrosis (of lung)
                            'J632', #Berylliosis
                            'J633', #Graphite fibrosis (of lung)
                            'J634', #Siderosis
                            'J635', #Stannosis
                            'J636', #Pneumoconiosis due to other specified inorganic dusts
                            'J64', #Unspecified pneumoconiosis
                            'J660', #Byssinosis
                            'J661', #Flax-dressers' disease
                            'J662', #Cannabinosis
                            'J668', #Airway disease due to other specific organic dusts
                            'J670', #Farmer's lung
                            'J671', #Bagassosis
                            'J672', #Bird fancier's lung
                            'J673', #Suberosis
                            'J674', #Maltworker's lung
                            'J675', #Mushroom-worker's lung
                            'J676', #Maple-bark-stripper's lung
                            'J677', #Air conditioner and humidifier lung
                            'J678', #Hypersensitivity pneumonitis due to other organic dusts
                            'J679', #Hypersensitivity pneumonitis due to unspecified organic dust
                            'J680', #Bronchitis & pneumonitis d/t chemicals, gas, fumes & vapors
                            'J681', #Pulmonary edema due to chemicals, gases, fumes and vapors
                            'J682', #Upper resp inflam d/t chemicals, gas, fumes and vapors, NEC
                            'J683', #Oth ac & subac resp cond d/t chemicals, gas, fumes & vapors
                            'J684', #Chronic resp cond due to chemicals, gases, fumes and vapors
                            'J688', #Oth resp cond due to chemicals, gases, fumes and vapors
                            'J689', #Unsp resp cond due to chemicals, gases, fumes and vapors
                            'J690', #Pneumonitis due to inhalation of food and vomit
                            'J691', #Pneumonitis due to inhalation of oils and essences
                            'J698', #Pneumonitis due to inhalation of other solids and liquids
                            'J700', #Acute pulmonary manifestations due to radiation
                            'J701', #Chronic and other pulmonary manifestations due to radiation
                            'J702', #Acute drug-induced interstitial lung disorders
                            'J703', #Chronic drug-induced interstitial lung disorders
                            'J704', #Drug-induced interstitial lung disorders, unspecified
                            'J705', #Respiratory conditions due to smoke inhalation
                            'J708', #Respiratory conditions due to oth external agents
                            'J709', #Respiratory conditions due to unspecified external agent
                            'J80', #Acute respiratory distress syndrome
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
                            'J8489', #Other specified interstitial pulmonary diseases
                            'J849', #Interstitial pulmonary disease, unspecified
                            'J850', #Gangrene and necrosis of lung
                            'J869', #Pyothorax without fistula
                            'J920', #Pleural plaque with presence of asbestos
                            'J929', #Pleural plaque without asbestos
                            'J930', #Spontaneous tension pneumothorax
                            'J9312', #Secondary spontaneous pneumothorax
                            'J9381', #Chronic pneumothorax
                            'J9382', #Other air leak
                            'J9383', #Other pneumothorax
                            'J940', #Chylous effusion
                            'J941', #Fibrothorax
                            'J942', #Hemothorax
                            'J948', #Other specified pleural conditions
                            'J949', #Pleural condition, unspecified
                            'J9600', #Acute respiratory failure, unsp w hypoxia or hypercapnia
                            'J9601', #Acute respiratory failure with hypoxia
                            'J9602', #Acute respiratory failure with hypercapnia
                            'J9610', #Chronic respiratory failure, unsp w hypoxia or hypercapnia
                            'J9612', #Chronic respiratory failure with hypercapnia
                            'J9620', #Acute and chr resp failure, unsp w hypoxia or hypercapnia
                            'J9621', #Acute and chronic respiratory failure with hypoxia
                            'J9622', #Acute and chronic respiratory failure with hypercapnia
                            'J9690', #Respiratory failure, unsp, unsp w hypoxia or hypercapnia
                            'J9692', #Respiratory failure, unspecified with hypercapnia
                            'J9801', #Acute bronchospasm
                            'J9819', #Other pulmonary collapse
                            'J982', #Interstitial emphysema
                            'J983', #Compensatory emphysema
                            'J984', #Other disorders of lung
                            'J9851', #Mediastinitis
                            'J986', #Disorders of diaphragm
                            'J988', #Other specified respiratory disorders
                            'J99', #Respiratory disorders in diseases classified elsewhere
                            'N390', #Urinary tract infection, site not specified
                            'R040', #Epistaxis
                            'R041', #Hemorrhage from throat
                            'R048', #Hemorrhage from other sites in respiratory passages
                            'R0489', #Hemorrhage from other sites in respiratory passages
                            'R049', #Hemorrhage from respiratory passages, unspecified
                            'R091', #Pleurisy
                            'R0981', #Nasal congestion
                            'D649', #Anemia, unspecified
                            'D72829', #Elevated white blood cell count, unspecified
                            'E871', #Hypo-osmolality and hyponatremia
                            'I517', #Cardiomegaly
                            'J90', #Pleural effusion, not elsewhere classified
                            'J918', #Pleural effusion in other conditions classified elsewhere
                            'J939', #Pneumothorax, unspecified
                            'J9811', #Atelectasis
                            'R000', #Tachycardia, unspecified
                            'R0902', #Hypoxemia
                            'R220', #Localized swelling, mass and lump, head
                            'R221', #Localized swelling, mass and lump, neck
                            'R222', #Localized swelling, mass and lump, trunk
                            'R59', #Enlarged lymph nodes
                            'R590', #Localized enlarged lymph nodes
                            'R591', #Generalized enlarged lymph nodes
                            'R599', #Enlarged lymph nodes, unspecified
                            'R911', #Solitary pulmonary nodule
                            'R918' #Other nonspecific abnormal finding of lung field
                            ))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
## Codes for append 

    
# Description:
    
desc <- "Appendicitis"
    
# Diagnosis codes:

# tmp <- read_csv("~/Documents/GitHub/delay_dx/params/ssd_codes/append/ssd_codes.csv")
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
    
icd9_codes <- as.character((c('27651', #Dehydration
                              '33819', #Acute pain NEC
                              '5362', #Persistent vomiting
                              '56400', #Constipation NOS
                              '56409', #Constipation NEC
                              '5679', #Peritonitis NOS
                              '56942', #Anal or rectal pain
                              '6258', #Fem genital symptoms NEC
                              '6259', #Fem genital symptoms NOS
                              '7245', #Backache NOS
                              '7806', #Fever and other physiologic disturbances of temperature regulation
                              '78060', #Fever NOS
                              '78079', #Malaise and fatigue NEC
                              '7830', #Anorexia
                              '78650', #Chest pain NOS
                              '78659', #Chest pain NEC
                              '78701', #Nausea with vomiting
                              '78702', #Nausea alone
                              '78703', #Vomiting alone
                              '7873', #Flatul/eructat/gas pain
                              '78791', #Diarrhea
                              '78799', #Digestve syst symptm NEC
                              '7881', #Dysuria
                              '78900', #Abdmnal pain unspcf site
                              '78901', #Abdmnal pain rt upr quad
                              '78902', #Abdmnal pain lft up quad
                              '78903', #Abdmnal pain rt lwr quad
                              '78904', #Abdmnal pain lt lwr quad
                              '78905', #Abdmnal pain periumbilic
                              '78906', #Abdmnal pain epigastric
                              '78907', #Abdmnal pain generalized
                              '78909', #Abdmnal pain oth spcf st
                              '78963', #Abdmnal tndr rt lwr quad
                              '00845', #Int inf clstrdium dfcile
                              '0088', #Viral enteritis NOS
                              '0090', #Infectious enteritis NOS
                              '0340', #Strep sore throat
                              '0389', #Septicemia NOS
                              '07999', #Viral infection NOS
                              '462', #Acute pharyngitis
                              '486', #Pneumonia, organism NOS
                              '4871', #Flu w resp manifest NEC
                              '59080', #Pyelonephritis NOS
                              '5950', #Acute cystitis
                              '5990', #Urin tract infection NOS
                              '7908', #Viremia NOS
                              '99591', #Sepsis
                              '07882', #Epidemic vomiting synd
                              '2892', #Mesenteric lymphadenitis
                              '53011', #Reflux esophagitis
                              '53081', #Esophageal reflux
                              '53500', #Acute gastrtis w/o hmrhg
                              '53510', #Atrph gastrtis w/o hmrhg
                              '53550', #Gstr/ddnts NOS w/o hmrhg
                              '5368', #Stomach function dis NEC
                              '55090', #Unilat inguinal hernia
                              '5531', #Umbilical hernia
                              '55320', #Ventral hernia NOS
                              '55329', #Ventral hernia NEC
                              '5533', #Diaphragmatic hernia
                              '5570', #Ac vasc insuff intestine
                              '5589', #Noninf gastroenterit NEC
                              '5601', #Paralytic ileus
                              '56089', #Intestinal obstruct NEC
                              '5609', #Intestinal obstruct NOS
                              '56210', #Dvrtclo colon w/o hmrhg
                              '56211', #Dvrtcli colon w/o hmrhg
                              '5641', #Irritable bowel syndrome
                              '56949', #Rectal & anal dis NEC
                              '56989', #Intestinal disorders NEC
                              '5699', #Intestinal disorder NOS
                              '5718', #Chronic liver dis NEC
                              '5719', #Chronic liver dis NOS
                              '5738', #Liver disorders NEC
                              '5739', #Liver disorder NOS
                              '57410', #Cholelith w cholecys NEC
                              '57420', #Cholelithiasis NOS
                              '5750', #Acute cholecystitis
                              '57510', #Cholecystitis NOS
                              '57511', #Chronic cholecystitis
                              '5758', #Dis of gallbladder NEC
                              '9974', #Digestive system complications
                              '2189', #Uterine leiomyoma NOS
                              '5920', #Calculus of kidney
                              '5921', #Calculus of ureter
                              '5932', #Cyst of kidney, acquired
                              '59382', #Ureteral fistula
                              '59389', #Renal & ureteral dis NEC
                              '5939', #Renal & ureteral dis NOS
                              '6089', #Male genital dis NOS
                              '6149', #Fem pelv inflam dis NOS
                              '6169', #Female gen inflam NOS
                              '6173', #Pelv perit endometriosis
                              '6179', #Endometriosis NOS
                              '6200', #Follicular cyst of ovary
                              '6202', #Ovarian cyst NEC/NOS
                              '6206', #Broad ligament lacer syn
                              '6208', #Noninfl dis ova/adnx NEC
                              'V7241', #Pregnancy test negative
                              '28860', #Leukocytosis NOS
                              '56882', #Peritoneal effusion
                              '59970', #Hematuria NOS
                              '59972', #Microscopic hematuria
                              '78820', #Retention urine NOS
                              '7891', #Hepatomegaly
                              '7892', #Splenomegaly
                              '78930', #Abdmnal mass unspcf site
                              '78933', #Abdmnal mass rt lwr quad
                              '78939', #Abdmnal mass oth spcf st
                              '78959', #Ascites NEC
                              '7934', #Nonsp abn find-gi tract
                              '7936', #Nonsp abn fnd-abdom area
                              '7948' #Abn liver function study
                              )))
    
icd10_codes <- as.character((c('K5289', #Other specified noninfective gastroenteritis and colitis
                               'K5900', #Constipation, unspecified
                               'K5909', #Other constipation
                               'M5489', #Other dorsalgia
                               'M549', #Dorsalgia, unspecified
                               'R0782', #Intercostal pain
                               'R0789', #Other chest pain
                               'R079', #Chest pain, unspecified
                               'R1010', #Upper abdominal pain, unspecified
                               'R1011', #Right upper quadrant pain
                               'R1012', #Left upper quadrant pain
                               'R1013', #Epigastric pain
                               'R102', #Pelvic and perineal pain
                               'R1030', #Lower abdominal pain, unspecified
                               'R1031', #Right lower quadrant pain
                               'R1032', #Left lower quadrant pain
                               'R1033', #Periumbilical pain
                               'R10813', #Right lower quadrant abdominal tenderness
                               'R1084', #Generalized abdominal pain
                               'R109', #Unspecified abdominal pain
                               'R110', #Nausea
                               'R1110', #Vomiting, unspecified
                               'R1111', #Vomiting without nausea
                               'R1112', #Projectile vomiting
                               'R112', #Nausea with vomiting, unspecified
                               'R140', #Abdominal distension (gaseous)
                               'R141', #Gas pain
                               'R142', #Eructation
                               'R143', #Flatulence
                               'R194', #Change in bowel habit
                               'R197', #Diarrhea, unspecified
                               'R198', #Oth symptoms and signs involving the dgstv sys and abdomen
                               'R300', #Dysuria
                               'R309', #Painful micturition, unspecified
                               'R509', #Fever, unspecified
                               'R52', #Pain, unspecified
                               'R531', #Weakness
                               'R5381', #Other malaise
                               'R5383', #Other fatigue
                               'R630', #Anorexia
                               'A047', #Enterocolitis due to Clostridium difficile
                               'A084', #Viral intestinal infection, unspecified
                               'A088', #Other specified intestinal infections
                               'A09', #Infectious gastroenteritis and colitis, unspecified
                               'A419', #Sepsis, unspecified organism
                               'B349', #Viral infection, unspecified
                               'B9789', #Oth viral agents as the cause of diseases classd elswhr
                               'J020', #Streptococcal pharyngitis
                               'J029', #Acute pharyngitis, unspecified
                               'J0300', #Acute streptococcal tonsillitis, unspecified
                               'J111', #Flu due to unidentified influenza virus w oth resp manifest
                               'J189', #Pneumonia, unspecified organism
                               'N3000', #Acute cystitis without hematuria
                               'N3001', #Acute cystitis with hematuria
                               'N390', #Urinary tract infection, site not specified
                               'N739', #Female pelvic inflammatory disease, unspecified
                               'E860', #Dehydration
                               'I880', #Nonspecific mesenteric lymphadenitis
                               'K210', #Gastro-esophageal reflux disease with esophagitis
                               'K219', #Gastro-esophageal reflux disease without esophagitis
                               'K2900', #Acute gastritis without bleeding
                               'K2950', #Unspecified chronic gastritis without bleeding
                               'K2970', #Gastritis, unspecified, without bleeding
                               'K2990', #Gastroduodenitis, unspecified, without bleeding
                               'K30', #Functional dyspepsia
                               'K4090', #Unil inguinal hernia, w/o obst or gangr, not spcf as recur
                               'K429', #Umbilical hernia without obstruction or gangrene
                               'K439', #Ventral hernia without obstruction or gangrene
                               'K449', #Diaphragmatic hernia without obstruction or gangrene
                               'K529', #Noninfective gastroenteritis and colitis, unspecified
                               'K550', #Acute vascular disorders of intestine
                               'K560', #Paralytic ileus
                               'K5660', #Unspecified intestinal obstruction
                               'K5669', #Other intestinal obstruction
                               'K567', #Ileus, unspecified
                               'K5730', #Dvrtclos of lg int w/o perforation or abscess w/o bleeding
                               'K5732', #Dvtrcli of lg int w/o perforation or abscess w/o bleeding
                               'K5790', #Dvrtclos of intest, part unsp, w/o perf or abscess w/o bleed
                               'K5792', #Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed
                               'K580', #Irritable bowel syndrome with diarrhea
                               'K589', #Irritable bowel syndrome without diarrhea
                               'K6289', #Other specified diseases of anus and rectum
                               'K634', #Enteroptosis
                               'K6389', #Other specified diseases of intestine
                               'K639', #Disease of intestine, unspecified
                               'K761', #Chronic passive congestion of liver
                               'K7689', #Other specified diseases of liver
                               'K769', #Liver disease, unspecified
                               'K8010', #Calculus of gallbladder w chronic cholecyst w/o obstruction
                               'K8018', #Calculus of gallbladder w oth cholecystitis w/o obstruction
                               'K8020', #Calculus of gallbladder w/o cholecystitis w/o obstruction
                               'K810', #Acute cholecystitis
                               'K811', #Chronic cholecystitis
                               'K819', #Cholecystitis, unspecified
                               'K828', #Other specified diseases of gallbladder
                               'D259', #Leiomyoma of uterus, unspecified
                               'N200', #Calculus of kidney
                               'N201', #Calculus of ureter
                               'N281', #Cyst of kidney, acquired
                               'N2889', #Other specified disorders of kidney and ureter
                               'N289', #Disorder of kidney and ureter, unspecified
                               'N809', #Endometriosis, unspecified
                               'N830', #Follicular cyst of ovary
                               'N8320', #Unspecified ovarian cysts
                               'N83201', #Unspecified ovarian cyst, right side
                               'N8329', #Other ovarian cysts
                               'N838', #Oth noninflammatory disord of ovary, fallop and broad ligmt
                               'N9489', #Oth cond assoc w female genital organs and menstrual cycle
                               'Z3202', #Encounter for pregnancy test, result negative
                               'D72829', #Elevated white blood cell count, unspecified
                               'K659', #Peritonitis, unspecified
                               'N803', #Endometriosis of pelvic peritoneum
                               'N9983', #Residual ovary syndrome
                               'R10823', #Right lower quadrant rebound abdominal tenderness
                               'R160', #Hepatomegaly, not elsewhere classified
                               'R161', #Splenomegaly, not elsewhere classified
                               'R188', #Other ascites
                               'R1900', #Intra-abd and pelvic swelling, mass and lump, unsp site
                               'R1903', #Right lower quadrant abdominal swelling, mass and lump
                               'R1909', #Other intra-abdominal and pelvic swelling, mass and lump
                               'R312', #Other microscopic hematuria
                               'R319', #Hematuria, unspecified
                               'R339', #Retention of urine, unspecified
                               'R933', #Abnormal findings on dx imaging of prt digestive tract
                               'R935', #Abn findings on dx imaging of abd regions, inc retroperiton
                               'R945' #Abnormal results of liver function studies
                               )))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
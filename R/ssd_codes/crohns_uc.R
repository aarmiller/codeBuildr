## Codes for crohns_uc 

    
# Description:
    
desc <- "Crohn's Disease & Ulcerative Colitis"
    
# Diagnosis codes:

# library(tidyverse)
# tmp <- read_csv("~/OneDrive - University of Iowa/Data/ssd_lists/from_phil/crohns_uc/dx9.csv") %>%
#   filter(include==1) %>%
#   distinct(code,description) %>%
#   left_join(filter(codeBuildr::all_icd_labels,dx_ver==9) %>%
#                 select(code = dx,desc))
# 
# tmp2 <- filter(tmp,is.na(desc)) %>%
#   distinct(code,desc=description) %>%
#   inner_join(filter(codeBuildr::all_icd_labels,dx_ver==9)) %>%
#   select(code=dx,desc)
# 
# tmp2 <- bind_rows(tmp %>%
#             filter(!is.na(desc)) %>%
#             select(code,desc),
#           tmp2)
# 
# cat(paste0("'",tmp2$code,"',", " #",tmp2$desc),sep="\n")
# 
# 
# tmp <- read_csv("~/OneDrive - University of Iowa/Data/ssd_lists/from_phil/crohns_uc/dx10.csv") %>%
#   filter(include==1) %>%
#   distinct(code,description) %>%
#   left_join(filter(codeBuildr::all_icd_labels,dx_ver==10) %>%
#               select(code = dx,desc))
# 
# filter(tmp,is.na(desc))
# 
# cat(paste0("'",tmp$code,"',", " #",tmp$desc),sep="\n")
    
icd9_codes <- as.character((c('78791', #Diarrhea
                              '5693', #Hemorrhage of rectum and anus
                              '5781', #Blood in stool
                              '78321', #Loss of weight
                              '78799', #Other symptoms involving digestive system
                              '53510', #Atrophic gastritis, without mention of hemorrhage
                              '78905', #Abdominal pain, periumbilic
                              '7921', #Nonspecific abnormal findings in stool contents
                              '7877', #Abnormal feces
                              '78906', #Abdominal pain, epigastric
                              '56400', #Constipation, unspecified
                              '5645', #Functional diarrhea
                              '56211', #Diverticulitis of colon (without mention of hemorrhage)
                              '56989', #Other specified disorders of intestine
                              '53560', #Duodenitis, without mention of hemorrhage
                              '78901', #Abdominal pain, right upper quadrant
                              '4558', #Unspecified hemorrhoids with other complication
                              '56201', #Diverticulitis of small intestine (without mention of hemorrhage)
                              '56982', #Ulceration of intestine
                              '56949', #Other specified disorders of rectum and anus
                              '78900', #Abdominal pain, unspecified site
                              '5589', #Other and unspecified noninfectious gastroenteritis and colitis
                              '78907', #Abdominal pain, generalized
                              '78909', #Abdominal pain, other specified site
                              '5789', #Hemorrhage of gastrointestinal tract, unspecified
                              '78701', #Nausea with vomiting
                              '78903', #Abdominal pain, right lower quadrant
                              '27651', #Dehydration
                              '78904', #Abdominal pain, left lower quadrant
                              '78060', #Fever, unspecified
                              '5609', #Unspecified intestinal obstruction
                              '78703', #Vomiting alone
                              '2768', #Hypopotassemia
                              '7934', #Nonspecific (abnormal) findings on radiological and other examination of gastrointestinal tract
                              '28860', #Leukocytosis, unspecified
                              '5579', #Unspecified vascular insufficiency of intestine
                              '5601', #Paralytic ileus
                              '5570', #Acute vascular insufficiency of intestine
                              '5409', #Acute appendicitis without mention of peritonitis
                              '541', #Appendicitis, unqualified
                              '56089', #Other specified intestinal obstruction
                              '5695', #Abscess of intestine
                              '56983', #Perforation of intestine
                              '4590', #Hemorrhage, unspecified
                              '78960', #Abdominal tenderness, unspecified site
                              '2892', #Nonspecific mesenteric lymphadenitis
                              '5400', #Acute appendicitis with generalized peritonitis
                              '5401', #Acute appendicitis with peritoneal abscess
                              '78933', #Abdominal or pelvic swelling, mass, or lump, right lower quadrant
                              '53012', #Acute esophagitis
                              '5439', #Other and unspecified diseases of appendix
                              '27652', #Hypovolemia
                              '2765', #Volume depletion
                              '7876', #Incontinence of feces
                              '53550', #Unspecified gastritis and gastroduodenitis, without mention of hemorrhage
                              '78702', #Nausea alone
                              '53540', #Other specified gastritis, without mention of hemorrhage
                              '78902', #Abdominal pain, left upper quadrant
                              '5379', #Unspecified disorder of stomach and duodenum
                              '56941', #Ulcer of anus and rectum
                              '53019', #Other esophagitis
                              '5690', #Anal and rectal polyp
                              '53290', #Duodenal ulcer, unspecified as acute or chronic, without hemorrhage or perforation, without mention of obstruction
                              '56213', #Diverticulitis of colon with hemorrhage
                              '5362', #Persistent vomiting
                              '5780', #Hematemesis
                              '5759', #Unspecified disorder of gallbladder
                              '5699', #Unspecified disorder of intestine
                              '27650', #Volume depletion, unspecified
                              '53020', #Ulcer of esophagus without bleeding
                              '7901', #Elevated sedimentation rate
                              '845', #Sprains and strains of ankle and foot
                              '57420', #Calculus of gallbladder without mention of cholecystitis, without mention of obstruction
                              '2761', #Hyposmolality and/or hyponatremia
                              '7806', #Fever and other physiologic disturbances of temperature regulation
                              '2760', #Hyperosmolality and/or hypernatremia
                              '78061', #Fever presenting with conditions classified elsewhere
                              '53130', #Acute gastric ulcer without mention of hemorrhage or perforation, without mention of obstruction
                              '56210', #Diverticulosis of colon (without mention of hemorrhage)
                              '4550', #Internal hemorrhoids without mention of complication
                              '7873', #Flatulence, eructation, and gas pain
                              '56942', #Anal or rectal pain
                              '4556', #Unspecified hemorrhoids without mention of complication
                              '53010', #Esophagitis, unspecified
                              '4589', #Hypotension, unspecified
                              '5650', #Anal fissure
                              '7850', #Tachycardia, unspecified
                              '4553', #External hemorrhoids without mention of complication
                              '78930', #Abdominal or pelvic swelling, mass, or lump, unspecified site
                              '5649', #Unspecified functional disorder of intestine
                              '53089', #Other specified disorders of esophagus
                              '78939', #Abdominal or pelvic swelling, mass, or lump, other specified site
                              '5571', #Chronic vascular insufficiency of intestine
                              '56401', #Slow transit constipation
                              '2713', #Intestinal disaccharidase deficiencies and disaccharide malabsorption
                              '9974', #Digestive system complications
                              '57400', #Calculus of gallbladder with acute cholecystitis, without mention of obstruction
                              '5750', #Acute cholecystitis
                              '5369', #Unspecified functional disorder of stomach
                              '78760', #Full incontinence of feces
                              '4149', #Chronic ischemic heart disease, unspecified
                              '5692', #Stenosis of rectum and anus
                              '5691', #Rectal prolapse
                              '53500', #Acute gastritis, without mention of hemorrhage
                              '5368', #Dyspepsia and other specified disorders of function of stomach
                              '7999', #Other unknown and unspecified cause of morbidity and mortality
                              '53190', #Gastric ulcer, unspecified as acute or chronic, without mention of hemorrhage or perforation, without mention of obstruction
                              '0093', #Diarrhea of presumed infectious origin
                              '0092', #Infectious diarrhea
                              '0088', #Intestinal infection due to other organism, not elsewhere classified
                              '0091', #Colitis, enteritis, and gastroenteritis of presumed infectious origin
                              '0090', #Infectious colitis, enteritis, and gastroenteritis
                              '0085' #Bacterial enteritis, unspecified
                              )))
    
icd10_codes <- as.character((c('R197', #Diarrhea, unspecified
                               'K625', #Hemorrhage of anus and rectum
                               'R634', #Abnormal weight loss
                               'R194', #Change in bowel habit
                               'K921', #Melena
                               'R1084', #Generalized abdominal pain
                               'K633', #Ulcer of intestine
                               'R1032', #Left lower quadrant pain
                               'K5289', #Other specified noninfective gastroenteritis and colitis
                               'R1030', #Lower abdominal pain, unspecified
                               'K269', #Duodenal ulcer, unspecified as acute or chronic, without hemorrhage or perforation
                               'R109', #Unspecified abdominal pain
                               'K2950', #Unspecified chronic gastritis without bleeding
                               'A09', #Infectious gastroenteritis and colitis, unspecified
                               'R1033', #Periumbilical pain
                               'K2980', #Duodenitis without bleeding
                               'K228', #Other specified diseases of esophagus
                               'R700', #Elevated erythrocyte sedimentation rate
                               'R152', #Fecal urgency
                               'L52', #Erythema nodosum
                               'R10813', #Right lower quadrant abdominal tenderness
                               'I880', #Nonspecific mesenteric lymphadenitis
                               'R143', #Flatulence
                               'R10817', #Generalized abdominal tenderness
                               'K629', #Disease of anus and rectum, unspecified
                               'K529', #Noninfective gastroenteritis and colitis, unspecified
                               'R1031', #Right lower quadrant pain
                               'R935', #Abnormal findings on diagnostic imaging of other abdominal regions, including retroperitoneum
                               'R112', #Nausea with vomiting, unspecified
                               'K2940', #Chronic atrophic gastritis without bleeding
                               'R7982', #Elevated C-reactive protein (CRP)
                               'K2210', #Ulcer of esophagus without bleeding
                               'K121', #Other forms of stomatitis
                               'R10819', #Abdominal tenderness, unspecified site
                               'K920', #Hematemesis
                               'K317', #Polyp of stomach and duodenum
                               'R509', #Fever, unspecified
                               'R1110', #Vomiting, unspecified
                               'K5720', #Diverticulitis of large intestine with perforation and abscess without bleeding
                               'K56690', #Other partial intestinal obstruction
                               'K5780', #Diverticulitis of intestine, part unspecified, with perforation and abscess without bleeding
                               'A049', #Bacterial intestinal infection, unspecified
                               'K2960', #Other gastritis without bleeding
                               'E869', #Volume depletion, unspecified
                               'K2990', #Gastroduodenitis, unspecified, without bleeding
                               'K5904', #Chronic idiopathic constipation
                               'R1909', #Other intra-abdominal and pelvic swelling, mass and lump
                               'K626', #Ulcer of anus and rectum
                               'K279', #Peptic ulcer, site unspecified, unspecified as acute or chronic, without hemorrhage or perforation
                               'K352', #Acute appendicitis with generalized peritonitis
                               'E860', #Dehydration
                               'K922', #Gastrointestinal hemorrhage, unspecified
                               'E876', #Hypokalemia
                               'D72829', #Elevated white blood cell count, unspecified
                               'R933', #Abnormal findings on diagnostic imaging of other parts of digestive tract
                               'Z20822', #Contact with and (suspected) exposure to COVID-19
                               'K5660', #Unspecified intestinal obstruction
                               'K56609', #Unspecified intestinal obstruction, unspecified as to partial versus complete obstruction
                               'K5669', #Other intestinal obstruction
                               'A084', #Viral intestinal infection, unspecified
                               'K567', #Ileus, unspecified
                               'R100', #Acute abdomen
                               'K559', #Vascular disorder of intestine, unspecified
                               'K208', #Other esophagitis
                               'K3580', #Unspecified acute appendicitis
                               'K56600', #Partial intestinal obstruction, unspecified as to cause
                               'K5641', #Fecal impaction
                               'K630', #Abscess of intestine
                               'R5081', #Fever presenting with conditions classified elsewhere
                               'K37', #Unspecified appendicitis
                               'R58', #Hemorrhage, not elsewhere classified
                               'R1111', #Vomiting without nausea
                               'A045', #Campylobacter enteritis
                               'K5731', #Diverticulosis of large intestine without perforation or abscess with bleeding
                               'K8050', #Calculus of bile duct without cholangitis or cholecystitis without obstruction
                               'R6510', #Systemic inflammatory response syndrome (SIRS) of non-infectious origin without acute organ dysfunction
                               'R10814', #Left lower quadrant abdominal tenderness
                               'K353', #Acute appendicitis with localized peritonitis
                               'R17', #Unspecified jaundice
                               'K2100', #Gastro-esophageal reflux disease with esophagitis, without bleeding
                               'K229', #Disease of esophagus, unspecified
                               'K565', #Intestinal adhesions [bands] with obstruction (postinfection)
                               'K581', #Irritable bowel syndrome with constipation
                               'K612', #Anorectal abscess
                               'R141', #Gas pain
                               'K561', #Intussusception
                               'K623', #Rectal prolapse
                               'K819', #Cholecystitis, unspecified
                               'K2090', #Esophagitis, unspecified without bleeding
                               'E861', #Hypovolemia
                               'K3533', #Acute appendicitis with perforation and localized peritonitis, with abscess
                               'K2971', #Gastritis, unspecified, with bleeding
                               'K810', #Acute cholecystitis
                               'N410', #Acute prostatitis
                               'R231', #Pallor
                               'R1013', #Epigastric pain
                               'K6389', #Other specified diseases of intestine
                               'K6289', #Other specified diseases of anus and rectum
                               'R110', #Nausea
                               'K2970', #Gastritis, unspecified, without bleeding
                               'R1011', #Right upper quadrant pain
                               'K209', #Esophagitis, unspecified
                               'R1010', #Upper abdominal pain, unspecified
                               'K591', #Functional diarrhea
                               'K649', #Unspecified hemorrhoids
                               'K602', #Anal fissure, unspecified
                               'K639', #Disease of intestine, unspecified
                               'R198', #Other specified symptoms and signs involving the digestive system and abdomen
                               'K259', #Gastric ulcer, unspecified as acute or chronic, without hemorrhage or perforation
                               'K319', #Disease of stomach and duodenum, unspecified
                               'R630', #Anorexia
                               'D124', #Benign neoplasm of descending colon
                               'R161', #Splenomegaly, not elsewhere classified
                               'K2930', #Chronic superficial gastritis without bleeding
                               'L0231', #Cutaneous abscess of buttock
                               'K641', #Second degree hemorrhoids
                               'K8010', #Calculus of gallbladder with chronic cholecystitis without obstruction
                               'G43A0', #Cyclical vomiting, not intractable
                               'K828', #Other specified diseases of gallbladder
                               'R1900', #Intra-abdominal and pelvic swelling, mass and lump, unspecified site
                               'K551', #Chronic vascular disorders of intestine
                               'K3189', #Other diseases of stomach and duodenum
                               'K611', #Rectal abscess
                               'K621', #Rectal polyp
                               'K521', #Toxic gastroenteritis and colitis
                               'R599', #Enlarged lymph nodes, unspecified
                               'R6520', #Severe sepsis without septic shock
                               'K659', #Peritonitis, unspecified
                               'D72828', #Other elevated white blood cell count
                               'K5900', #Constipation, unspecified
                               'A419', #Sepsis, unspecified organism
                               'E871', #Hypo-osmolality and hyponatremia
                               'R1012', #Left upper quadrant pain
                               'R188', #Other ascites
                               'A0472', #Enterocolitis due to Clostridium difficile, not specified as recurrent
                               'B9681', #Helicobacter pylori [H. pylori] as the cause of diseases classified elsewhere
                               'A048', #Other specified bacterial intestinal infections
                               'E870', #Hyperosmolality and hypernatremia
                               'K929', #Disease of digestive system, unspecified
                               'A0471', #Enterocolitis due to Clostridium difficile, recurrent
                               'R000', #Tachycardia, unspecified
                               'I959', #Hypotension, unspecified
                               'K5790', #Diverticulosis of intestine, part unspecified, without perforation or abscess without bleeding
                               'R591', #Generalized enlarged lymph nodes
                               'N10', #Acute pyelonephritis
                               'N3001', #Acute cystitis with hematuria
                               'R61', #Generalized hyperhidrosis
                               'K5732', #Diverticulitis of large intestine without perforation or abscess without bleeding
                               'A047', #Enterocolitis due to Clostridium difficile
                               'K5792', #Diverticulitis of intestine, part unspecified, without perforation or abscess without bleeding
                               'K523', #Indeterminate colitis
                               'K651', #Peritoneal abscess
                               'K56699', #Other intestinal obstruction unspecified as to partial versus complete obstruction
                               'K5901', #Slow transit constipation
                               'R12', #Heartburn
                               'K631', #Perforation of intestine (nontraumatic)
                               'L02211' #Cutaneous abscess of abdominal wall
                               )))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
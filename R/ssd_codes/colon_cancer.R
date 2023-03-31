## Codes for colon_cancer 

    
# Description:
    
desc <- "Colon Cancer"
    
# Diagnosis codes:
# library(tidyverse)
# tmp <- read_csv("~/OneDrive - University of Iowa/Data/ssd_lists/from_phil/colon_cancer/dx9.csv") %>% 
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
# tmp <- read_csv("~/OneDrive - University of Iowa/Data/ssd_lists/from_phil/colon_cancer/dx10.csv") %>% 
#   filter(include==1) %>% 
#   distinct(code,description) %>% 
#   left_join(filter(codeBuildr::all_icd_labels,dx_ver==10) %>% 
#               select(code = dx,desc)) 
# 
# cat(paste0("'",tmp$code,"',", " #",tmp$desc),sep="\n")


    
icd9_codes <- as.character((c('78900', #Abdominal pain, unspecified site
                              '5789', #Hemorrhage of gastrointestinal tract, unspecified
                              '56989', #Other specified disorders of intestine
                              '78930', #Abdominal or pelvic swelling, mass, or lump, unspecified site
                              '5699', #Unspecified disorder of intestine
                              '78903', #Abdominal pain, right lower quadrant
                              '7934', #Nonspecific (abnormal) findings on radiological and other examination of gastrointestinal tract
                              '78939', #Abdominal or pelvic swelling, mass, or lump, other specified site
                              '78933', #Abdominal or pelvic swelling, mass, or lump, right lower quadrant
                              '5409', #Acute appendicitis without mention of peritonitis
                              '78937', #Abdominal or pelvic swelling, mass, or lump, generalized
                              '5439', #Other and unspecified diseases of appendix
                              '78934', #Abdominal or pelvic swelling, mass, or lump, left lower quadrant
                              '78931', #Abdominal or pelvic swelling, mass, or lump, right upper quadrant
                              '541', #Appendicitis, unqualified
                              '5400', #Acute appendicitis with generalized peritonitis
                              '6209', #Unspecified noninflammatory disorder of ovary, fallopian tube, and broad ligament
                              '20951', #Benign carcinoid tumor of the appendix
                              '5600', #Intussusception
                              '5401', #Acute appendicitis with peritoneal abscess
                              '7877', #Abnormal feces
                              '78935', #Abdominal or pelvic swelling, mass, or lump, periumbilic
                              '78932', #Abdominal or pelvic swelling, mass, or lump, left upper quadrant
                              '542', #Other appendicitis
                              '7921', #Nonspecific abnormal findings in stool contents
                              '78907', #Abdominal pain, generalized
                              '78094', #Early satiety
                              '5693', #Hemorrhage of rectum and anus
                              '5781', #Blood in stool
                              '78799', #Other symptoms involving digestive system
                              '78909', #Abdominal pain, other specified site
                              '7515', #Other anomalies of intestine
                              '5602', #Volvulus
                              '78960', #Abdominal tenderness, unspecified site
                              '56200', #Diverticulosis of small intestine (without mention of hemorrhage)
                              '4558', #Unspecified hemorrhoids with other complication
                              '56213', #Diverticulitis of colon with hemorrhage
                              '5647', #Megacolon, other than Hirschsprung's
                              '7933', #Nonspecific (abnormal) findings on radiological and other examination of biliary tract
                              '56983', #Perforation of intestine
                              '5309', #Unspecified disorder of esophagus
                              '56089', #Other specified intestinal obstruction
                              '56982', #Ulceration of intestine
                              '5695', #Abscess of intestine
                              '56039', #Other impaction of intestine
                              '7936', #Nonspecific (abnormal) findings on radiological and other examination of abdominal area, including retroperitoneum
                              '5601', #Paralytic ileus
                              '5379', #Unspecified disorder of stomach and duodenum
                              '5679', #Unspecified peritonitis
                              '9974', #Digestive system complications
                              '53290', #Duodenal ulcer, unspecified as acute or chronic, without hemorrhage or perforation, without mention of obstruction
                              '5609', #Unspecified intestinal obstruction
                              '56889', #Other specified disorders of peritoneum
                              '99749', #Other digestive system complications
                              '78321', #Loss of weight
                              '56211', #Diverticulitis of colon (without mention of hemorrhage)
                              '2800', #Iron deficiency anemia secondary to blood loss (chronic)
                              '78904', #Abdominal pain, left lower quadrant
                              '53510', #Atrophic gastritis, without mention of hemorrhage
                              '78905', #Abdominal pain, periumbilic
                              '53560', #Duodenitis, without mention of hemorrhage
                              '7891', #Hepatomegaly
                              '7871', #Heartburn
                              '53019', #Other esophagitis
                              '53020', #Ulcer of esophagus without bleeding
                              '5691', #Rectal prolapse
                              '5560', #Ulcerative (chronic) enterocolitis
                              '56400', #Constipation, unspecified
                              '78906', #Abdominal pain, epigastric
                              '53540', #Other specified gastritis, without mention of hemorrhage
                              '5680', #Peritoneal adhesions (postoperative) (postinfection)
                              '56212', #Diverticulosis of colon with hemorrhage
                              '78703', #Vomiting alone
                              '56401', #Slow transit constipation
                              '5552', #Regional enteritis of small intestine with large intestine
                              '56210', #Diverticulosis of colon (without mention of hemorrhage)
                              '78901', #Abdominal pain, right upper quadrant
                              '4550', #Internal hemorrhoids without mention of complication
                              '53550', #Unspecified gastritis and gastroduodenitis, without mention of hemorrhage
                              '7873', #Flatulence, eructation, and gas pain
                              '5690', #Anal and rectal polyp
                              '53500', #Acute gastritis, without mention of hemorrhage
                              '53010', #Esophagitis, unspecified
                              '78902', #Abdominal pain, left upper quadrant
                              '5531', #Umbilical hernia without mention of obstruction or gangrene
                              '53789', #Other specified disorders of stomach and duodenum
                              '2808', #Other specified iron deficiency anemias
                              '53190', #Gastric ulcer, unspecified as acute or chronic, without mention of hemorrhage or perforation, without mention of obstruction
                              '56409', #Other constipation
                              '7949', #Nonspecific abnormal results of other specified function study
                              '5645', #Functional diarrhea
                              '5780', #Hematemesis
                              '5550', #Regional enteritis of small intestine
                              '4590', #Hemorrhage, unspecified
                              '53089', #Other specified disorders of esophagus
                              '5566', #Universal ulcerative (chronic) colitis
                              '1514', #Malignant neoplasm of body of stomach
                              '56941', #Ulcer of anus and rectum
                              '5750', #Acute cholecystitis
                              '7932', #Nonspecific (abnormal) findings on radiological and other examination of other intrathoracic organs
                              '5362', #Persistent vomiting
                              '7867', #Abnormal chest sounds
                              '5759', #Unspecified disorder of gallbladder
                              '4556', #Unspecified hemorrhoids without mention of complication
                              '5368', #Dyspepsia and other specified disorders of function of stomach
                              '4553', #External hemorrhoids without mention of complication
                              '2801', #Iron deficiency anemia secondary to inadequate dietary iron intake
                              '57410', #Calculus of gallbladder with other cholecystitis, without mention of obstruction
                              '5758', #Other specified disorders of gallbladder
                              '53390', #Peptic ulcer of unspecified site, unspecified as acute or chronic, without mention of hemorrhage or perforation, without mention of obstruction
                              '57400', #Calculus of gallbladder with acute cholecystitis, without mention of obstruction
                              '78760', #Full incontinence of feces
                              '2859', #Anemia, unspecified
                              '2809', #Iron deficiency anemia, unspecified
                              '57420', #Calculus of gallbladder without mention of cholecystitis, without mention of obstruction
                              '7830', #Anorexia
                              '7895', #Ascites
                              '7824', #Jaundice, unspecified, not of newborn
                              '56489', #Other functional disorders of intestine
                              '5762', #Obstruction of bile duct
                              '5720', #Abscess of liver
                              '1919', #Malignant neoplasm of brain, unspecified
                              '5650', #Anal fissure
                              '57511', #Chronic cholecystitis
                              '78079', #Other malaise and fatigue
                              '53085', #Barrett's esophagus
                              '56722', #Peritoneal abscess
                              '5768', #Other specified disorders of biliary tract
                              '7822', #Localized superficial swelling, mass, or lump
                              '57510', #Cholecystitis, unspecified
                              '04186', #Helicobacter pylori [H. pylori]
                              '0091', #Colitis, enteritis, and gastroenteritis of presumed infectious origin
                              '0088' #Intestinal infection due to other organism, not elsewhere classified
                              )))
    
icd10_codes <- as.character((c('R109', #Unspecified abdominal pain
                               'R634', #Abnormal weight loss
                               'B9681', #Helicobacter pylori [H. pylori] as the cause of diseases classified elsewhere
                               'K5900', #Constipation, unspecified
                               'R1011', #Right upper quadrant pain
                               'R1032', #Left lower quadrant pain
                               'K2970', #Gastritis, unspecified, without bleeding
                               'R1010', #Upper abdominal pain, unspecified
                               'K5901', #Slow transit constipation
                               'K259', #Gastric ulcer, unspecified as acute or chronic, without hemorrhage or perforation
                               'R1013', #Epigastric pain
                               'K5732', #Diverticulitis of large intestine without perforation or abscess without bleeding
                               'K5909', #Other constipation
                               'K319', #Disease of stomach and duodenum, unspecified
                               'K30', #Functional dyspepsia
                               'R140', #Abdominal distension (gaseous)
                               'K625', #Hemorrhage of anus and rectum
                               'K921', #Melena
                               'R1084', #Generalized abdominal pain
                               'R1900', #Intra-abdominal and pelvic swelling, mass and lump, unspecified site
                               'R1030', #Lower abdominal pain, unspecified
                               'K629', #Disease of anus and rectum, unspecified
                               'R1012', #Left upper quadrant pain
                               'R938', #Abnormal findings on diagnostic imaging of other specified body structures
                               'K209', #Esophagitis, unspecified
                               'K2960', #Other gastritis without bleeding
                               'K222', #Esophageal obstruction
                               'K5289', #Other specified noninfective gastroenteritis and colitis
                               'R195', #Other fecal abnormalities
                               'K5720', #Diverticulitis of large intestine with perforation and abscess without bleeding
                               'R198', #Other specified symptoms and signs involving the digestive system and abdomen
                               'K641', #Second degree hemorrhoids
                               'K529', #Noninfective gastroenteritis and colitis, unspecified
                               'K6289', #Other specified diseases of anus and rectum
                               'K5790', #Diverticulosis of intestine, part unspecified, without perforation or abscess without bleeding
                               'K3189', #Other diseases of stomach and duodenum
                               'K5730', #Diverticulosis of large intestine without perforation or abscess without bleeding
                               'K648', #Other hemorrhoids
                               'K2950', #Unspecified chronic gastritis without bleeding
                               'K649', #Unspecified hemorrhoids
                               'R1033', #Periumbilical pain
                               'K429', #Umbilical hernia without obstruction or gangrene
                               'K828', #Other specified diseases of gallbladder
                               'A09', #Infectious gastroenteritis and colitis, unspecified
                               'R799', #Abnormal finding of blood chemistry, unspecified
                               'K640', #First degree hemorrhoids
                               'R194', #Change in bowel habit
                               'R935', #Abnormal findings on diagnostic imaging of other abdominal regions, including retroperitoneum
                               'K449', #Diaphragmatic hernia without obstruction or gangrene
                               'R9389', #Abnormal findings on diagnostic imaging of other specified body structures
                               'R1909', #Other intra-abdominal and pelvic swelling, mass and lump
                               'K5780', #Diverticulitis of intestine, part unspecified, with perforation and abscess without bleeding
                               'K2270', #Barrett's esophagus without dysplasia
                               'R932', #Abnormal findings on diagnostic imaging of liver and biliary tract
                               'K668', #Other specified disorders of peritoneum
                               'C49A2', #Gastrointestinal stromal tumor of stomach
                               'N3090', #Cystitis, unspecified without hematuria
                               'K56609', #Unspecified intestinal obstruction, unspecified as to partial versus complete obstruction
                               'K6389', #Other specified diseases of intestine
                               'K639', #Disease of intestine, unspecified
                               'K922', #Gastrointestinal hemorrhage, unspecified
                               'R933', #Abnormal findings on diagnostic imaging of other parts of digestive tract
                               'R1031', #Right lower quadrant pain
                               'K5660', #Unspecified intestinal obstruction
                               'Z1159', #Encounter for screening for other viral diseases
                               'K5669', #Other intestinal obstruction
                               'K3580', #Unspecified acute appendicitis
                               'R1903', #Right lower quadrant abdominal swelling, mass and lump
                               'K388', #Other specified diseases of appendix
                               'K56690', #Other partial intestinal obstruction
                               'K567', #Ileus, unspecified
                               'K56600', #Partial intestinal obstruction, unspecified as to cause
                               'K633', #Ulcer of intestine
                               'R1907', #Generalized intra-abdominal and pelvic swelling, mass and lump
                               'Z03818', #Encounter for observation for suspected exposure to other biological agents ruled out
                               'K631', #Perforation of intestine (nontraumatic)
                               'R100', #Acute abdomen
                               'R591', #Generalized enlarged lymph nodes
                               'K561', #Intussusception
                               'K389', #Disease of appendix, unspecified
                               'K37', #Unspecified appendicitis
                               'K2980', #Duodenitis without bleeding
                               'R12', #Heartburn
                               'R17', #Unspecified jaundice
                               'R222', #Localized swelling, mass and lump, trunk
                               'K228', #Other specified diseases of esophagus
                               'I4510', #Unspecified right bundle-branch block
                               'K920', #Hematemesis
                               'R58', #Hemorrhage, not elsewhere classified
                               'J181', #Lobar pneumonia, unspecified organism
                               'K352', #Acute appendicitis with generalized peritonitis
                               'K3532', #Acute appendicitis with perforation and localized peritonitis, without abscess
                               'K591', #Functional diarrhea
                               'R1904', #Left lower quadrant abdominal swelling, mass and lump
                               'K353', #Acute appendicitis with localized peritonitis
                               'R10813', #Right lower quadrant abdominal tenderness
                               'K626', #Ulcer of anus and rectum
                               'K660', #Peritoneal adhesions (postprocedural) (postinfection)
                               'N949', #Unspecified condition associated with female genital organs and menstrual cycle
                               'R1901', #Right upper quadrant abdominal swelling, mass and lump
                               'R948', #Abnormal results of function studies of other organs and systems
                               'N858', #Other specified noninflammatory disorders of uterus
                               'K2930', #Chronic superficial gastritis without bleeding
                               'D121', #Benign neoplasm of appendix
                               'D3A020', #Benign carcinoid tumor of the appendix
                               'K5731', #Diverticulosis of large intestine without perforation or abscess with bleeding
                               'K5641', #Fecal impaction
                               'R1319', #Other dysphagia
                               'K5100', #Ulcerative (chronic) pancolitis without complications
                               'K580', #Irritable bowel syndrome with diarrhea
                               'K8050', #Calculus of bile duct without cholangitis or cholecystitis without obstruction
                               'R229', #Localized swelling, mass and lump, unspecified
                               'N83202', #Unspecified ovarian cyst, left side
                               'K4020', #Bilateral inguinal hernia, without obstruction or gangrene, not specified as recurrent
                               'K5010', #Crohn's disease of large intestine without complications
                               'K623', #Rectal prolapse
                               'K624', #Stenosis of anus and rectum
                               'N83201', #Unspecified ovarian cyst, right side
                               'K5000', #Crohn's disease of small intestine without complications
                               'K824', #Cholesterolosis of gallbladder
                               'E668', #Other obesity
                               'K3533', #Acute appendicitis with perforation and localized peritonitis, with abscess
                               'R10811', #Right upper quadrant abdominal tenderness
                               'K2940', #Chronic atrophic gastritis without bleeding
                               'K316', #Fistula of stomach and duodenum
                               'K469', #Unspecified abdominal hernia without obstruction or gangrene
                               'K659', #Peritonitis, unspecified
                               'K269', #Duodenal ulcer, unspecified as acute or chronic, without hemorrhage or perforation
                               'K279', #Peptic ulcer, site unspecified, unspecified as acute or chronic, without hemorrhage or perforation
                               'K3530', #Acute appendicitis with localized peritonitis, without perforation or gangrene
                               'R1902', #Left upper quadrant abdominal swelling, mass and lump
                               'A084', #Viral intestinal infection, unspecified
                               'R599', #Enlarged lymph nodes, unspecified
                               'R161', #Splenomegaly, not elsewhere classified
                               'A0472', #Enterocolitis due to Clostridium difficile, not specified as recurrent
                               'K838', #Other specified diseases of biliary tract
                               'R159', #Full incontinence of feces
                               'K210', #Gastro-esophageal reflux disease with esophagitis
                               'E611', #Iron deficiency
                               'R945', #Abnormal results of liver function studies
                               'K589', #Irritable bowel syndrome without diarrhea
                               'K5090', #Crohn's disease, unspecified, without complications
                               'D6489', #Other specified anemias
                               'K750', #Abscess of liver
                               'K5190', #Ulcerative colitis, unspecified, without complications
                               'D638' #Anemia in other chronic diseases classified elsewhere
                               )))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
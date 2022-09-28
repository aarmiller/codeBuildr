
library(tidyverse)
# Codes for CFTR projects

disease_set <- c("clubbing",
  "osteopenia",
  "osteoporosis",
  "scoliosis",
  "failure_to_thrive_adult",
  "diabetes_type1",
  "diabetes_sec",
  "failure_to_thrive_child",
  "lack_of_development",
  "colon_cancer",
  "gi_cancer",
  "stomach_cancer",
  "gerd",
  "intestinal_atresia",
  "intestinal_obstruction",
  "meconium_ileus",
  "meconium_peritonitis",
  "esophagitis",
  "infertility_male",
  "venous_thromboembolism",
  "ascities",
  "cholelithiasis",
  "hepatitis_chronic",
  "cirrhosis",
  "pancreatic_cysts",
  "intestinal_malabsorption",
  "pancreatic_other",
  "pancreatic_cancer",
  "pancreatic_steatorrhea",
  "pancreatitis_acute",
  "pancreatitis_chronic",
  "nephrolithiasis",
  "asthma",
  "cystic_lung",
  "nasal_polyps",
  "resp_failure",
  "resp_failure_newborn",
  "bronchitis_acute",
  "sinusitis_acute",
  "aspergillosis",
  "bronchiectasis",
  "bronchitis_chronic",
  "sinusitis_chronic",
  "pneumonia_congenital",
  "mycobact",
  "pneumonia_recurrent",
  "pneumonia",
  "pseudomonas",
  "unspec_upper_resp",
  "short_stature")


symptom_set <- c("dehydration",
  "feeding_difficulties",
  "fluid_electrolyte",
  "fecal_impaction",
  "abdominal_pain",
  "constipation",
  "diarrhea",
  "nausea_vomitting",
  "liver_enzyme",
  "jaundice",
  "jaundice_neonatal",
  "hemoptysis")

tmp1 <- tibble(name=disease_set) %>% 
  #slice(19:19) 
  mutate(codes=map(name,load_disease_codes)) %>% 
  mutate(icd9_codes = map2(codes,name,~.x[[.y]]$icd9_codes)) %>% 
  mutate(icd10_codes = map2(codes,name,~.x[[.y]]$icd10_codes)) %>% 
  mutate(desc = map2_chr(codes,name,~.x[[.y]]$desc)) 

tmp2 <- tibble(name=symptom_set) %>% 
  mutate(codes=map(name,load_symptom_codes)) %>% 
  mutate(icd9_codes = map(codes,~.$icd9_codes)) %>% 
  mutate(icd10_codes = map(codes,~.$icd10_codes)) %>% 
  mutate(desc = map_chr(codes,~.$desc)) 

cftr_set <- bind_rows(select(tmp1,desc,icd9_codes) %>% 
                        unnest() %>% 
                        rename(icd_code=icd9_codes) %>% 
                        mutate(icd_ver=9L),
                      select(tmp1,desc,icd10_codes) %>% 
                        unnest() %>% 
                        rename(icd_code=icd10_codes) %>% 
                        mutate(icd_ver=10L),
                      select(tmp2,desc,icd9_codes) %>% 
                        unnest() %>% 
                        rename(icd_code=icd9_codes) %>% 
                        mutate(icd_ver=9L),
                      select(tmp2,desc,icd10_codes) %>% 
                        unnest() %>% 
                        rename(icd_code=icd10_codes) %>% 
                        mutate(icd_ver=10L)) %>% 
  arrange(desc,icd_ver,icd_code)

write_csv(cftr_set,"inst/extdata/misc_cftr_set.csv")


#load_misc_codes("cftr_set")


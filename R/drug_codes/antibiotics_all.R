
# Classes
rm(list = ls())

clindamycin <- c("clindamycin")

fluoroquinolones <- c("ciprofloxacin","gatifloxacin","gemifloxacin",
                      "levofloxacin","moxifloxacin","norfloxacin","ofloxacin")

cephalosporins <- c(read_csv("~/OneDrive - University of Iowa/Data/ndc_codes/cephalosporins.csv")$name %>%
                      tolower() %>% str_trim(),
                    "cephalexin")

monobactams <- c("aztreonam","ceftazidime")

carbapenems <- c("imipenem","meropenem","ertapenem","doripenem")

penicillins <- c("cillin","tazobactam","amoxicillin","penicillin",
                 "dicloxacillin","carbenicillin","amoxicillin-clavulanate")

macrolides <- c("azithromycin","clarithromycin","erythromycin","fidaxomicin",
                "telithromycin","telithromycin","ampicillin",
                "sulfamethoxazole-trimethoprim")

nitroimidazoles <- c("metronidazole")

tetracyclines <- c("tetracycline","minocycline","doxycycline","demeclocycline")

sulfonamides <- read_csv("~/OneDrive - University of Iowa/Data/ndc_codes/sulfonamides.csv")$name %>%
  tolower() %>% str_trim()

other <- c("nitrofurantoin","rifampin","linezolid","methenamine","rifaximin",
           "dapsone","fosfomycin")

glycopeptides <- c("vancomycin")


ndc_codes <- tibble(class = c("clindamycin",
                              "fluoroquinolones",
                              "cephalosporins",
                              "monobactams",
                              "carbapenems",
                              "penicillins",
                              "macrolides",
                              "sulfonamides",
                              "other",
                              "tetracyclines",
                              "glycopeptides",
                              "nitroimidazoles")) %>%
  mutate(terms = map(class,~eval(as.name(.)))) %>%
  mutate(ndc_code = map(terms,get_ndc_from_terms))



all_abx <- ndc_codes %>%
  mutate(ndc_code=map(ndc_code,~.$ndcnum)) %>%
  select(group = class,ndc_code) %>%
  unnest(cols = c(ndc_code)) %>%
  distinct()

write_csv(all_abx,"inst/extdata/rx_all_abx.csv")

#
# write_csv(antibiotic_drug_codes,"data/all_abx_codes.csv")
#
# antibiotic_drug_codes %>%
#   distinct(drug_name,ndcnum) %>%
#   rename(NDCNUM=ndcnum) %>%
#   inner_join(redbook) %>%
#   #filter(ROADS %in% c("Oral",NA,"Route Not Applicable","Multiple Routes")) %>%
#   filter(ROADS %in% c("Oral")) %>%
#   select(ndcnum=NDCNUM,drug_name) %>%
#   write_csv("data/oral_abx_codes.csv")
#
#
# # antibiotic codes for Alan 07/31/20
#
#
#
# pertusis_abx <- c("azithromycin","clarithromycin","erythromycin")
#
# pertusis_drug_codes <- tibble(drug_name=pertusis_abx) %>%
#   mutate(ndc=map(drug_name,get_ndc_code)) %>%
#   unnest()
#
# pertusis_drug_codes %>%
#   #distinct(NDCNUM) %>%
#   inner_join(redbook) %>%
#   #filter(ROADS %in% c("Oral",NA,"Route Not Applicable","Multiple Routes")) %>%
#   filter(ROADS %in% c("Oral")) %>%
#   select(ndcnum=NDCNUM,drug_name) %>%
#   write_csv("~/OneDrive - University of Iowa/R_projects/Misdiagnosis/pertussis/data/pertusis_abx_codes.csv")
#
#
#
# get_ndc_code_2 <- function(term){
#
#   #redbook <- read_csv("/Volumes/aarmille/Data/redbook.csv")
#
#   term <- tolower(term)
#
#   ndc_out <- bind_rows(redbook %>%
#                          filter(str_detect(tolower(GENNME),term)) %>%
#                          select(NDCNUM),
#                        redbook %>%
#                          filter(str_detect(tolower(PRODNME),term)) %>%
#                          select(NDCNUM),
#                        redbook %>%
#                          filter(str_detect(tolower(THRCLDS),term)) %>%
#                          select(NDCNUM)) %>%
#     distinct()
#
#   return(ndc_out)
# }
#
# get_ndc_code_2("azithromycin")
#
# antibiotic_cdi_risk <- antibiotic_drug_codes %>%
#   distinct(ndcnum) %>%
#   left_join(tibble(drug_name=c(clindamycin,fluoroquinolones,cephalosporins,monobactams,carbapenems)) %>%
#               left_join(antibiotic_drug_codes) %>%
#               distinct(ndcnum) %>%
#               mutate(high_risk_anti=1L)) %>%
#   mutate(high_risk_anti=ifelse(is.na(high_risk_anti),0L,high_risk_anti))


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

## Expanded 10/19/21 -------------


abx_old <- read_csv("inst/extdata/rx_all_abx.csv")

# add in the ones sent to Phil and Fellow in August
abx_add <- read_csv("~/Data/ndc/antibiotic_anti_infective_codes.csv")

abx_add <- select(abx_add,ndc_code=ndcnum) %>% distinct()

new_codes1 <- abx_add %>% 
  anti_join(abx_old)


new_abx <- rbind(abx_old,
                 tibble(group="uncategorized",
                        ndc_code = new_codes1$ndc_code))

write_csv(new_abx,"inst/extdata/rx_all_abx.csv")


## expanded 9/27/22

abx_old <- read_csv("inst/extdata/rx_all_abx.csv")

load("/Volumes/AML/truven_mind_projects/antibiotic_risk_categories/antibiotics_groupings_new.RData")

abx_add <- antibiotic_ndc_groups_new %>% 
  select(name,ndc_code = ndcnum)

abx_add <- abx_add %>% 
  anti_join(abx_old) %>% 
  distinct(ndc_code) %>% 
  mutate(group="uncategorized")


new_abx <- bind_rows(abx_old,
                     abx_add)

write_csv(new_abx,"inst/extdata/rx_all_abx.csv")

rm(list = ls())

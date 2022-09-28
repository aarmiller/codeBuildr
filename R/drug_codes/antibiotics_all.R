
# Classes
rm(list = ls())

clindamycin <- c("clindamycin")

fluoroquinolones <- c("ciprofloxacin","gatifloxacin","gemifloxacin",
                      "levofloxacin","moxifloxacin","norfloxacin","ofloxacin")

cephalosporins <- c(read_csv("~/OneDrive - University of Iowa/Data/ndc_codes/cephalosporins.csv")$name %>%
                      tolower() %>% str_trim(),
                    "cephalexin","ceftazidime")

monobactams <- c("aztreonam")

carbapenems <- c("imipenem","meropenem","ertapenem","doripenem")

penicillins <- c("cillin","tazobactam","amoxicillin","penicillin",
                 "dicloxacillin","carbenicillin","amoxicillin-clavulanate")

macrolides <- c("azithromycin","clarithromycin","erythromycin","fidaxomicin",
                "telithromycin","telithromycin",
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

### Cleanup groupings ####


load_rx_codes("all_abx") %>% 
  enframe(value = "ndcnum",
          name = "class") %>% 
  unnest()

redbook <- haven::read_sas("~/Data/redbook/redbook_6_22_22.sas7bdat.gz")

load_redbook()


# first get the ones labelled by Phil
rm(list = ls())

redbook <- haven::read_sas("~/Data/redbook/redbook_6_22_22.sas7bdat.gz")

load("/Volumes/AML/truven_mind_projects/antibiotic_risk_categories/antibiotics_groupings_new.RData")
antibiotic_ndc_groups_new

tmp_classes <- read_csv("~/OneDrive - University of Iowa/Data/antibiotics/abx_classes.csv")

include_abx_phil <- read_csv("/Volumes/AML/truven_mind_projects/outpatient_risk/cdi/tmp/include_abx_from_phil.csv")

labelled_set1 <- include_abx_phil %>% 
  select(name = antibiotic) %>% 
  left_join(tmp_classes) %>% 
  left_join(select(antibiotic_ndc_groups_new,ndcnum,name))

labelled_set2 <- antibiotic_ndc_groups_new %>% 
  anti_join(select(labelled_set1,ndcnum)) %>% 
  select(-class) %>% 
  left_join(tmp_classes)  %>% 
  select(name,class,subgroup,ndcnum)


labelled_sets <- bind_rows(labelled_set1,
          labelled_set2) %>% 
  distinct(ndcnum)

all_abx <- codeBuildr::load_rx_codes("all_abx") %>% 
  enframe(name = "old_class", value = "ndcnum") %>% 
  unnest()

tmp_fixes <- read_csv("~/OneDrive - University of Iowa/Data/antibiotics/gennme_fix_names.csv")

to_label <- all_abx %>% 
  anti_join(labelled_sets) %>% 
  inner_join(select(redbook,ndcnum=NDCNUM,gennme=GENNME,prodnme=PRODNME)) %>% 
  mutate(gennme=tolower(gennme),
         prodnme=tolower(prodnme))

filter_set <- function(term){
  to_label %>% 
    filter(str_detect(gennme,term) | str_detect(prodnme,term))
}

filter_set("clindamycin")

tmp_classes <- read_csv("~/OneDrive - University of Iowa/Data/antibiotics/abx_classes.csv")

add_labels <- tmp_classes %>% 
  mutate(filtered_code = map(name,filter_set)) %>% 
  unnest()

# add_labels %>%
#   distinct(ndcnum) %>%
#   anti_join(to_label,.) %>%
#   left_join(tmp_prodnme_add) %>%
#   write_csv("~/OneDrive - University of Iowa/Data/antibiotics/abx_to_classify.csv",na = "")

tmp_prodnme_add <- read_csv("~/OneDrive - University of Iowa/Data/antibiotics/prodnme_class_labels.csv")

tmp1 <- add_labels %>%
  distinct(ndcnum) %>%
  anti_join(to_label,.) %>%
  inner_join(tmp_prodnme_add) 

tmp_to_classify <- read_csv("~/OneDrive - University of Iowa/Data/antibiotics/abx_to_classify.csv")

tmp2 <- add_labels %>%
  distinct(ndcnum) %>%
  anti_join(to_label,.) %>% 
  inner_join(select(tmp_to_classify,-ndcnum)) %>% 
  distinct()

new_labelled <- bind_rows(tmp1,tmp2) %>% distinct(ndcnum,name,class,subgroup)

final_labels <- bind_rows(labelled_set1,
          labelled_set2,
          select(add_labels,name,class,subgroup,ndcnum),
          new_labelled) 

# check that we got all
all_abx %>% distinct(ndcnum) %>% 
  anti_join(final_labels)

final_labels_tmp1 <- final_labels %>% 
  distinct(name,ndcnum) %>% 
  count(ndcnum) %>% 
  filter(n==1) %>% 
  select(-n) %>% 
  inner_join(final_labels)


final_labels_tmp2 <- final_labels %>% 
  distinct(name,ndcnum) %>% 
  count(ndcnum) %>% 
  filter(n>1) %>% 
  select(-n) %>% 
  inner_join(final_labels) %>% 
  inner_join(select(redbook, ndcnum=NDCNUM,GENNME,PRODNME))

final_labels_tmp2 %>% 
  write_csv("~/Desktop/duplicate_abx_names.csv")

tmp <- read_csv("~/OneDrive - University of Iowa/Data/antibiotics/duplicates_corrected.csv")

# check that the only duplicates are combinations
tmp %>% 
  select(-n) %>% 
  count(ndcnum) %>% 
  filter(n>1) %>% 
  select(-n) %>% 
  inner_join(tmp) %>% 
  count(subgroup)

# check no duplicated names
tmp %>% distinct(ndcnum)
tmp %>% distinct(ndcnum,name)

# check that all are in the new labels
final_labels_tmp2 %>% 
  distinct(ndcnum) %>% 
  anti_join(tmp)

final_labels_tmp2 <- tmp %>% select(ndcnum,name,class,subgroup)

# check that all ndc codes are still in set
final_labels %>% distinct(ndcnum)

bind_rows(final_labels_tmp1,
          final_labels_tmp2) %>% 
  distinct(ndcnum)


final_labels <- bind_rows(final_labels_tmp1,
                          final_labels_tmp2)

# export final set of values

read_csv("inst/extdata/rx_all_abx.csv") %>% distinct(ndc_code)

final_labels %>% 
  distinct(group=name,ndc_code=ndcnum) %>% 
  arrange(group,ndc_code) %>% 
  write_csv("inst/extdata/rx_all_abx.csv")

final_labels %>% 
  distinct(name,class,subgroup) %>% 
  write_csv("inst/extdata/misc_abx_classes.csv")

rm(list =ls())

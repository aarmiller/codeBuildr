

# load nber diagnosis crosswalk
icd10cm_to_9 <- read_csv("https://data.nber.org/gem/icd10cmtoicd9gem.csv")
usethis::use_data(icd10cm_to_9,name = icd10cm_to_9)

icd9cm_to_10 <- read_csv("https://data.nber.org/gem/icd9toicd10cmgem.csv")
usethis::use_data(icd9cm_to_10,name = icd9cm_to_10)

# load nber procedure crosswalk
icd10pcs_to_9 <- read_csv("https://data.nber.org/gem/icd10pcstoicd9gem.csv")
usethis::use_data(icd10pcs_to_9,name = icd10pcs_to_9)

icd9pcs_to_10 <- read_csv("https://data.nber.org/gem/icd9toicd10pcsgem.csv")
usethis::use_data(icd9pcs_to_10 ,name = icd9pcs_to_10 )


# AHRQ ccs 9 diagnosis mappings
tmp <- readr::read_csv("/Volumes/AML/data/AHRQ/CCS/Single_Level_CCS_2015/$dxref 2015.csv",
                skip = 1)

ccs9_mappings <- tmp %>%
  rename(icd9cm = `'ICD-9-CM CODE'`,
         ccs_code = `'CCS CATEGORY'`,
         ccs_description = `'CCS CATEGORY DESCRIPTION'`,
         icd_description = `'ICD-9-CM CODE DESCRIPTION'`) %>%
  mutate(icd9cm = str_remove_all(icd9cm,"'"),
         icd9cm = str_remove_all(icd9cm," "),
         ccs_code = as.integer(str_remove_all(ccs_code,"'")),
         ccs_description = str_remove_all(ccs_description,"'")) %>%
  filter(ccs_code!=0) %>%
  select(icd9cm:icd_description)

usethis::use_data(ccs9_mappings, name = ccs9_mappings, overwrite = TRUE)



# AHRQ ccs 10 diagnosis mappings
tmp <- read_csv("/Volumes/AML/data/AHRQ/CCS/ccs_dx_icd10cm_2019_1/ccs_dx_icd10cm_2019_1.csv")

ccs10_mappings <- tmp %>%
  rename(icd10cm = `'ICD-10-CM CODE'`,
         ccs_code = `'CCS CATEGORY'`,
         icd_description = `'ICD-10-CM CODE DESCRIPTION'`,
         ccs_description = `'CCS CATEGORY DESCRIPTION'`,
         ccs_multi_lvl_1_code = `'MULTI CCS LVL 1'`,
         ccs_multi_lvl_1_description = `'MULTI CCS LVL 1 LABEL'`,
         ccs_multi_lvl_2_code = `'MULTI CCS LVL 2'`,
         ccs_multi_lvl_2_description = `'MULTI CCS LVL 2 LABEL'`) %>%
  mutate(icd10cm = str_remove_all(icd10cm,"'"),
         icd10cm = str_remove_all(icd10cm," "),
         ccs_code = as.integer(str_remove_all(ccs_code,"'")),
         ccs_multi_lvl_1_code = as.integer(str_remove_all(ccs_multi_lvl_1_code,"'")),
         ccs_multi_lvl_2_code = str_remove_all(ccs_multi_lvl_2_code,"'"))

usethis::use_data(ccs10_mappings, name = ccs10_mappings, overwrite = TRUE)

# ccs labels
tmp <- readr::read_csv("/Volumes/AML/data/AHRQ/CCS/Single_Level_CCS_2015/dxlabel 2015.csv",
                       skip = 1)

ccs_labels <- tmp %>%
  rename(ccs_code = .Z,
         ccs_category = Overall) %>%
  filter(!(ccs_code %in% c(".",".A"))) %>%
  mutate(ccs_code = as.integer(ccs_code))

usethis::use_data(ccs_labels, name = ccs_labels, overwrite = TRUE)

rm(list = ls())

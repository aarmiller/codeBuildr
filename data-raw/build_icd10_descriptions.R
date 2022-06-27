

library(icd)


###  Load Code Sets -------------------------------

base_codes <- as_tibble(icd::icd10cm2019) %>% 
  mutate(code = as.character(code)) %>% 
  select(code:long_desc)

icd10cm2022 <- read_fwf("/Volumes/AML/data/CMS/icd10/icd10cm_order_2022.txt",
                          fwf_cols(number = c(1,5),
                                   code = c(7,13),
                                   billable = c(15),
                                   short_desc = c(17,76),
                                   long_desc = c(78,NA)))

icd10cm2021 <- read_fwf("/Volumes/AML/data/CMS/icd10/icd10cm_order_2021.txt",
                        fwf_cols(number = c(1,5),
                                 code = c(7,13),
                                 billable = c(15),
                                 short_desc = c(17,76),
                                 long_desc = c(78,NA)))


icd10cm2020 <- read_fwf("/Volumes/AML/data/CMS/icd10/icd10cm_order_2020.txt",
                        fwf_cols(number = c(1,5),
                                 code = c(7,13),
                                 billable = c(15),
                                 short_desc = c(17,76),
                                 long_desc = c(78,NA)))

icd10cm2019 <- read_fwf("/Volumes/AML/data/CMS/icd10/icd10cm_order_2019.txt",
                          fwf_cols(number = c(1,5),
                                   code = c(7,13),
                                   billable = c(15),
                                   short_desc = c(17,76),
                                   long_desc = c(78,NA)))

icd10cm2018 <- read_fwf("/Volumes/AML/data/CMS/icd10/icd10cm_order_2018.txt",
                        fwf_cols(number = c(1,5),
                                 code = c(7,13),
                                 billable = c(15),
                                 short_desc = c(17,76),
                                 long_desc = c(78,NA)))

icd10cm2017 <- read_fwf("/Volumes/AML/data/CMS/icd10/icd10cm_order_2017.txt",
                        fwf_cols(number = c(1,5),
                                 code = c(7,13),
                                 billable = c(15),
                                 short_desc = c(17,76),
                                 long_desc = c(78,NA)))

### find additions -----------------


add_2022 <- icd10cm2022 %>% 
  distinct(code) %>% 
  anti_join(base_codes) %>% 
  inner_join(icd10cm2022) %>% 
  select(-number)

all_codes <- bind_rows(distinct(base_codes,code),
                       distinct(add_2022,code))

icd10cm2021 %>% 
  distinct(code) %>% 
  anti_join(all_codes) 

icd10cm2020 %>% 
  distinct(code) %>% 
  anti_join(all_codes) 

# Correct headstroke codes
icd10cm2019 %>% 
  distinct(code) %>% 
  anti_join(all_codes) %>% 
  inner_join(icd10cm2019) 


add_2018 <- icd10cm2018 %>% 
  distinct(code) %>% 
  anti_join(all_codes) %>% 
  inner_join(icd10cm2018) %>% 
  select(-number)

add_2018

all_codes <- rbind(all_codes,
                   distinct(add_2018,code)) %>% 
  distinct()

### add 2017

add_2017 <- icd10cm2017 %>% 
  distinct(code) %>% 
  anti_join(all_codes) %>% 
  inner_join(icd10cm2017) %>% 
  select(-number)


icd10cm_labels <- bind_rows(base_codes,
          bind_rows(add_2022,
                    add_2018,
                    add_2017) %>% 
            mutate(billable = billable==1)) 

usethis::use_data(icd10cm_labels, name = icd10cm_labels)

rm(list = ls())





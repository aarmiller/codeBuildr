library(tidyverse)
library(codeBuildr)
library(haven)


rm(list = ls())

## Existincg numbers
load("/Volumes/AML/truven_mind_projects/antibiotic_risk_categories/antibiotics_groupings.RData")

tmp1 <- antibiotic_ndc_groups %>% 
  filter(name %in% c("vancomycin","fidaxomicin")) %>% 
  filter(roads == "Oral") %>% 
  select(ndcnum,name)

# updated redbook
redbook <- read_sas("/Volumes/Statepi_Marketscan/raw_data/truven/sas_files/20Jun2022/redbook.sas7bdat")

names(redbook) <- tolower(names(redbook))

tmp2 <- redbook %>% filter(str_detect(tolower(gennme),"fidaxomicin") | 
                             str_detect(tolower(prodnme),"fidaxomicin")) %>% 
  filter(roads == "Oral") %>% 
  select(ndcnum)

tmp3 <- redbook %>% filter(str_detect(tolower(gennme),"vancomycin") | 
                             str_detect(tolower(prodnme),"vancomycin")) %>% 
  filter(roads == "Oral") %>% 
  select(ndcnum)

tmp4 <- bind_rows(mutate(tmp2,name = "fidaxomicin"),
          mutate(tmp3,name = "vancomycin"))


bind_rows(tmp1,tmp4) %>% 
  distinct() %>% 
  select(group = name, ndc_code=ndcnum) %>% 
  write_csv("inst/extdata/rx_abx_cdi_treat.csv")






library(tidyverse)
library(codeBuildr)


redbook <- load_redbook()

new_cdi_abx <- redbook %>% 
  filter(THERCLS %in% c(4,6:12,16,17,18,20)) %>% 
  filter(!(ROADS %in% c("Urinary bladder",
                      "Vaginal",
                      "Irrigation",
                      "Topical application",
                      "Intratympanic",
                      "Otic",
                      "Ophthalmic",
                      "Inhalation")))

new_cdi_abx <- new_cdi_abx %>% 
  mutate(group = "all") %>% 
  select(group,ndc_code = NDCNUM)

write_csv(new_cdi_abx,"inst/extdata/rx_abx_cdi.csv")


# new_cdi_abx %>% 
#   count(THRCLDS)
# 
# 
# new_cdi_abx %>% 
#   count(THERCLS)
# 
# new_cdi_abx %>% 
#   count(THERDTL)
# 
# new_cdi_abx %>% 
#   count(THERDTL,THRDTDS)


# FILTER out ROADS


# Compare with old

# old_cdi_risk_codes <- load_rx_codes("abx_cdi_risk")
# 
# old_cdi_risk_codes <- tibble(NDCNUM=unique(unlist(old_cdi_risk_codes,use.names = F)))
# 
# # find codes exlcuded by new algorithm
# 
# excluded_codes <- old_cdi_risk_codes %>% 
#   anti_join(new_cdi_abx) 
# 
# new_cdi_abx %>% anti_join(old_cdi_risk_codes) %>% 
#   count(THERCLS)
# 
# excluded_codes_vec <- excluded_codes$NDCNUM
# 
# db <- src_sqlite("/Volumes/Statepi_Marketscan/databases/Truven/medication_dbs/all_ndc_counts.db")
# 
# excluded_counts <- db %>% 
#   tbl("all_ndc_counts") %>% 
#   filter(ndc_code %in% excluded_codes_vec) %>% 
#   collect(n=Inf) %>% 
#   group_by(ndc_code) %>% 
#   summarise(count = sum(count)) %>% 
#   collect(n=Inf) 
# 
# excluded_codes %>% 
#   filter(NDCNUM %in% excluded_counts$ndc_code) %>% 
#   inner_join(redbook) %>% 
#   select(NDCNUM,THRGRDS,THRCLDS,GENNME,ROADS)

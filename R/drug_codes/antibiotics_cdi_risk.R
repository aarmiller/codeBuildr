

# NEED TO UPDATE ALL OF THESE STEPS FROM THE POINT OF CREATION

# Load initial and expanded code sets
# load("/Volumes/AML/truven_data/rx/cdi_ndc_codes_w_group.RData")
# load("/Volumes/AML/truven_data/rx/cdi_ndc_codes_add_w_group.RData")

# Write code sets to package raw data
write_csv(antibiotic_drug_codes,"raw_data/drug_codes/cdi_ndc_codes_w_group.csv")
write_csv(antibiotic_drug_codes_add,"raw_data/drug_codes/cdi_ndc_codes_add_w_group.csv")

risk_cats <- read_csv("raw_data/drug_codes/generic_antibioitic_names_phil.csv")

antibiotic_drug_codes <- antibiotic_drug_codes %>%
  inner_join(risk_cats) %>%
  bind_rows(mutate(antibiotic_drug_codes_add,Risk="Low"))

antibiotic_cdi_risk <- antibiotic_drug_codes %>%
  inner_join(select(redbook,ndcnum,roads) %>%
               filter(roads %in% c("Injection","Intravenous","Oral","Intramuscular"))) %>%
  filter(Risk!="?") %>%
  mutate(high_risk_anti=ifelse(Risk=="High",1L,0L))

abx_cdi_risk <- antibiotic_cdi_risk %>%
  select(ndcnum,high_risk_anti) %>%
  group_by(ndcnum) %>%
  summarise(high_risk_anti=max(high_risk_anti)) %>%
  mutate(group = ifelse(high_risk_anti==1, "high_risk_abx","low_risk_abx")) %>%
  select(group,ndc_code=ndcnum) %>%
  distinct()

write_csv(abx_cdi_risk,"inst/extdata/rx_abx_cdi_risk.csv")

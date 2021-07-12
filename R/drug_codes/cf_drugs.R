
# build CF medications

trikafta <- c("51167033101")

cf_drug_list <- list(trikafta = trikafta)

cf_drug_data <- enframe(cf_drug_list, name = "group", value = "ndc_code") %>% 
  unnest(ndc_code)

write_csv(cf_drug_data,"inst/extdata/rx_cf_drugs.csv")

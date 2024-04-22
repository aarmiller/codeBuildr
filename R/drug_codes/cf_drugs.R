
# build CF medications

trikafta <- c("51167033101","51167010602","51167044501","51167044601")

symdeko <- c("51167011301","51167066101")

kalydeco <- c("51167020001","51167020002","51167030001","51167040001",
              "51167060001")

orkambi <- c("51167050002","51167070002","51167080901","51167090001")

# library(codeBuildr)

# cf_drug_codes <- codeBuildr::get_ndc_from_terms("ivacaftor")
# 
# cf_drug_codes %>% 
#   inner_join(rename(redbook, ndcnum=NDCNUM)) %>% 
#   select(ndcnum,GENNME,PRODNME)

cf_drug_list <- list(trikafta = trikafta,
                     symdeko = symdeko,
                     kalydeco = kalydeco,
                     orkambi = orkambi)

cf_drug_data <- enframe(cf_drug_list, name = "group", value = "ndc_code") %>% 
  unnest(ndc_code)

write_csv(cf_drug_data,"inst/extdata/rx_cf_drugs.csv")

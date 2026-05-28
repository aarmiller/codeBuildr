
# build inhaler

# tmp <- read_csv("/Volumes/Statepi_Diagnosis/projects/sepsis_revised10/pre_covid/data/all_inhaler_codes.csv")
# 
# cat(paste0("'",tmp$NDCNUM,"',"),sep="\n")

tmp %>% 
  select(group = PRODNME,ndc_code = NDCNUM) %>% 
  write_csv("inst/extdata/rx_inhalers.csv")

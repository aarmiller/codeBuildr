

ppi_names <- c("omeprazole","prilosec",
               "esomeprazole","nexium",
               "lansoprazole", "prevacid",
               "rabeprazole","aciphex",
               "pantoprazole","protonix",
               "dexlansoprazole","dexilant",
               "zegerid")


ppi_codes <- tibble(terms = ppi_names) %>%
  mutate(ndc_code = map(terms,codeBuildr::get_ndc_from_terms))

ppi_codes <- ppi_codes %>%
  mutate(ndc_code=map(ndc_code,~.$ndcnum)) %>%
  select(group = terms,ndc_code) %>%
  unnest(cols = c(ndc_code)) %>%
  distinct()

write_csv(ppi_codes,"inst/extdata/rx_ppi.csv")

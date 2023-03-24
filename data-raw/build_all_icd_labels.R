

labels <- bind_rows(select(icd::icd9cm_hierarchy,icd_codes=code,desc=long_desc) %>% 
                      mutate(icd_codes=as.character(icd_codes),
                             icd_version=9),
                    select(codeBuildr::icd10cm_labels,icd_codes=code,desc=long_desc) %>% 
                      mutate(icd_version=10)) %>% 
  as_tibble()

all_icd_labels <- labels %>% 
  rename(dx=icd_codes,
         dx_ver=icd_version) %>% 
  select(dx,dx_ver,desc)


usethis::use_data(all_icd_labels, name = all_icd_labels)

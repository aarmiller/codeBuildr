
#### Note this list needs to be refined with better names

common <- read_csv("/Volumes/AML/household_overdose/data/opioid_codes/in_common_opioids.csv")

from_aaron <- read_csv("/Volumes/AML/household_overdose/data/opioid_codes/extra_opioids_in_aaron.csv")

from_ryan <- read_csv("/Volumes/AML/household_overdose/data/opioid_codes/extra_opioids_in_ryan.csv")

 
opioid_codes <- bind_rows(mutate(common,group="common_list") %>% 
                            select(group,ndc_code=ndcnum),
                          mutate(from_aaron,group="extra_aaron_list") %>% 
                            select(group,ndc_code=ndcnum),
                          mutate(from_ryan,group="extra_ryan_list") %>% 
                            select(group,ndc_code=ndcnum))
          
write_csv(opioid_codes,"inst/extdata/rx_opioids.csv")


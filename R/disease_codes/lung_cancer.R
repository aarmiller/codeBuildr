## Codes for lung_cancer 


# See: Baldi I, Vicari P, Di Cuonzo D, Zanetti R, Pagano E, Rosato R, Sacerdote 
#      C, Segnan N, Merletti F, Ciccone G. A high positive predictive value 
#      algorithm using hospital administrative data identified incident cancer 
#      cases. J Clin Epidemiol. 2008 Apr;61(4):373-9. 
#      doi: 10.1016/j.jclinepi.2007.05.017. Epub 2007 Oct 22. PMID: 18313562.
    
# Description:
    
desc <- "Lung Cancer"
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("162")))
    
icd10_codes <- as.character(children_safe(c("C33","C34")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
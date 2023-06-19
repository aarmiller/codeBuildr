## Codes for skin_texture 

    
# Description:
    
desc <- "Changes in Skin Texture"
    
tokens <- c("changes in skin texture","skin texture","disorder of skin texture",
            "eschar","induration of skin","skin eschar","thickening of skin","blister",
            "bumps on skin","bumps on the skin", "thickening of the skin")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("7829","7828")))
    
icd10_codes <- as.character(children_safe(c("R234","R238")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
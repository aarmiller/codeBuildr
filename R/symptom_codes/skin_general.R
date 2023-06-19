## Codes for skin_general 

    
# Description:
    
desc <- "General Skin Conditions"
    
tokens <- c("changes in skin texture","skin texture","disorder of skin texture",
            "eschar","induration of skin","skin eschar","thickening of skin","blister",
            "bumps on skin","bumps on the skin","rash","skin eruption",'disturbance of skin',"abnormal skin sensitivity","abnormal skin sensitivity",
            "altered sensation of skin","anesthesia of skin","burning sensation of skin",
            "circumoral paresthesia","Dysesthesia","tingling sensation","hyperesthesia",
            "hyperesthesia (increased sensitivity)","hypoesthesia (reduced sensation)",
            "numbness and tingling of skin","numbness and tingling sensation of skin",
            "numbness of skin","paresthesia","pins and needles","prickling sensation",
            "prickling sensation of skin","sensation of burning of skin",
            "sensation of burning or prickling of skin","sensory disorder", 
            "burning or prickling sensation","skin sensation disturbance","tingling sensation",
            "blisters on the skin","crusts on the skin","skin crusts")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("782")))
    
icd10_codes <- as.character(children_safe(c("R20","R21","R22","R23")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
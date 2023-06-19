## Codes for endocarditis


# Description:

desc <- "Endocarditis"

tokens <- c("endocarditis","inflammation of the heart valve",
            "inflammation of heart valve")

# Diagnosis codes:

icd9_codes <- c("1363","4210","4211","4219","03642","09884","11281","11504",
                "11514","11594","99661","0932","7422",
                as.character(children(c("4249"))))

icd10_codes <- c(as.character(children(c("I33"))),
                 "J173","B59","I38","I39","A3951","A5483","B376","B394","B395",
                 "B399","T827","A3251","A5203","B3321")

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()

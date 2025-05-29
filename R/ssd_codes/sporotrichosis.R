## Codes for sporotrichosis 

    
# Description:
    
desc <- "sporotrichosis"
    
tokens <- c("sporotrichosis")
    
# Diagnosis codes:

# tmp <- readxl::read_xlsx("~/OneDrive - University of Iowa/delay_dx_projects/sporotrichosis/codes_from_phil/SSDsporotrichosis_ICD-9_Final.xlsx") %>% 
#   filter(`Include (Y/N)`=="Y") %>% 
#   select(dx = `Dx Code`) %>% 
#   left_join(codeBuildr::all_icd_labels)  
# 
# cat(paste0("'",tmp$dx,"',", " #",tmp$desc),sep="\n")
    
icd9_codes <- as.character(children_safe(c('68100', #Cellulitis and abscess of finger, unspecified
                                           '6824', #Cellulitis and abscess of hand, except fingers and thumb
                                           '6823', #Cellulitis and abscess of upper arm and forearm
                                           '6829', #Cellulitis and abscess of unspecified sites
                                           '68101', #Felon
                                           '7821', #Rash and other nonspecific skin eruption
                                           '6828', #Cellulitis and abscess of other specified sites
                                           '68110', #Cellulitis and abscess of toe, unspecified
                                           '6826', #Cellulitis and abscess of leg, except foot
                                           '68102', #Onychia and paronychia of finger
                                           '6959', #Unspecified erythematous condition
                                           '7856', #Enlargement of lymph nodes
                                           '6869', #Unspecified local infection of skin and subcutaneous tissue
                                           '6929', #Contact dermatitis and other eczema, unspecified cause
                                           '6926', #Contact dermatitis and other eczema due to plants [except food]
                                           '7295', #Pain in limb
                                           '2893', #Lymphadenitis, unspecified, except mesenteric
                                           '7099', #Unspecified disorder of skin and subcutaneous tissue
                                           '72671', #Achilles bursitis or tendinitis
                                           '72700', #Synovitis and tenosynovitis, unspecified
                                           '6868', #Other specified local infections of skin and subcutaneous tissue
                                           '6819', #Cellulitis and abscess of unspecified digit
                                           '9895', #Toxic effect of venom
                                           '7822', #Localized superficial swelling, mass, or lump
                                           '6827', #Cellulitis and abscess of foot, except toes
                                           '7296', #Residual foreign body in soft tissue
                                           '1369', #Unspecified infectious and parasitic diseases
                                           '71944', #Pain in joint, hand
                                           '72704', #Radial styloid tenosynovitis
                                           '72705', #Other tenosynovitis of hand and wrist
                                           '78079', #Other malaise and fatigue
                                           '69589', #Other specified erythematous conditions
                                           '72981', #Swelling of limb
                                           '7094', #Foreign body granuloma of skin and subcutaneous tissue
                                           '4572', #Lymphangitis
                                           '6861', #Pyogenic granuloma of skin and subcutaneous tissue
                                           '9146', #Superficial foreign body (splinter) of hand(s) except finger(s) alone, without major open wound and without mention of infection
                                           '6918', #Other atopic dermatitis and related conditions
                                           '6806', #Carbuncle and furuncle of leg, except foot
                                           '71958', #Stiffness of joint, not elsewhere classified, other specified sites
                                           '68601', #Pyoderma gangrenosum
                                           '68600', #Pyoderma, unspecified
                                           '2749', #Gout, unspecified
                                           '78060', #Fever, unspecified
                                           '6820', #Cellulitis and abscess of face
                                           '69289', #Contact dermatitis and other eczema due to other specified agents
                                           '881', #Open wound of elbow, forearm, and wrist
                                           '882', #Open wound of hand except finger(s) alone
                                           '883', #Open wound of finger(s)
                                           '891', #Open wound of knee, leg [except thigh], and ankle
                                           '892', #Open wound of foot except toe(s) alone
                                           '893' #Open wound of toe(s)
                                           )))

# tmp <- read_csv("~/OneDrive - University of Iowa/delay_dx_projects/sporotrichosis/codes_from_phil/SSDsporotrichosis_icd10Final.csv") %>% 
#   filter(`Include (Y/N)`=="Y") %>%
#   select(dx = `Dx Code`) %>%
#   left_join(codeBuildr::all_icd_labels)
# 
# cat(paste0("'",tmp$dx,"',", " #",tmp$desc),sep="\n")
    
icd10_codes <- as.character(children_safe(c('L03115', #Cellulitis of right lower limb
                                            'L0889', #Other specified local infections of the skin and subcutaneous tissue
                                            'L03116', #Cellulitis of left lower limb
                                            'L237', #Allergic contact dermatitis due to plants, except food
                                            'L02512', #Cutaneous abscess of left hand
                                            'R21', #Rash and other nonspecific skin eruption
                                            'M79641', #Pain in right hand
                                            'R2231', #Localized swelling, mass and lump, right upper limb
                                            'L03211', #Cellulitis of face
                                            'L03113', #Cellulitis of right upper limb
                                            'L03119', #Cellulitis of unspecified part of limb
                                            'L03011', #Cellulitis of right finger
                                            'I891', #Lymphangitis
                                            'L03012', #Cellulitis of left finger
                                            'L089', #Local infection of the skin and subcutaneous tissue, unspecified
                                            'L03019', #Cellulitis of unspecified finger
                                            'L02415', #Cutaneous abscess of right lower limb
                                            'L0291', #Cutaneous abscess, unspecified
                                            'L03032', #Cellulitis of left toe
                                            'R2232', #Localized swelling, mass and lump, left upper limb
                                            'L989', #Disorder of the skin and subcutaneous tissue, unspecified
                                            'M7989', #Other specified soft tissue disorders
                                            'R509', #Fever, unspecified
                                            'M2550', #Pain in unspecified joint
                                            'L0390', #Cellulitis, unspecified
                                            'M79644', #Pain in right finger(s)
                                            'M795', #Residual foreign body in soft tissue
                                            'R229', #Localized swelling, mass and lump, unspecified
                                            'I889', #Nonspecific lymphadenitis, unspecified
                                            'M79645', #Pain in left finger(s)
                                            'L03114', #Cellulitis of left upper limb
                                            'L239', #Allergic contact dermatitis, unspecified cause
                                            'M79642', #Pain in left hand
                                            'R5383', #Other fatigue
                                            'L259', #Unspecified contact dermatitis, unspecified cause
                                            'L309', #Dermatitis, unspecified
                                            'L02414', #Cutaneous abscess of left upper limb
                                            'M65842', #Other synovitis and tenosynovitis, left hand
                                            'L308', #Other specified dermatitis
                                            'M79662', #Pain in left lower leg
                                            'L02511', #Cutaneous abscess of right hand
                                            'M65841', #Other synovitis and tenosynovitis, right hand
                                            'M79604', #Pain in right leg
                                            'M659', #Synovitis and tenosynovitis, unspecified
                                            'M79605', #Pain in left leg
                                            'M109', #Gout, unspecified
                                            'L02413', #Cutaneous abscess of right upper limb
                                            'R5381', #Other malaise
                                            'L03031', #Cellulitis of right toe
                                            'L538', #Other specified erythematous conditions
                                            'S61', #Open wound of wrist, hand and fingers
                                            'S91', #Open wound of ankle, foot and toes
                                            'S81', #Open wound of knee and lower leg
                                            'M766', #Achilles tendinitis
                                            'T6394XA', #Toxic effect of contact with unspecified venomous animal, undetermined, initial encounter
                                            'B999', #Unspecified infectious disease
                                            'M654', #Radial styloid tenosynovitis [de Quervain]
                                            'L923', #Foreign body granuloma of the skin and subcutaneous tissue
                                            'L980', #Pyogenic granuloma
                                            'S60559A', #Superficial foreign body of unspecified hand, initial encounter
                                            'L88', #Pyoderma gangrenosum
                                            'L080', #Pyoderma
                                            'L03211', #Cellulitis of face
                                            'M79661', #Pain in right lower leg
                                            'L02414' #Cutaneous abscess of left upper limb
                                            )))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
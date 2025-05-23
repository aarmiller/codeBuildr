## Codes for diabetes10 

    
# Description:
    
desc <- "Diabetes (ICD-10)"
    
tokens <- c("Diabetes ICD-10")
    
# Diagnosis codes:

# tmp <- readxl::read_excel("~/Downloads/section111validicd10-jan2025_0.xlsx")
# 
# tmp <- tmp %>%
#   filter(str_starts(CODE, "E10") |
#            str_starts(CODE, "E11") |
#            str_starts(CODE, "E12") |
#            str_starts(CODE, "E13") |
#            str_starts(CODE, "E14")) %>%
#   select(CODE)
# 
# cat(paste0("'",tmp$CODE,"'"),sep = ", \n")
    
icd9_codes <- as.character(children_safe(c()))
    
icd10_codes <- as.character(children_safe(c("E10",
                                            "E11",
                                            "E12",
                                            "E13",
                                            "E14",
                                            'E1010', 
                                            'E1011', 
                                            'E1021', 
                                            'E1022', 
                                            'E1029', 
                                            'E10311', 
                                            'E10319', 
                                            'E10321', 
                                            'E103211', 
                                            'E103212', 
                                            'E103213', 
                                            'E103219', 
                                            'E10329', 
                                            'E103291', 
                                            'E103292', 
                                            'E103293', 
                                            'E103299', 
                                            'E10331', 
                                            'E103311', 
                                            'E103312', 
                                            'E103313', 
                                            'E103319', 
                                            'E10339', 
                                            'E103391', 
                                            'E103392', 
                                            'E103393', 
                                            'E103399', 
                                            'E10341', 
                                            'E103411', 
                                            'E103412', 
                                            'E103413', 
                                            'E103419', 
                                            'E10349', 
                                            'E103491', 
                                            'E103492', 
                                            'E103493', 
                                            'E103499', 
                                            'E10351', 
                                            'E103511', 
                                            'E103512', 
                                            'E103513', 
                                            'E103519', 
                                            'E10352', 
                                            'E103521', 
                                            'E103522', 
                                            'E103523', 
                                            'E103529', 
                                            'E10353', 
                                            'E103531', 
                                            'E103532', 
                                            'E103533', 
                                            'E103539', 
                                            'E10354', 
                                            'E103541', 
                                            'E103542', 
                                            'E103543', 
                                            'E103549', 
                                            'E10355', 
                                            'E103551', 
                                            'E103552', 
                                            'E103553', 
                                            'E103559', 
                                            'E10359', 
                                            'E103591', 
                                            'E103592', 
                                            'E103593', 
                                            'E103599', 
                                            'E1036', 
                                            'E1037', 
                                            'E1037X1', 
                                            'E1037X2', 
                                            'E1037X3', 
                                            'E1037X9', 
                                            'E1039', 
                                            'E1040', 
                                            'E1041', 
                                            'E1042', 
                                            'E1043', 
                                            'E1044', 
                                            'E1049', 
                                            'E1051', 
                                            'E1052', 
                                            'E1059', 
                                            'E10610', 
                                            'E10618', 
                                            'E10620', 
                                            'E10621', 
                                            'E10622', 
                                            'E10628', 
                                            'E10630', 
                                            'E10638', 
                                            'E10641', 
                                            'E10649', 
                                            'E1065', 
                                            'E1069', 
                                            'E108', 
                                            'E109', 
                                            'E10A0', 
                                            'E10A1', 
                                            'E10A2', 
                                            'E1100', 
                                            'E1101', 
                                            'E1110', 
                                            'E1111', 
                                            'E1121', 
                                            'E1122', 
                                            'E1129', 
                                            'E11311', 
                                            'E11319', 
                                            'E11321', 
                                            'E113211', 
                                            'E113212', 
                                            'E113213', 
                                            'E113219', 
                                            'E11329', 
                                            'E113291', 
                                            'E113292', 
                                            'E113293', 
                                            'E113299', 
                                            'E11331', 
                                            'E113311', 
                                            'E113312', 
                                            'E113313', 
                                            'E113319', 
                                            'E11339', 
                                            'E113391', 
                                            'E113392', 
                                            'E113393', 
                                            'E113399', 
                                            'E11341', 
                                            'E113411', 
                                            'E113412', 
                                            'E113413', 
                                            'E113419', 
                                            'E11349', 
                                            'E113491', 
                                            'E113492', 
                                            'E113493', 
                                            'E113499', 
                                            'E11351', 
                                            'E113511', 
                                            'E113512', 
                                            'E113513', 
                                            'E113519', 
                                            'E113521', 
                                            'E113522', 
                                            'E113523', 
                                            'E113529', 
                                            'E113531', 
                                            'E113532', 
                                            'E113533', 
                                            'E113539', 
                                            'E113541', 
                                            'E113542', 
                                            'E113543', 
                                            'E113549', 
                                            'E113551', 
                                            'E113552', 
                                            'E113553', 
                                            'E113559', 
                                            'E11359', 
                                            'E113591', 
                                            'E113592', 
                                            'E113593', 
                                            'E113599', 
                                            'E1136', 
                                            'E1137X1', 
                                            'E1137X2', 
                                            'E1137X3', 
                                            'E1137X9', 
                                            'E1139', 
                                            'E1140', 
                                            'E1141', 
                                            'E1142', 
                                            'E1143', 
                                            'E1144', 
                                            'E1149', 
                                            'E1151', 
                                            'E1152', 
                                            'E1159', 
                                            'E11610', 
                                            'E11618', 
                                            'E11620', 
                                            'E11621', 
                                            'E11622', 
                                            'E11628', 
                                            'E11630', 
                                            'E11638', 
                                            'E11641', 
                                            'E11649', 
                                            'E1165', 
                                            'E1169', 
                                            'E118', 
                                            'E119', 
                                            'E1300', 
                                            'E1301', 
                                            'E1310', 
                                            'E1311', 
                                            'E1321', 
                                            'E1322', 
                                            'E1329', 
                                            'E13311', 
                                            'E13319', 
                                            'E13321', 
                                            'E133211', 
                                            'E133212', 
                                            'E133213', 
                                            'E133219', 
                                            'E13329', 
                                            'E133291', 
                                            'E133292', 
                                            'E133293', 
                                            'E133299', 
                                            'E13331', 
                                            'E133311', 
                                            'E133312', 
                                            'E133313', 
                                            'E133319', 
                                            'E13339', 
                                            'E133391', 
                                            'E133392', 
                                            'E133393', 
                                            'E133399', 
                                            'E13341', 
                                            'E133411', 
                                            'E133412', 
                                            'E133413', 
                                            'E133419', 
                                            'E13349', 
                                            'E133491', 
                                            'E133492', 
                                            'E133493', 
                                            'E133499', 
                                            'E13351', 
                                            'E133511', 
                                            'E133512', 
                                            'E133513', 
                                            'E133519', 
                                            'E133521', 
                                            'E133522', 
                                            'E133523', 
                                            'E133529', 
                                            'E133531', 
                                            'E133532', 
                                            'E133533', 
                                            'E133539', 
                                            'E133541', 
                                            'E133542', 
                                            'E133543', 
                                            'E133549', 
                                            'E133551', 
                                            'E133552', 
                                            'E133553', 
                                            'E133559', 
                                            'E13359', 
                                            'E133591', 
                                            'E133592', 
                                            'E133593', 
                                            'E133599', 
                                            'E1336', 
                                            'E1337X1', 
                                            'E1337X2', 
                                            'E1337X3', 
                                            'E1337X9', 
                                            'E1339', 
                                            'E1340', 
                                            'E1341', 
                                            'E1342', 
                                            'E1343', 
                                            'E1344', 
                                            'E1349', 
                                            'E1351', 
                                            'E1352', 
                                            'E1359', 
                                            'E13610', 
                                            'E13618', 
                                            'E13620', 
                                            'E13621', 
                                            'E13622', 
                                            'E13628', 
                                            'E13630', 
                                            'E13638', 
                                            'E13641', 
                                            'E13649', 
                                            'E1365', 
                                            'E1369', 
                                            'E138', 
                                            'E139')))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
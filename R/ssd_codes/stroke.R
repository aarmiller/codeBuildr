## Codes for stroke 

    
# Description:
    
desc <- "Stroke"
    
# Diagnosis codes:

# tmp <- read_csv("~/Documents/GitHub/delay_dx/params/ssd_codes/stroke2_new/ssd_codes.csv")
# 
# tmp2 <- tmp %>%
#   filter(icd_version == 9) %>%
#   distinct(code = icd_codes) %>%
#   left_join(mutate(icd::icd9cm_hierarchy,code=as.character(code))) %>%
#   distinct(code,desc=short_desc)
# 
# cat(paste0("'",tmp2$code,"',", " #",tmp2$desc),sep="\n")
# 
# tmp2 <- tmp %>%
#   filter(icd_version == 10) %>%
#   distinct(code = icd_codes) %>%
#   left_join(mutate(icd::icd10cm2019,code=as.character(code))) %>%
#   distinct(code,desc=short_desc)
# 
# cat(paste0("'",tmp2$code,"',", " #",tmp2$desc),sep="\n")

    
icd9_codes <- as.character(c('38600', #Meniere's disease NOS
                             '38601', #Actv Meniere,cochlvestib
                             '38602', #Active Meniere, cochlear
                             '38603', #Actv Meniere, vestibular
                             '38604', #Inactive Meniere's dis
                             '38610', #Peripheral vertigo NOS
                             '38611', #Benign parxysmal vertigo
                             '38612', #Vestibular neuronitis
                             '38619', #Peripheral vertigo NEC
                             '3862', #Central origin vertigo
                             '38630', #Labyrinthitis NOS
                             '38631', #Serous labyrinthitis
                             '38632', #Circumscri labyrinthitis
                             '38633', #Suppurativ labyrinthitis
                             '38634', #Toxic labyrinthitis
                             '38635', #Viral labyrinthitis
                             '38640', #Labyrinthine fistula NOS
                             '38641', #Round window fistula
                             '38642', #Oval window fistula
                             '38643', #Semicircul canal fistula
                             '38648', #Labyrinth fistula comb
                             '38650', #Labyrinthine dysfunc NOS
                             '38651', #Hypract labyrinth unilat
                             '38652', #Hyperact labyrinth bilat
                             '38653', #Hypoact labyrinth unilat
                             '38654', #Hypoact labyrinth bilat
                             '38655', #Loss labyrn react unilat
                             '38656', #Loss labyrin react bilat
                             '38658', #Labyrinthine dysfunc NEC
                             '3868', #Disorders labyrinth NEC
                             '3869', #Vertiginous synd NOS
                             '7804', #Dizziness and giddiness
                             '38000', #Perichondritis pinna NOS
                             '38001', #Ac perichondritis pinna
                             '38002', #Chr perichondritis pinna
                             '38003', #Chondritis of pinna
                             '38010', #Infec otitis externa NOS
                             '38011', #Acute infection of pinna
                             '38012', #Acute swimmers' ear
                             '38013', #Ac infect extern ear NEC
                             '38014', #Malignant otitis externa
                             '38015', #Chr mycot otitis externa
                             '38016', #Chr inf otit externa NEC
                             '38021', #Cholesteatoma extern ear
                             '38022', #Acute otitis externa NEC
                             '38023', #Chr otitis externa NEC
                             '38030', #Disorder of pinna NOS
                             '38031', #Hematoma auricle/pinna
                             '38032', #Acq deform auricle/pinna
                             '38039', #Noninfect dis pinna NEC
                             '3804', #Impacted cerumen
                             '38050', #Acq stenos ear canal NOS
                             '38051', #Stenosis ear d/t trauma
                             '38052', #Stenosis ear d/t surgery
                             '38053', #Stenosis ear d/t inflam
                             '38081', #Exostosis ext ear canal
                             '38089', #Dis external ear NEC
                             '3809', #Dis external ear NOS
                             '400', #NA
                             '38401', #Bullous myringitis
                             '38409', #Acute myringitis NEC
                             '3841', #Chronic myringitis
                             '38530', #Cholesteatoma NOS
                             '38531', #Cholesteatoma of attic
                             '38532', #Cholesteatoma middle ear
                             '38533', #Cholestma mid ear/mstoid
                             '38535', #Diffuse cholesteatosis
                             '38582', #Cholesterin granuloma
                             '38583', #Foreign body middle ear
                             '38589', #Dis mid ear/mastoid NEC
                             '3859', #Dis mid ear/mastoid NOS
                             '38800', #Degen/vascul dis ear NOS
                             '38801', #Presbyacusis
                             '38802', #Trans ischemic deafness
                             '38810', #Noise effect-ear/NOS
                             '38811', #Acoustic trauma
                             '38812', #Hearing loss d/t noise
                             '3882', #Sudden hearing loss NOS
                             '38830', #Tinnitus NOS
                             '38831', #Subjective tinnitus
                             '38832', #Objective tinnitus
                             '38840', #Abn auditory percept NOS
                             '38841', #Diplacusis
                             '38842', #Hyperacusis
                             '38843', #Impairm auditory discrim
                             '38844', #Auditory recruitment
                             '38845', #Acq auditory process dis
                             '3885', #Acoustic nerve disorders
                             '38860', #Otorrhea NOS
                             '38861', #Cerebrosp fluid otorrhea
                             '38869', #Otorrhea NEC
                             '38870', #Otalgia NOS
                             '38871', #Otogenic pain
                             '38872', #Referred pain of ear
                             '3888', #Disorders of ear NEC
                             '3889', #Disorder of ear NOS
                             '38900', #Conduct hearing loss NOS
                             '38901', #Conduc hear loss ext ear
                             '38902', #Conduct hear loss tympan
                             '38903', #Conduc hear loss mid ear
                             '38904', #Cond hear loss inner ear
                             '38905', #Condctv hear loss,unilat
                             '38906', #Condctv hear loss, bilat
                             '38908', #Cond hear loss comb type
                             '38910', #Sensorneur hear loss NOS
                             '38911', #Sensry hearng loss,bilat
                             '38912', #Neural hearng loss,bilat
                             '38913', #Neural hear loss, unilat
                             '38914', #Central hearing loss
                             '38915', #Sensorneur hear loss uni
                             '38916', #Sensoneur hear loss asym
                             '38917', #Sensory hear loss,unilat
                             '38918', #Sensonrl hear loss,bilat
                             '3892', #Mixed conductive and sensorineural hearing loss
                             '38920', #Mixed hearing loss NOS
                             '38921', #Mixed hearing loss,unilt
                             '38922', #Mixed hearing loss,bilat
                             '3897', #Deaf, nonspeaking NEC
                             '3898', #Hearing loss NEC
                             '3899', #Hearing loss NOS
                             'V412', #Problems with hearing
                             'V413', #Ear problems NEC
                             'V4985', #Dual sensory impairment
                             'V532', #Adjustment hearing aid
                             'V721', #Examination of ears and hearing
                             'V7211', #Hearing exam-fail screen
                             'V7212', #Hearing conservatn/trtmt
                             'V7219', #Exam ears & hearing NEC
                             '33900', #Cluster headache syn NOS
                             '33901', #Episodc cluster headache
                             '33902', #Chronic cluster headache
                             '33903', #Episdc paroxyml hemicran
                             '33904', #Chr paroxysml hemicrania
                             '3460', #Migraine with aura
                             '34600', #Mgrn w aura wo ntrc mgrn
                             '34601', #Mgrn w aura w ntrc mgrn
                             '34602', #Mgrn w aur wo ntrc mgrn
                             '34603', #Mgrn w aura w ntrc mgrn
                             '3461', #Migraine without aura
                             '34610', #Mgrn wo aura wo ntrc mgr
                             '34611', #Mgrn wo aura w ntrc mgrn
                             '34612', #Mgrn wo aura wo ntrc mgr
                             '34613', #Mgrn wo aura w ntrc mgrn
                             '3462', #Variants of migraine, not elsewhere classified
                             '34620', #Vrnt mgrn wo ntr mgr NEC
                             '34621', #Vrnt mgrn w ntrc mgr NEC
                             '34622', #Var mgr NEC wo ntc mgr
                             '34623', #Var mgrn NEC w ntrc mgr
                             '34630', #Hmplg mgr wo ntrc wo st
                             '34631', #Hmplg mgrn w ntrc wo st
                             '34632', #Hemplg mgr wo ntrc w st
                             '34633', #Hmplg mgrn w ntrc w st
                             '34640', #Menst mgr wo ntrc wo st
                             '34641', #Menstl mgrn w ntrc wo st
                             '34642', #Menstl mgr wo ntrc w st
                             '34643', #Menstl mgrn w ntrc w st
                             '34650', #Prst aura wo inf/ntr/st
                             '34651', #Prs ara w ntr wo inf/st
                             '34652', #Prs ara wo inf/ntr w st
                             '34653', #Prs ara wo inf w ntr/st
                             '34670', #Ch mgr wo ar wo nt wo st
                             '34671', #Ch mgr wo ara w nt wo st
                             '34672', #Ch mgr wo ara wo nt w st
                             '34673', #Ch mgr wo ara w ntr w st
                             '3468', #Other forms of migraine
                             '34680', #Othr migrne wo ntrc mgrn
                             '34681', #Othr migrne w ntrc mgrne
                             '34682', #Oth mgr wo ntrc w st mgr
                             '34683', #Oth mgr w ntrc w st mgr
                             '3469', #Migraine, unspecified
                             '34690', #Migrne unsp wo ntrc mgrn
                             '34691', #Mgrn unsp w ntrc mgr std
                             '34692', #Mgr NOS wo ntrc w st mgr
                             '34693', #Mgrn NOS w ntrc w st mgr
                             '33905', #Shrt lst uni nral hdache
                             '33909', #Trigem autonmc cephl NEC
                             '33910', #Tension headache NOS
                             '33911', #Episdic tension headache
                             '33912', #Chronic tension headache
                             '33920', #Post-trauma headache NOS
                             '33921', #Ac post-trauma headache
                             '33922', #Chr post-trauma headache
                             '3393', #Drug induce headache NEC
                             '33941', #Hemicrania continua
                             '33942', #New daily pers headache
                             '33943', #Prim thnderclap headache
                             '33944', #Comp headache synd NEC
                             '33981', #Hypnic headache
                             '33982', #Headache w sex activity
                             '33983', #Primary cough headache
                             '33984', #Prim exertion headache
                             '33985', #Prim stabbing headache
                             '33989', #Headache syndrome NEC
                             '7840' #Headache
                             ))
    
icd10_codes <- as.character((c('H61009', #Unspecified perichondritis of external ear, unspecified ear
                               'H61019', #Acute perichondritis of external ear, unspecified ear
                               'H61029', #Chronic perichondritis of external ear, unspecified ear
                               'H61039', #Chondritis of external ear, unspecified ear
                               'H6000', #Abscess of external ear, unspecified ear
                               'H6010', #Cellulitis of external ear, unspecified ear
                               'H60319', #Diffuse otitis externa, unspecified ear
                               'H60329', #Hemorrhagic otitis externa, unspecified ear
                               'H60399', #Other infective otitis externa, unspecified ear
                               'H6193', #Disorder of external ear, unspecified, bilateral
                               'H60339', #Swimmer's ear, unspecified ear
                               'H6240', #Otitis externa in oth diseases classd elswhr, unsp ear
                               'H6020', #Malignant otitis externa, unspecified ear
                               'H628X1', #Oth disorders of r ext ear in diseases classd elswhr
                               'H6040', #Cholesteatoma of external ear, unspecified ear
                               'H60509', #Unsp acute noninfective otitis externa, unspecified ear
                               'H60519', #Acute actinic otitis externa, unspecified ear
                               'H60529', #Acute chemical otitis externa, unspecified ear
                               'H60539', #Acute contact otitis externa, unspecified ear
                               'H60549', #Acute eczematoid otitis externa, unspecified ear
                               'H60559', #Acute reactive otitis externa, unspecified ear
                               'H60599', #Other noninfective acute otitis externa, unspecified ear
                               'H6060', #Unspecified chronic otitis externa, unspecified ear
                               'H608X1', #Other otitis externa, right ear
                               'H6090', #Unspecified otitis externa, unspecified ear
                               'H61109', #Unspecified noninfective disorders of pinna, unspecified ear
                               'H61129', #Hematoma of pinna, unspecified ear
                               'H61119', #Acquired deformity of pinna, unspecified ear
                               'H61199', #Noninfective disorders of pinna, unspecified ear
                               'H6123', #Impacted cerumen, bilateral
                               'H61309', #Acquired stenosis of external ear canal, unsp, unsp ear
                               'H61399', #Other acquired stenosis of external ear canal, unsp ear
                               'H61319', #Acquired stenosis of ext ear canal sec to trauma, unsp ear
                               'H61329', #Acq stenos of ext ear canal sec to inflam & infct, unsp ear
                               'H61819', #Exostosis of external canal, unspecified ear
                               'H61899', #Other specified disorders of external ear, unspecified ear
                               'H73019', #Bullous myringitis, unspecified ear
                               'H73099', #Other acute myringitis, unspecified ear
                               'H7310', #Chronic myringitis, unspecified ear
                               'H7193', #Unspecified cholesteatoma, bilateral
                               'H7103', #Cholesteatoma of attic, bilateral
                               'H7113', #Cholesteatoma of tympanum, bilateral
                               'H7440', #Polyp of middle ear, unspecified ear
                               'H7123', #Cholesteatoma of mastoid, bilateral
                               'H7133', #Diffuse cholesteatosis, bilateral
                               'H748X9', #Oth disrd of middle ear and mastoid, unspecified ear
                               'H7490', #Unsp disorder of middle ear and mastoid, unspecified ear
                               'H8109', #Meniere's disease, unspecified ear
                               'H81399', #Other peripheral vertigo, unspecified ear
                               'H8113', #Benign paroxysmal vertigo, bilateral
                               'H8123', #Vestibular neuronitis, bilateral
                               'H81319', #Aural vertigo, unspecified ear
                               'H8149', #Vertigo of central origin, unspecified ear
                               'H8309', #Labyrinthitis, unspecified ear
                               'H8319', #Labyrinthine fistula, unspecified ear
                               'H832X9', #Labyrinthine dysfunction, unspecified ear
                               'H818X9', #Other disorders of vestibular function, unspecified ear
                               'H829', #Vertiginous syndromes in diseases classd elswhr, unsp ear
                               'H838X9', #Other specified diseases of inner ear, unspecified ear
                               'H8193', #Unspecified disorder of vestibular function, bilateral
                               'H8393', #Unspecified disease of inner ear, bilateral
                               'H93099', #Unsp degenerative and vascular disorders of unspecified ear
                               'H9113', #Presbycusis, bilateral
                               'H93019', #Transient ischemic deafness, unspecified ear
                               'H833X9', #Noise effects on inner ear, unspecified ear
                               'H918X9', #Other specified hearing loss, unspecified ear
                               'H9123', #Sudden idiopathic hearing loss, bilateral
                               'H9319', #Tinnitus, unspecified ear
                               'H93249', #Temporary auditory threshold shift, unspecified ear
                               'H93299', #Other abnormal auditory perceptions, unspecified ear
                               'H93229', #Diplacusis, unspecified ear
                               'H93239', #Hyperacusis, unspecified ear
                               'H93219', #Auditory recruitment, unspecified ear
                               'H933X9', #Disorders of unspecified acoustic nerve
                               'H9210', #Otorrhea, unspecified ear
                               'G960', #Cerebrospinal fluid leak
                               'H9220', #Otorrhagia, unspecified ear
                               'H9209', #Otalgia, unspecified ear
                               'H938X9', #Other specified disorders of ear, unspecified ear
                               'H9393', #Unspecified disorder of ear, bilateral
                               'H902', #Conductive hearing loss, unspecified
                               'H9011', #Condctv hear loss, uni, right ear, w unrestr hear cntra side
                               'H9012', #Condctv hear loss, uni, left ear, w unrestr hear cntra side
                               'H900', #Conductive hearing loss, bilateral
                               'H905', #Unspecified sensorineural hearing loss
                               'H903', #Sensorineural hearing loss, bilateral
                               'H9041', #Snsrnrl hear loss, uni, right ear, w unrestr hear cntra side
                               'H9042', #Snsrnrl hear loss, uni, left ear, w unrestr hear cntra side
                               'H908', #Mixed conductive and sensorineural hearing loss, unspecified
                               'H9071', #Mix cndct/snrl hear loss,uni,r ear,w unrestr hear cntra side
                               'H9072', #Mix cndct/snrl hear loss,uni,l ear,w unrestr hear cntra side
                               'H906', #Mixed conductive and sensorineural hearing loss, bilateral
                               'H913', #Deaf nonspeaking, not elsewhere classified
                               'H9190', #Unspecified hearing loss, unspecified ear
                               'R42', #Dizziness and giddiness
                               'Z974', #Presence of external hearing-aid
                               'H9390', #Unspecified disorder of ear, unspecified ear
                               'Z7382', #Dual sensory impairment
                               'Z461', #Encounter for fitting and adjustment of hearing aid
                               'Z01110', #Encounter for hearing exam following failed hear screening
                               'Z0112', #Encounter for hearing conservation and treatment
                               'Z0110', #Encounter for exam of ears and hearing w/o abnormal findings
                               'Z01118', #Encntr for exam of ears and hearing w oth abnormal findings
                               'G44009', #Cluster headache syndrome, unspecified, not intractable
                               'G44019', #Episodic cluster headache, not intractable
                               'G44029', #Chronic cluster headache, not intractable
                               'G44039', #Episodic paroxysmal hemicrania, not intractable
                               'G44049', #Chronic paroxysmal hemicrania, not intractable
                               'G44059', #Shrt lst unil nerlgif hdache w cnjnct inject/tear, not ntrct
                               'G44099', #Other trigeminal autonomic cephalgias (TAC), not intractable
                               'G44209', #Tension-type headache, unspecified, not intractable
                               'G44219', #Episodic tension-type headache, not intractable
                               'G44221', #Chronic tension-type headache, intractable
                               'G44229', #Chronic tension-type headache, not intractable
                               'G44309', #Post-traumatic headache, unspecified, not intractable
                               'G44319', #Acute post-traumatic headache, not intractable
                               'G44329', #Chronic post-traumatic headache, not intractable
                               'G4441', #Drug-induced headache, not elsewhere classified, intractable
                               'G4451', #Hemicrania continua
                               'G4452', #New daily persistent headache (NDPH)
                               'G4453', #Primary thunderclap headache
                               'G4459', #Other complicated headache syndrome
                               'G4481', #Hypnic headache
                               'G4482', #Headache associated with sexual activity
                               'G4483', #Primary cough headache
                               'G4484', #Primary exertional headache
                               'G4485', #Primary stabbing headache
                               'G4489', #Other headache syndrome
                               'G43109', #Migraine with aura, not intractable, w/o status migrainosus
                               'G43119', #Migraine with aura, intractable, without status migrainosus
                               'G43101', #Migraine with aura, not intractable, with status migrainosus
                               'G43111', #Migraine with aura, intractable, with status migrainosus
                               'G43009', #Migraine w/o aura, not intractable, w/o status migrainosus
                               'G43019', #Migraine w/o aura, intractable, without status migrainosus
                               'G43001', #Migraine w/o aura, not intractable, with status migrainosus
                               'G43011', #Migraine without aura, intractable, with status migrainosus
                               'G43809', #Other migraine, not intractable, without status migrainosus
                               'G43A0', #Cyclical vomiting, not intractable
                               'G43B0', #Ophthalmoplegic migraine, not intractable
                               'G43C0', #Periodic headache syndromes in chld/adlt, not intractable
                               'G43D0', #Abdominal migraine, not intractable
                               'G43819', #Other migraine, intractable, without status migrainosus
                               'G43A1', #Cyclical vomiting, intractable
                               'G43B1', #Ophthalmoplegic migraine, intractable
                               'G43C1', #Periodic headache syndromes in child or adult, intractable
                               'G43D1', #Abdominal migraine, intractable
                               'G43801', #Other migraine, not intractable, with status migrainosus
                               'G43811', #Other migraine, intractable, with status migrainosus
                               'G43409', #Hemiplegic migraine, not intractable, w/o status migrainosus
                               'G43419', #Hemiplegic migraine, intractable, without status migrainosus
                               'G43401', #Hemiplegic migraine, not intractable, w status migrainosus
                               'G43411', #Hemiplegic migraine, intractable, with status migrainosus
                               'G43829', #Menstrual migraine, not intractable, w/o status migrainosus
                               'G43839', #Menstrual migraine, intractable, without status migrainosus
                               'G43821', #Menstrual migraine, not intractable, with status migrainosus
                               'G43831', #Menstrual migraine, intractable, with status migrainosus
                               'G43509', #Perst migrn aura w/o cereb infrc, not ntrct, w/o stat migr
                               'G43519', #Perst migraine aura w/o cerebral infrc, ntrct, w/o stat migr
                               'G43501', #Perst migraine aura w/o cereb infrc, not ntrct, w stat migr
                               'G43511', #Perst migraine aura w/o cerebral infrc, ntrct, w stat migr
                               'G43709', #Chronic migraine w/o aura, not intractable, w/o stat migr
                               'G43719', #Chronic migraine w/o aura, intractable, w/o stat migr
                               'G43701', #Chronic migraine w/o aura, not intractable, w stat migr
                               'G43711', #Chronic migraine w/o aura, intractable, w status migrainosus
                               'G43909', #Migraine, unsp, not intractable, without status migrainosus
                               'G43919', #Migraine, unsp, intractable, without status migrainosus
                               'G43901', #Migraine, unsp, not intractable, with status migrainosus
                               'G43911', #Migraine, unspecified, intractable, with status migrainosus
                               'G441', #Vascular headache, not elsewhere classified
                               'R51' #Headache
                               )))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
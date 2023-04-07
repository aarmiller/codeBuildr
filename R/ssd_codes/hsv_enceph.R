## Codes for hsv_enceph 

    
# Description:
    
desc <- "HSV Encephalitis"
    
# Diagnosis codes:

# tmp <- read_csv("~/Documents/GitHub/delay_dx/params/ssd_codes/hsv_enceph/ssd_codes.csv")

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


    
icd9_codes <- as.character((c('33900', #Cluster headache syn NOS
                              '33901', #Episodc cluster headache
                              '33902', #Chronic cluster headache
                              '33903', #Episdc paroxyml hemicran
                              '33904', #Chr paroxysml hemicrania
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
                              '7840', #Headache
                              '38600', #Meniere's disease NOS
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
                              '38400', #Acute myringitis NOS
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
                              '293', #Transient mental disorders due to conditions classified elsewhere
                              '2930', #Delirium d/t other cond
                              '2931', #Subacute delirium
                              '2938', #Other specified transient mental disorders due to conditions classified elsewhere
                              '29381', #Psy dis w delus oth dis
                              '29382', #Psy dis w halluc oth dis
                              '29383', #Mood disorder other dis
                              '29384', #Anxiety disorder oth dis
                              '29389', #Transient mental dis NEC
                              '2939', #Transient mental dis NOS
                              '296', #Episodic mood disorders
                              '2960', #Bipolar I disorder, single manic episode
                              '29600', #Bipol I single manic NOS
                              '29601', #Bipol I single manc-mild
                              '29602', #Bipol I single manic-mod
                              '29603', #Bipol I sing-sev w/o psy
                              '29604', #Bipo I sin man-sev w psy
                              '29605', #Bipol I sing man rem NOS
                              '29606', #Bipol I single manic rem
                              '2961', #Manic disorder, recurrent episode
                              '29610', #Recur manic dis-unspec
                              '29611', #Recur manic dis-mild
                              '29612', #Recur manic dis-mod
                              '29613', #Recur manic dis-severe
                              '29614', #Recur manic-sev w psycho
                              '29615', #Recur manic-part remiss
                              '29616', #Recur manic-full remiss
                              '2962', #Major depressive disorder, single episode
                              '29620', #Depress psychosis-unspec
                              '29621', #Depress psychosis-mild
                              '29622', #Depressive psychosis-mod
                              '29623', #Depress psychosis-severe
                              '29624', #Depr psychos-sev w psych
                              '29625', #Depr psychos-part remiss
                              '29626', #Depr psychos-full remiss
                              '2963', #Major depressive disorder, recurrent episode
                              '29630', #Recurr depr psychos-unsp
                              '29631', #Recurr depr psychos-mild
                              '29632', #Recurr depr psychos-mod
                              '29633', #Recur depr psych-severe
                              '29634', #Rec depr psych-psychotic
                              '29635', #Recur depr psyc-part rem
                              '29636', #Recur depr psyc-full rem
                              '2964', #Bipolar I disorder, most recent episode (or current) manic
                              '29640', #Bipol I currnt manic NOS
                              '29641', #Bipol I curnt manic-mild
                              '29642', #Bipol I currnt manic-mod
                              '29643', #Bipol I manc-sev w/o psy
                              '29644', #Bipol I manic-sev w psy
                              '29645', #Bipol I cur man part rem
                              '29646', #Bipol I cur man full rem
                              '2965', #Bipolar I disorder, most recent episode (or current) depressed
                              '29650', #Bipol I cur depres NOS
                              '29651', #Bipol I cur depress-mild
                              '29652', #Bipol I cur depress-mod
                              '29653', #Bipol I curr dep w/o psy
                              '29654', #Bipol I currnt dep w psy
                              '29655', #Bipol I cur dep rem NOS
                              '29656', #Bipol I currnt dep remis
                              '2966', #Bipolar I disorder, most recent episode (or current) mixed
                              '29660', #Bipol I currnt mixed NOS
                              '29661', #Bipol I currnt mix-mild
                              '29662', #Bipol I currnt mixed-mod
                              '29663', #Bipol I cur mix w/o psy
                              '29664', #Bipol I cur mixed w psy
                              '29665', #Bipol I cur mix-part rem
                              '29666', #Bipol I cur mixed remiss
                              '2967', #Bipolor I current NOS
                              '2968', #Other and unspecified bipolar disorders
                              '29680', #Bipolar disorder NOS
                              '29681', #Atypical manic disorder
                              '29682', #Atypical depressive dis
                              '29689', #Bipolar disorder NEC
                              '2969', #Other and unspecified episodic mood disorder
                              '29690', #Episodic mood disord NOS
                              '29699', #Episodic mood disord NEC
                              '297', #Delusional disorders
                              '2970', #Paranoid state, simple
                              '2971', #Delusional disorder
                              '2972', #Paraphrenia
                              '2973', #Shared psychotic disord
                              '2978', #Paranoid states NEC
                              '2979', #Paranoid state NOS
                              '298', #Other nonorganic psychoses
                              '2980', #React depress psychosis
                              '2981', #Excitativ type psychosis
                              '2982', #Reactive confusion
                              '2983', #Acute paranoid reaction
                              '2984', #Psychogen paranoid psych
                              '2988', #React psychosis NEC/NOS
                              '2989', #Psychosis NOS
                              '3101', #Personality chg oth dis
                              '7800', #Alteration of consciousness
                              '78001', #Coma
                              '78002', #Trans alter awareness
                              '78003', #Persistent vegtv state
                              '78009', #Other alter consciousnes
                              '78093', #Memory loss
                              '78097', #Altered mental status
                              'NoDx', #NA
                              '7818', #Neurologic neglect syndr
                              '797', #Senility w/o psychosis
                              'V6289', #Psychological stress NEC
                              '79951', #Attn/concentrate deficit
                              '79952', #Cog communicate deficit
                              '79953', #Visuospatial deficit
                              '79954', #Psychomotor deficit
                              '79955', #Frontal lobe deficit
                              '79959', #Cognition sign/sympt NEC
                              '78099', #Other general symptoms
                              '7801', #Hallucinations
                              '36816', #Psychophysic visual dist
                              '79989', #Ill-define condition NEC
                              '79921', #Nervousness
                              '3079', #Special symptom NEC/NOS
                              '3009', #Nonpsychotic disord NOS
                              '79925', #Demoralization & apathy
                              '79922', #Irritability
                              '3089', #Acute stress react NOS
                              '78095', #Excs cry chld,adol,adult
                              'V6285', #Homicidal ideation
                              'V6284', #Suicidal ideation
                              '79924', #Emotional lability
                              '79923', #Impulsiveness
                              '79929', #Emotional state sym NEC
                              'V4039', #Oth spc behavior problem
                              '345', #Epilepsy and recurrent seizures
                              '3450', #Generalized nonconvulsive epilepsy
                              '34500', #Gen noncv ep w/o intr ep
                              '34501', #Gen nonconv ep w intr ep
                              '3451', #Generalized convulsive epilepsy
                              '34510', #Gen cnv epil w/o intr ep
                              '34511', #Gen cnv epil w intr epil
                              '3452', #Petit mal status
                              '3453', #Grand mal status
                              '3454', #Localization-related (focal) (partial) epilepsy and epileptic syndromes with complex partial seizures
                              '34540', #Psymotr epil w/o int epi
                              '34541', #Psymotr epil w intr epil
                              '3455', #Localization-related (focal) (partial) epilepsy and epileptic syndromes with simple partial seizures
                              '34550', #Part epil w/o intr epil
                              '34551', #Part epil w intr epil
                              '3456', #Infantile spasms
                              '34560', #Inf spasm w/o intr epil
                              '34561', #Inf spasm w intract epil
                              '3457', #Epilepsia partialis continua
                              '34570', #Epil par cont w/o int ep
                              '34571', #Epil par cont w intr epi
                              '3458', #Other forms of epilepsy and recurrent seizures
                              '34580', #Epilep NEC w/o intr epil
                              '34581', #Epilepsy NEC w intr epil
                              '3459', #Epilepsy, unspecified
                              '34590', #Epilep NOS w/o intr epil
                              '34591', #Epilepsy NOS w intr epil
                              '7806', #Fever and other physiologic disturbances of temperature regulation
                              '78060', #Fever NOS
                              '78061' #Fever in other diseases
                              )))
    
icd10_codes <- as.character((c('G43001', #Migraine w/o aura, not intractable, with status migrainosus
                               'G43009', #Migraine w/o aura, not intractable, w/o status migrainosus
                               'G43011', #Migraine without aura, intractable, with status migrainosus
                               'G43019', #Migraine w/o aura, intractable, without status migrainosus
                               'G43101', #Migraine with aura, not intractable, with status migrainosus
                               'G43109', #Migraine with aura, not intractable, w/o status migrainosus
                               'G43111', #Migraine with aura, intractable, with status migrainosus
                               'G43119', #Migraine with aura, intractable, without status migrainosus
                               'G43401', #Hemiplegic migraine, not intractable, w status migrainosus
                               'G43409', #Hemiplegic migraine, not intractable, w/o status migrainosus
                               'G43411', #Hemiplegic migraine, intractable, with status migrainosus
                               'G43419', #Hemiplegic migraine, intractable, without status migrainosus
                               'G43501', #Perst migraine aura w/o cereb infrc, not ntrct, w stat migr
                               'G43509', #Perst migrn aura w/o cereb infrc, not ntrct, w/o stat migr
                               'G43511', #Perst migraine aura w/o cerebral infrc, ntrct, w stat migr
                               'G43519', #Perst migraine aura w/o cerebral infrc, ntrct, w/o stat migr
                               'G43701', #Chronic migraine w/o aura, not intractable, w stat migr
                               'G43709', #Chronic migraine w/o aura, not intractable, w/o stat migr
                               'G43711', #Chronic migraine w/o aura, intractable, w status migrainosus
                               'G43719', #Chronic migraine w/o aura, intractable, w/o stat migr
                               'G43801', #Other migraine, not intractable, with status migrainosus
                               'G43809', #Other migraine, not intractable, without status migrainosus
                               'G43811', #Other migraine, intractable, with status migrainosus
                               'G43819', #Other migraine, intractable, without status migrainosus
                               'G43821', #Menstrual migraine, not intractable, with status migrainosus
                               'G43829', #Menstrual migraine, not intractable, w/o status migrainosus
                               'G43831', #Menstrual migraine, intractable, with status migrainosus
                               'G43839', #Menstrual migraine, intractable, without status migrainosus
                               'G43901', #Migraine, unsp, not intractable, with status migrainosus
                               'G43909', #Migraine, unsp, not intractable, without status migrainosus
                               'G43911', #Migraine, unspecified, intractable, with status migrainosus
                               'G43919', #Migraine, unsp, intractable, without status migrainosus
                               'G43A0', #Cyclical vomiting, not intractable
                               'G43A1', #Cyclical vomiting, intractable
                               'G43B0', #Ophthalmoplegic migraine, not intractable
                               'G43B1', #Ophthalmoplegic migraine, intractable
                               'G43C0', #Periodic headache syndromes in chld/adlt, not intractable
                               'G43C1', #Periodic headache syndromes in child or adult, intractable
                               'G43D0', #Abdominal migraine, not intractable
                               'G43D1', #Abdominal migraine, intractable
                               'G44001', #Cluster headache syndrome, unspecified, intractable
                               'G44009', #Cluster headache syndrome, unspecified, not intractable
                               'G44011', #Episodic cluster headache, intractable
                               'G44019', #Episodic cluster headache, not intractable
                               'G44021', #Chronic cluster headache, intractable
                               'G44029', #Chronic cluster headache, not intractable
                               'G44031', #Episodic paroxysmal hemicrania, intractable
                               'G44039', #Episodic paroxysmal hemicrania, not intractable
                               'G44041', #Chronic paroxysmal hemicrania, intractable
                               'G44049', #Chronic paroxysmal hemicrania, not intractable
                               'G44051', #Shrt lst unil nerlgif hdache w cnjnct inject/tear, ntrct
                               'G44059', #Shrt lst unil nerlgif hdache w cnjnct inject/tear, not ntrct
                               'G44091', #Other trigeminal autonomic cephalgias (TAC), intractable
                               'G44099', #Other trigeminal autonomic cephalgias (TAC), not intractable
                               'G441', #Vascular headache, not elsewhere classified
                               'G44201', #Tension-type headache, unspecified, intractable
                               'G44209', #Tension-type headache, unspecified, not intractable
                               'G44211', #Episodic tension-type headache, intractable
                               'G44219', #Episodic tension-type headache, not intractable
                               'G44221', #Chronic tension-type headache, intractable
                               'G44229', #Chronic tension-type headache, not intractable
                               'G44301', #Post-traumatic headache, unspecified, intractable
                               'G44309', #Post-traumatic headache, unspecified, not intractable
                               'G44311', #Acute post-traumatic headache, intractable
                               'G44319', #Acute post-traumatic headache, not intractable
                               'G44321', #Chronic post-traumatic headache, intractable
                               'G44329', #Chronic post-traumatic headache, not intractable
                               'G4440', #Drug-induced headache, NEC, not intractable
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
                               'R51', #Headache
                               'H8101', #Meniere's disease, right ear
                               'H8102', #Meniere's disease, left ear
                               'H8103', #Meniere's disease, bilateral
                               'H8109', #Meniere's disease, unspecified ear
                               'H8110', #Benign paroxysmal vertigo, unspecified ear
                               'H8111', #Benign paroxysmal vertigo, right ear
                               'H8112', #Benign paroxysmal vertigo, left ear
                               'H8113', #Benign paroxysmal vertigo, bilateral
                               'H8120', #Vestibular neuronitis, unspecified ear
                               'H8121', #Vestibular neuronitis, right ear
                               'H8122', #Vestibular neuronitis, left ear
                               'H8123', #Vestibular neuronitis, bilateral
                               'H81311', #Aural vertigo, right ear
                               'H81312', #Aural vertigo, left ear
                               'H81313', #Aural vertigo, bilateral
                               'H81319', #Aural vertigo, unspecified ear
                               'H81391', #Other peripheral vertigo, right ear
                               'H81392', #Other peripheral vertigo, left ear
                               'H81393', #Other peripheral vertigo, bilateral
                               'H81399', #Other peripheral vertigo, unspecified ear
                               'H8141', #Vertigo of central origin, right ear
                               'H8142', #Vertigo of central origin, left ear
                               'H8143', #Vertigo of central origin, bilateral
                               'H8149', #Vertigo of central origin, unspecified ear
                               'H818X1', #Other disorders of vestibular function, right ear
                               'H818X2', #Other disorders of vestibular function, left ear
                               'H818X3', #Other disorders of vestibular function, bilateral
                               'H818X9', #Other disorders of vestibular function, unspecified ear
                               'H8190', #Unspecified disorder of vestibular function, unspecified ear
                               'H8191', #Unspecified disorder of vestibular function, right ear
                               'H8192', #Unspecified disorder of vestibular function, left ear
                               'H8193', #Unspecified disorder of vestibular function, bilateral
                               'H821', #Vertiginous syndromes in diseases classd elswhr, right ear
                               'H822', #Vertiginous syndromes in diseases classd elswhr, left ear
                               'H823', #Vertiginous syndromes in diseases classd elswhr, bilateral
                               'H829', #Vertiginous syndromes in diseases classd elswhr, unsp ear
                               'H8301', #Labyrinthitis, right ear
                               'H8302', #Labyrinthitis, left ear
                               'H8303', #Labyrinthitis, bilateral
                               'H8309', #Labyrinthitis, unspecified ear
                               'H8311', #Labyrinthine fistula, right ear
                               'H8312', #Labyrinthine fistula, left ear
                               'H8313', #Labyrinthine fistula, bilateral
                               'H8319', #Labyrinthine fistula, unspecified ear
                               'H832X1', #Labyrinthine dysfunction, right ear
                               'H832X2', #Labyrinthine dysfunction, left ear
                               'H832X3', #Labyrinthine dysfunction, bilateral
                               'H832X9', #Labyrinthine dysfunction, unspecified ear
                               'H838X1', #Other specified diseases of right inner ear
                               'H838X2', #Other specified diseases of left inner ear
                               'H838X3', #Other specified diseases of inner ear, bilateral
                               'H838X9', #Other specified diseases of inner ear, unspecified ear
                               'H8390', #Unspecified disease of inner ear, unspecified ear
                               'H8391', #Unspecified disease of right inner ear
                               'H8392', #Unspecified disease of left inner ear
                               'H8393', #Unspecified disease of inner ear, bilateral
                               'R42', #Dizziness and giddiness
                               'H6000', #Abscess of external ear, unspecified ear
                               'H6001', #Abscess of right external ear
                               'H6002', #Abscess of left external ear
                               'H6003', #Abscess of external ear, bilateral
                               'H6010', #Cellulitis of external ear, unspecified ear
                               'H6011', #Cellulitis of right external ear
                               'H6012', #Cellulitis of left external ear
                               'H6013', #Cellulitis of external ear, bilateral
                               'H6020', #Malignant otitis externa, unspecified ear
                               'H6021', #Malignant otitis externa, right ear
                               'H6022', #Malignant otitis externa, left ear
                               'H6023', #Malignant otitis externa, bilateral
                               'H60311', #Diffuse otitis externa, right ear
                               'H60312', #Diffuse otitis externa, left ear
                               'H60313', #Diffuse otitis externa, bilateral
                               'H60319', #Diffuse otitis externa, unspecified ear
                               'H60321', #Hemorrhagic otitis externa, right ear
                               'H60322', #Hemorrhagic otitis externa, left ear
                               'H60323', #Hemorrhagic otitis externa, bilateral
                               'H60329', #Hemorrhagic otitis externa, unspecified ear
                               'H60331', #Swimmer's ear, right ear
                               'H60332', #Swimmer's ear, left ear
                               'H60333', #Swimmer's ear, bilateral
                               'H60339', #Swimmer's ear, unspecified ear
                               'H60391', #Other infective otitis externa, right ear
                               'H60392', #Other infective otitis externa, left ear
                               'H60393', #Other infective otitis externa, bilateral
                               'H60399', #Other infective otitis externa, unspecified ear
                               'H6040', #Cholesteatoma of external ear, unspecified ear
                               'H6041', #Cholesteatoma of right external ear
                               'H6042', #Cholesteatoma of left external ear
                               'H6043', #Cholesteatoma of external ear, bilateral
                               'H60501', #Unspecified acute noninfective otitis externa, right ear
                               'H60502', #Unspecified acute noninfective otitis externa, left ear
                               'H60503', #Unspecified acute noninfective otitis externa, bilateral
                               'H60509', #Unsp acute noninfective otitis externa, unspecified ear
                               'H60511', #Acute actinic otitis externa, right ear
                               'H60512', #Acute actinic otitis externa, left ear
                               'H60513', #Acute actinic otitis externa, bilateral
                               'H60519', #Acute actinic otitis externa, unspecified ear
                               'H60521', #Acute chemical otitis externa, right ear
                               'H60522', #Acute chemical otitis externa, left ear
                               'H60523', #Acute chemical otitis externa, bilateral
                               'H60529', #Acute chemical otitis externa, unspecified ear
                               'H60531', #Acute contact otitis externa, right ear
                               'H60532', #Acute contact otitis externa, left ear
                               'H60533', #Acute contact otitis externa, bilateral
                               'H60539', #Acute contact otitis externa, unspecified ear
                               'H60541', #Acute eczematoid otitis externa, right ear
                               'H60542', #Acute eczematoid otitis externa, left ear
                               'H60543', #Acute eczematoid otitis externa, bilateral
                               'H60549', #Acute eczematoid otitis externa, unspecified ear
                               'H60551', #Acute reactive otitis externa, right ear
                               'H60552', #Acute reactive otitis externa, left ear
                               'H60553', #Acute reactive otitis externa, bilateral
                               'H60559', #Acute reactive otitis externa, unspecified ear
                               'H60591', #Other noninfective acute otitis externa, right ear
                               'H60592', #Other noninfective acute otitis externa, left ear
                               'H60593', #Other noninfective acute otitis externa, bilateral
                               'H60599', #Other noninfective acute otitis externa, unspecified ear
                               'H6060', #Unspecified chronic otitis externa, unspecified ear
                               'H6061', #Unspecified chronic otitis externa, right ear
                               'H6062', #Unspecified chronic otitis externa, left ear
                               'H6063', #Unspecified chronic otitis externa, bilateral
                               'H608X1', #Other otitis externa, right ear
                               'H608X2', #Other otitis externa, left ear
                               'H608X3', #Other otitis externa, bilateral
                               'H608X9', #Other otitis externa, unspecified ear
                               'H6090', #Unspecified otitis externa, unspecified ear
                               'H6091', #Unspecified otitis externa, right ear
                               'H6092', #Unspecified otitis externa, left ear
                               'H6093', #Unspecified otitis externa, bilateral
                               'H61001', #Unspecified perichondritis of right external ear
                               'H61002', #Unspecified perichondritis of left external ear
                               'H61003', #Unspecified perichondritis of external ear, bilateral
                               'H61009', #Unspecified perichondritis of external ear, unspecified ear
                               'H61011', #Acute perichondritis of right external ear
                               'H61012', #Acute perichondritis of left external ear
                               'H61013', #Acute perichondritis of external ear, bilateral
                               'H61019', #Acute perichondritis of external ear, unspecified ear
                               'H61021', #Chronic perichondritis of right external ear
                               'H61022', #Chronic perichondritis of left external ear
                               'H61023', #Chronic perichondritis of external ear, bilateral
                               'H61029', #Chronic perichondritis of external ear, unspecified ear
                               'H61031', #Chondritis of right external ear
                               'H61032', #Chondritis of left external ear
                               'H61033', #Chondritis of external ear, bilateral
                               'H61039', #Chondritis of external ear, unspecified ear
                               'H61101', #Unspecified noninfective disorders of pinna, right ear
                               'H61102', #Unspecified noninfective disorders of pinna, left ear
                               'H61103', #Unspecified noninfective disorders of pinna, bilateral
                               'H61109', #Unspecified noninfective disorders of pinna, unspecified ear
                               'H61111', #Acquired deformity of pinna, right ear
                               'H61112', #Acquired deformity of pinna, left ear
                               'H61113', #Acquired deformity of pinna, bilateral
                               'H61119', #Acquired deformity of pinna, unspecified ear
                               'H61121', #Hematoma of pinna, right ear
                               'H61122', #Hematoma of pinna, left ear
                               'H61123', #Hematoma of pinna, bilateral
                               'H61129', #Hematoma of pinna, unspecified ear
                               'H61191', #Noninfective disorders of pinna, right ear
                               'H61192', #Noninfective disorders of pinna, left ear
                               'H61193', #Noninfective disorders of pinna, bilateral
                               'H61199', #Noninfective disorders of pinna, unspecified ear
                               'H6120', #Impacted cerumen, unspecified ear
                               'H6121', #Impacted cerumen, right ear
                               'H6122', #Impacted cerumen, left ear
                               'H6123', #Impacted cerumen, bilateral
                               'H61301', #Acquired stenosis of right external ear canal, unspecified
                               'H61302', #Acquired stenosis of left external ear canal, unspecified
                               'H61303', #Acquired stenosis of external ear canal, unsp, bilateral
                               'H61309', #Acquired stenosis of external ear canal, unsp, unsp ear
                               'H61311', #Acquired stenosis of r ext ear canal secondary to trauma
                               'H61312', #Acquired stenosis of l ext ear canal secondary to trauma
                               'H61313', #Acquired stenosis of ext ear canal secondary to trauma, bi
                               'H61319', #Acquired stenosis of ext ear canal sec to trauma, unsp ear
                               'H61321', #Acquired stenosis of r ext ear canal sec to inflam and infct
                               'H61322', #Acquired stenosis of l ext ear canal sec to inflam and infct
                               'H61323', #Acq stenosis of ext ear canal sec to inflam and infct, bi
                               'H61329', #Acq stenos of ext ear canal sec to inflam & infct, unsp ear
                               'H61391', #Other acquired stenosis of right external ear canal
                               'H61392', #Other acquired stenosis of left external ear canal
                               'H61393', #Other acquired stenosis of external ear canal, bilateral
                               'H61399', #Other acquired stenosis of external ear canal, unsp ear
                               'H61811', #Exostosis of right external canal
                               'H61812', #Exostosis of left external canal
                               'H61813', #Exostosis of external canal, bilateral
                               'H61819', #Exostosis of external canal, unspecified ear
                               'H61891', #Other specified disorders of right external ear
                               'H61892', #Other specified disorders of left external ear
                               'H61893', #Other specified disorders of external ear, bilateral
                               'H61899', #Other specified disorders of external ear, unspecified ear
                               'H6190', #Disorder of external ear, unspecified, unspecified ear
                               'H6191', #Disorder of right external ear, unspecified
                               'H6192', #Disorder of left external ear, unspecified
                               'H6193', #Disorder of external ear, unspecified, bilateral
                               'H6240', #Otitis externa in oth diseases classd elswhr, unsp ear
                               'H6241', #Otitis externa in oth diseases classd elswhr, right ear
                               'H6242', #Otitis externa in oth diseases classd elswhr, left ear
                               'H6243', #Otitis externa in oth diseases classd elswhr, bilateral
                               'H628X1', #Oth disorders of r ext ear in diseases classd elswhr
                               'H628X2', #Oth disorders of left external ear in diseases classd elswhr
                               'H628X3', #Oth disorders of ext ear in diseases classd elswhr, bi
                               'H628X9', #Oth disorders of ext ear in diseases classd elswhr, unsp ear
                               'H7100', #Cholesteatoma of attic, unspecified ear
                               'H7101', #Cholesteatoma of attic, right ear
                               'H7102', #Cholesteatoma of attic, left ear
                               'H7103', #Cholesteatoma of attic, bilateral
                               'H7110', #Cholesteatoma of tympanum, unspecified ear
                               'H7111', #Cholesteatoma of tympanum, right ear
                               'H7112', #Cholesteatoma of tympanum, left ear
                               'H7113', #Cholesteatoma of tympanum, bilateral
                               'H7120', #Cholesteatoma of mastoid, unspecified ear
                               'H7121', #Cholesteatoma of mastoid, right ear
                               'H7122', #Cholesteatoma of mastoid, left ear
                               'H7123', #Cholesteatoma of mastoid, bilateral
                               'H7130', #Diffuse cholesteatosis, unspecified ear
                               'H7131', #Diffuse cholesteatosis, right ear
                               'H7132', #Diffuse cholesteatosis, left ear
                               'H7133', #Diffuse cholesteatosis, bilateral
                               'H7190', #Unspecified cholesteatoma, unspecified ear
                               'H7191', #Unspecified cholesteatoma, right ear
                               'H7192', #Unspecified cholesteatoma, left ear
                               'H7193', #Unspecified cholesteatoma, bilateral
                               'H73001', #Acute myringitis, right ear
                               'H73002', #Acute myringitis, left ear
                               'H73003', #Acute myringitis, bilateral
                               'H73009', #Acute myringitis, unspecified ear
                               'H73011', #Bullous myringitis, right ear
                               'H73012', #Bullous myringitis, left ear
                               'H73013', #Bullous myringitis, bilateral
                               'H73019', #Bullous myringitis, unspecified ear
                               'H73091', #Other acute myringitis, right ear
                               'H73092', #Other acute myringitis, left ear
                               'H73093', #Other acute myringitis, bilateral
                               'H73099', #Other acute myringitis, unspecified ear
                               'H7310', #Chronic myringitis, unspecified ear
                               'H7311', #Chronic myringitis, right ear
                               'H7312', #Chronic myringitis, left ear
                               'H7313', #Chronic myringitis, bilateral
                               'H7320', #Unspecified myringitis, unspecified ear
                               'H7321', #Unspecified myringitis, right ear
                               'H7322', #Unspecified myringitis, left ear
                               'H7323', #Unspecified myringitis, bilateral
                               'H7440', #Polyp of middle ear, unspecified ear
                               'H7441', #Polyp of right middle ear
                               'H7442', #Polyp of left middle ear
                               'H7443', #Polyp of middle ear, bilateral
                               'H748X1', #Other specified disorders of right middle ear and mastoid
                               'H748X2', #Other specified disorders of left middle ear and mastoid
                               'H748X3', #Oth disrd of middle ear and mastoid, bilateral
                               'H748X9', #Oth disrd of middle ear and mastoid, unspecified ear
                               'H7490', #Unsp disorder of middle ear and mastoid, unspecified ear
                               'H7491', #Unspecified disorder of right middle ear and mastoid
                               'H7492', #Unspecified disorder of left middle ear and mastoid
                               'H7493', #Unspecified disorder of middle ear and mastoid, bilateral
                               'H833X1', #Noise effects on right inner ear
                               'H833X2', #Noise effects on left inner ear
                               'H833X3', #Noise effects on inner ear, bilateral
                               'H833X9', #Noise effects on inner ear, unspecified ear
                               'H900', #Conductive hearing loss, bilateral
                               'H9011', #Condctv hear loss, uni, right ear, w unrestr hear cntra side
                               'H9012', #Condctv hear loss, uni, left ear, w unrestr hear cntra side
                               'H902', #Conductive hearing loss, unspecified
                               'H903', #Sensorineural hearing loss, bilateral
                               'H9041', #Snsrnrl hear loss, uni, right ear, w unrestr hear cntra side
                               'H9042', #Snsrnrl hear loss, uni, left ear, w unrestr hear cntra side
                               'H905', #Unspecified sensorineural hearing loss
                               'H906', #Mixed conductive and sensorineural hearing loss, bilateral
                               'H9071', #Mix cndct/snrl hear loss,uni,r ear,w unrestr hear cntra side
                               'H9072', #Mix cndct/snrl hear loss,uni,l ear,w unrestr hear cntra side
                               'H908', #Mixed conductive and sensorineural hearing loss, unspecified
                               'H90A11', #Condctv hear loss, uni, r ear with rstrcd hear cntra side
                               'H90A12', #Condctv hear loss, uni, left ear with rstrcd hear cntra side
                               'H90A21', #Snsrnrl hear loss, uni, r ear, with rstrcd hear cntra side
                               'H90A22', #Snsrnrl hear loss, uni, l ear, with rstrcd hear cntra side
                               'H90A31', #Mix cndct/snrl hear loss,uni,r ear w rstrcd hear cntra side
                               'H90A32', #Mix cndct/snrl hear loss,uni,l ear w rstrcd hear cntra side
                               'H9101', #Ototoxic hearing loss, right ear
                               'H9102', #Ototoxic hearing loss, left ear
                               'H9103', #Ototoxic hearing loss, bilateral
                               'H9109', #Ototoxic hearing loss, unspecified ear
                               'H9110', #Presbycusis, unspecified ear
                               'H9111', #Presbycusis, right ear
                               'H9112', #Presbycusis, left ear
                               'H9113', #Presbycusis, bilateral
                               'H9120', #Sudden idiopathic hearing loss, unspecified ear
                               'H9121', #Sudden idiopathic hearing loss, right ear
                               'H9122', #Sudden idiopathic hearing loss, left ear
                               'H9123', #Sudden idiopathic hearing loss, bilateral
                               'H913', #Deaf nonspeaking, not elsewhere classified
                               'H918X1', #Other specified hearing loss, right ear
                               'H918X2', #Other specified hearing loss, left ear
                               'H918X3', #Other specified hearing loss, bilateral
                               'H918X9', #Other specified hearing loss, unspecified ear
                               'H9190', #Unspecified hearing loss, unspecified ear
                               'H9191', #Unspecified hearing loss, right ear
                               'H9192', #Unspecified hearing loss, left ear
                               'H9193', #Unspecified hearing loss, bilateral
                               'H9201', #Otalgia, right ear
                               'H9202', #Otalgia, left ear
                               'H9203', #Otalgia, bilateral
                               'H9209', #Otalgia, unspecified ear
                               'H9210', #Otorrhea, unspecified ear
                               'H9211', #Otorrhea, right ear
                               'H9212', #Otorrhea, left ear
                               'H9213', #Otorrhea, bilateral
                               'H9220', #Otorrhagia, unspecified ear
                               'H9221', #Otorrhagia, right ear
                               'H9222', #Otorrhagia, left ear
                               'H9223', #Otorrhagia, bilateral
                               'H93011', #Transient ischemic deafness, right ear
                               'H93012', #Transient ischemic deafness, left ear
                               'H93013', #Transient ischemic deafness, bilateral
                               'H93019', #Transient ischemic deafness, unspecified ear
                               'H93091', #Unspecified degenerative and vascular disorders of right ear
                               'H93092', #Unspecified degenerative and vascular disorders of left ear
                               'H93093', #Unsp degenerative and vascular disorders of ear, bilateral
                               'H93099', #Unsp degenerative and vascular disorders of unspecified ear
                               'H9311', #Tinnitus, right ear
                               'H9312', #Tinnitus, left ear
                               'H9313', #Tinnitus, bilateral
                               'H9319', #Tinnitus, unspecified ear
                               'H93211', #Auditory recruitment, right ear
                               'H93212', #Auditory recruitment, left ear
                               'H93213', #Auditory recruitment, bilateral
                               'H93219', #Auditory recruitment, unspecified ear
                               'H93221', #Diplacusis, right ear
                               'H93222', #Diplacusis, left ear
                               'H93223', #Diplacusis, bilateral
                               'H93229', #Diplacusis, unspecified ear
                               'H93231', #Hyperacusis, right ear
                               'H93232', #Hyperacusis, left ear
                               'H93233', #Hyperacusis, bilateral
                               'H93239', #Hyperacusis, unspecified ear
                               'H93241', #Temporary auditory threshold shift, right ear
                               'H93242', #Temporary auditory threshold shift, left ear
                               'H93243', #Temporary auditory threshold shift, bilateral
                               'H93249', #Temporary auditory threshold shift, unspecified ear
                               'H9325', #Central auditory processing disorder
                               'H93291', #Other abnormal auditory perceptions, right ear
                               'H93292', #Other abnormal auditory perceptions, left ear
                               'H93293', #Other abnormal auditory perceptions, bilateral
                               'H93299', #Other abnormal auditory perceptions, unspecified ear
                               'H933X1', #Disorders of right acoustic nerve
                               'H933X2', #Disorders of left acoustic nerve
                               'H933X3', #Disorders of bilateral acoustic nerves
                               'H933X9', #Disorders of unspecified acoustic nerve
                               'H938X1', #Other specified disorders of right ear
                               'H938X2', #Other specified disorders of left ear
                               'H938X3', #Other specified disorders of ear, bilateral
                               'H938X9', #Other specified disorders of ear, unspecified ear
                               'H9390', #Unspecified disorder of ear, unspecified ear
                               'H9391', #Unspecified disorder of right ear
                               'H9392', #Unspecified disorder of left ear
                               'H9393', #Unspecified disorder of ear, bilateral
                               'H93A1', #Pulsatile tinnitus, right ear
                               'H93A2', #Pulsatile tinnitus, left ear
                               'H93A3', #Pulsatile tinnitus, bilateral
                               'H93A9', #Pulsatile tinnitus, unspecified ear
                               'H9400', #Acustc neuritis in infec/parastc dis classd elswhr, unsp ear
                               'H9401', #Acustc neuritis in infec/parastc dis classd elswhr, r ear
                               'H9402', #Acustc neuritis in infec/parastc dis classd elswhr, left ear
                               'H9403', #Acustc neuritis in infec/parastc diseases classd elswhr, bi
                               'H9480', #Oth disrd of ear in diseases classified elsewhere, unsp ear
                               'H9481', #Oth disrd of right ear in diseases classified elsewhere
                               'H9482', #Oth disrd of left ear in diseases classified elsewhere
                               'H9483', #Oth disrd of ear in diseases classified elsewhere, bilateral
                               'Z461', #Encounter for fitting and adjustment of hearing aid
                               'Z7382', #Dual sensory impairment
                               'Z9620', #Presence of otological and audiological implant, unspecified
                               'Z9621', #Cochlear implant status
                               'Z9622', #Myringotomy tube(s) status
                               'Z9629', #Presence of other otological and audiological implants
                               'Z974', #Presence of external hearing-aid
                               'R40', #Somnolence, stupor and coma
                               'R400', #Somnolence
                               'R401', #Stupor
                               'R402', #Coma
                               'R4020', #Unspecified coma
                               'R4021', #Coma scale, eyes open
                               'R40211', #Coma scale, eyes open, never
                               'R402110', #Coma scale, eyes open, never, unspecified time
                               'R402111', #Coma scale, eyes open, never, in the field
                               'R402112', #Coma scale, eyes open, never, EMR
                               'R402113', #Coma scale, eyes open, never, at hospital admission
                               'R402114', #Coma scale, eyes open, never, 24+hrs
                               'R40212', #Coma scale, eyes open, to pain
                               'R402120', #Coma scale, eyes open, to pain, unspecified time
                               'R402121', #Coma scale, eyes open, to pain, in the field
                               'R402122', #Coma scale, eyes open, to pain, EMR
                               'R402123', #Coma scale, eyes open, to pain, at hospital admission
                               'R402124', #Coma scale, eyes open, to pain, 24+hrs
                               'R40213', #Coma scale, eyes open, to sound
                               'R402130', #Coma scale, eyes open, to sound, unspecified time
                               'R402131', #Coma scale, eyes open, to sound, in the field
                               'R402132', #Coma scale, eyes open, to sound, EMR
                               'R402133', #Coma scale, eyes open, to sound, at hospital admission
                               'R402134', #Coma scale, eyes open, to sound, 24+hrs
                               'R40214', #Coma scale, eyes open, spontaneous
                               'R402140', #Coma scale, eyes open, spontaneous, unspecified time
                               'R402141', #Coma scale, eyes open, spontaneous, in the field
                               'R402142', #Coma scale, eyes open, spontaneous, EMR
                               'R402143', #Coma scale, eyes open, spontaneous, at hospital admission
                               'R402144', #Coma scale, eyes open, spontaneous, 24+hrs
                               'R4022', #Coma scale, best verbal response
                               'R40221', #Coma scale, best verbal response, none
                               'R402210', #Coma scale, best verbal response, none, unspecified time
                               'R402211', #Coma scale, best verbal response, none, in the field
                               'R402212', #Coma scale, best verbal response, none, EMR
                               'R402213', #Coma scale, best verbal response, none, admit
                               'R402214', #Coma scale, best verbal response, none, 24+hrs
                               'R40222', #Coma scale, best verbal response, incomprehensible words
                               'R402220', #Coma scale, best verb, incomprehensible words, unsp time
                               'R402221', #Coma scale, best verb, incomprehensible words, in the field
                               'R402222', #Coma scale, best verb, incomprehensible words, EMR
                               'R402223', #Coma scale, best verb, incomprehensible words, admit
                               'R402224', #Coma scale, best verb, incomprehensible words, 24+hrs
                               'R40223', #Coma scale, best verbal response, inappropriate words
                               'R402230', #Coma scale, best verb, inappropriate words, unsp time
                               'R402231', #Coma scale, best verb, inappropriate words, in the field
                               'R402232', #Coma scale, best verbal response, inappropriate words, EMR
                               'R402233', #Coma scale, best verbal response, inappropriate words, admit
                               'R402234', #Coma scale, best verb, inappropriate words, 24+hrs
                               'R40224', #Coma scale, best verbal response, confused conversation
                               'R402240', #Coma scale, best verb, confused conversation, unsp time
                               'R402241', #Coma scale, best verb, confused conversation, in the field
                               'R402242', #Coma scale, best verbal response, confused conversation, EMR
                               'R402243', #Coma scale, best verb, confused conversation, admit
                               'R402244', #Coma scale, best verb, confused conversation, 24+hrs
                               'R40225', #Coma scale, best verbal response, oriented
                               'R402250', #Coma scale, best verbal response, oriented, unspecified time
                               'R402251', #Coma scale, best verbal response, oriented, in the field
                               'R402252', #Coma scale, best verbal response, oriented, EMR
                               'R402253', #Coma scale, best verbal response, oriented, admit
                               'R402254', #Coma scale, best verbal response, oriented, 24+hrs
                               'R4023', #Coma scale, best motor response
                               'R40231', #Coma scale, best motor response, none
                               'R402310', #Coma scale, best motor response, none, unspecified time
                               'R402311', #Coma scale, best motor response, none, in the field
                               'R402312', #Coma scale, best motor response, none, EMR
                               'R402313', #Coma scale, best motor response, none, at hospital admission
                               'R402314', #Coma scale, best motor response, none, 24+hrs
                               'R40232', #Coma scale, best motor response, extension
                               'R402320', #Coma scale, best motor response, extension, unspecified time
                               'R402321', #Coma scale, best motor response, extension, in the field
                               'R402322', #Coma scale, best motor response, extension, EMR
                               'R402323', #Coma scale, best motor response, extension, admit
                               'R402324', #Coma scale, best motor response, extension, 24+hrs
                               'R40233', #Coma scale, best motor response, abnormal flexion
                               'R402330', #Coma scale, best motor, abnormal flexion, unspecified time
                               'R402331', #Coma scale, best motor, abnormal flexion, in the field
                               'R402332', #Coma scale, best motor response, abnormal flexion, EMR
                               'R402333', #Coma scale, best motor response, abnormal flexion, admit
                               'R402334', #Coma scale, best motor response, abnormal flexion, 24+hrs
                               'R40234', #Coma scale, best motor response, flexion withdrawal
                               'R402340', #Coma scale, best motor, flexion withdrawal, unsp time
                               'R402341', #Coma scale, best motor, flexion withdrawal, in the field
                               'R402342', #Coma scale, best motor response, flexion withdrawal, EMR
                               'R402343', #Coma scale, best motor response, flexion withdrawal, admit
                               'R402344', #Coma scale, best motor response, flexion withdrawal, 24+hrs
                               'R40235', #Coma scale, best motor response, localizes pain
                               'R402350', #Coma scale, best motor response, localizes pain, unsp time
                               'R402351', #Coma scale, best motor, localizes pain, in the field
                               'R402352', #Coma scale, best motor response, localizes pain, EMR
                               'R402353', #Coma scale, best motor response, localizes pain, admit
                               'R402354', #Coma scale, best motor response, localizes pain, 24+hrs
                               'R40236', #Coma scale, best motor response, obeys commands
                               'R402360', #Coma scale, best motor response, obeys commands, unsp time
                               'R402361', #Coma scale, best motor, obeys commands, in the field
                               'R402362', #Coma scale, best motor response, obeys commands, EMR
                               'R402363', #Coma scale, best motor response, obeys commands, admit
                               'R402364', #Coma scale, best motor response, obeys commands, 24+hrs
                               'R4024', #Glasgow coma scale, total score
                               'R40241', #Glasgow coma scale score 13-15
                               'R402410', #Glasgow coma scale score 13-15, unspecified time
                               'R402411', #Glasgow coma scale score 13-15, in the field
                               'R402412', #Glasgow coma scale score 13-15, EMR
                               'R402413', #Glasgow coma scale score 13-15, at hospital admission
                               'R402414', #Glasgow coma scale score 13-15, 24+hrs
                               'R40242', #Glasgow coma scale score 9-12
                               'R402420', #Glasgow coma scale score 9-12, unspecified time
                               'R402421', #Glasgow coma scale score 9-12, in the field
                               'R402422', #Glasgow coma scale score 9-12, EMR
                               'R402423', #Glasgow coma scale score 9-12, at hospital admission
                               'R402424', #Glasgow coma scale score 9-12, 24+hrs
                               'R40243', #Glasgow coma scale score 3-8
                               'R402430', #Glasgow coma scale score 3-8, unspecified time
                               'R402431', #Glasgow coma scale score 3-8, in the field
                               'R402432', #Glasgow coma scale score 3-8, EMR
                               'R402433', #Glasgow coma scale score 3-8, at hospital admission
                               'R402434', #Glasgow coma scale score 3-8, 24+hrs
                               'R40244', #Oth coma,w/o Glasgow coma scale score,or w/part score report
                               'R402440', #Other coma, without Glasgow, or w/part score, unsp time
                               'R402441', #Other coma, without Glasgow, or w/part score, in the field
                               'R402442', #Other coma, without documented Glasgow, or w/part score, EMR
                               'R402443', #Other coma, without Glasgow, or w/part score, admit
                               'R402444', #Other coma, without Glasgow, or w/part score, 24+hrs
                               'R403', #Persistent vegetative state
                               'R404', #Transient alteration of awareness
                               'R41', #Oth symptoms and signs w cognitive functions and awareness
                               'R410', #Disorientation, unspecified
                               'R411', #Anterograde amnesia
                               'R412', #Retrograde amnesia
                               'R413', #Other amnesia
                               'R414', #Neurologic neglect syndrome
                               'R418', #Oth symptoms and signs w cognitive functions and awareness
                               'R4181', #Age-related cognitive decline
                               'R4182', #Altered mental status, unspecified
                               'R4183', #Borderline intellectual functioning
                               'R4184', #Other specified cognitive deficit
                               'R41840', #Attention and concentration deficit
                               'R41841', #Cognitive communication deficit
                               'R41842', #Visuospatial deficit
                               'R41843', #Psychomotor deficit
                               'R41844', #Frontal lobe and executive function deficit
                               'R4189', #Oth symptoms and signs w cognitive functions and awareness
                               'R419', #Unsp symptoms and signs w cognitive functions and awareness
                               'R44', #Oth symptoms and signs w general sensations and perceptions
                               'R440', #Auditory hallucinations
                               'R441', #Visual hallucinations
                               'R442', #Other hallucinations
                               'R443', #Hallucinations, unspecified
                               'R448', #Oth symptoms and signs w general sensations and perceptions
                               'R449', #Unsp symptoms and signs w general sensations and perceptions
                               'R45', #Symptoms and signs involving emotional state
                               'R450', #Nervousness
                               'R451', #Restlessness and agitation
                               'R452', #Unhappiness
                               'R453', #Demoralization and apathy
                               'R454', #Irritability and anger
                               'R455', #Hostility
                               'R456', #Violent behavior
                               'R457', #State of emotional shock and stress, unspecified
                               'R458', #Other symptoms and signs involving emotional state
                               'R4581', #Low self-esteem
                               'R4582', #Worries
                               'R4583', #Excessive crying of child, adolescent or adult
                               'R4584', #Anhedonia
                               'R4585', #Homicidal and suicidal ideations
                               'R45850', #Homicidal ideations
                               'R45851', #Suicidal ideations
                               'R4586', #Emotional lability
                               'R4587', #Impulsiveness
                               'R4589', #Other symptoms and signs involving emotional state
                               'R46', #Symptoms and signs involving appearance and behavior
                               'R460', #Very low level of personal hygiene
                               'R461', #Bizarre personal appearance
                               'R462', #Strange and inexplicable behavior
                               'R463', #Overactivity
                               'R464', #Slowness and poor responsiveness
                               'R465', #Suspiciousness and marked evasiveness
                               'R466', #Undue concern and preoccupation with stressful events
                               'R467', #Verbosity and circumstantial detail obscuring rsn for cntct
                               'R468', #Other symptoms and signs involving appearance and behavior
                               'R4681', #Obsessive-compulsive behavior
                               'R4689', #Other symptoms and signs involving appearance and behavior
                               'F05', #Delirium due to known physiological condition
                               'F062', #Psychotic disorder w delusions due to known physiol cond
                               'F060', #Psychotic disorder w hallucin due to known physiol condition
                               'F0630', #Mood disorder due to known physiological condition, unsp
                               'F064', #Anxiety disorder due to known physiological condition
                               'F061', #Catatonic disorder due to known physiological condition
                               'F53', #Mental and behavrl disorders assoc with the puerperium, NEC
                               'F068', #Oth mental disorders due to known physiological condition
                               'F3010', #Manic episode without psychotic symptoms, unspecified
                               'F3011', #Manic episode without psychotic symptoms, mild
                               'F3012', #Manic episode without psychotic symptoms, moderate
                               'F3013', #Manic episode, severe, without psychotic symptoms
                               'F302', #Manic episode, severe with psychotic symptoms
                               'F303', #Manic episode in partial remission
                               'F304', #Manic episode in full remission
                               'F329', #Major depressive disorder, single episode, unspecified
                               'F320', #Major depressive disorder, single episode, mild
                               'F321', #Major depressive disorder, single episode, moderate
                               'F322', #Major depressv disord, single epsd, sev w/o psych features
                               'F323', #Major depressv disord, single epsd, severe w psych features
                               'F324', #Major depressv disorder, single episode, in partial remis
                               'F325', #Major depressive disorder, single episode, in full remission
                               'F339', #Major depressive disorder, recurrent, unspecified
                               'F330', #Major depressive disorder, recurrent, mild
                               'F331', #Major depressive disorder, recurrent, moderate
                               'F332', #Major depressv disorder, recurrent severe w/o psych features
                               'F333', #Major depressv disorder, recurrent, severe w psych symptoms
                               'F3341', #Major depressive disorder, recurrent, in partial remission
                               'F3342', #Major depressive disorder, recurrent, in full remission
                               'F3110', #Bipolar disord, crnt episode manic w/o psych features, unsp
                               'F3111', #Bipolar disord, crnt episode manic w/o psych features, mild
                               'F3112', #Bipolar disord, crnt episode manic w/o psych features, mod
                               'F3113', #Bipolar disord, crnt epsd manic w/o psych features, severe
                               'F312', #Bipolar disord, crnt episode manic severe w psych features
                               'F3173', #Bipolar disord, in partial remis, most recent episode manic
                               'F3174', #Bipolar disorder, in full remis, most recent episode manic
                               'F3130', #Bipolar disord, crnt epsd depress, mild or mod severt, unsp
                               'F3131', #Bipolar disorder, current episode depressed, mild
                               'F3132', #Bipolar disorder, current episode depressed, moderate
                               'F314', #Bipolar disord, crnt epsd depress, sev, w/o psych features
                               'F315', #Bipolar disord, crnt epsd depress, severe, w psych features
                               'F3175', #Bipolar disord, in partial remis, most recent epsd depress
                               'F3176', #Bipolar disorder, in full remis, most recent episode depress
                               'F3160', #Bipolar disorder, current episode mixed, unspecified
                               'F3161', #Bipolar disorder, current episode mixed, mild
                               'F3162', #Bipolar disorder, current episode mixed, moderate
                               'F3163', #Bipolar disord, crnt epsd mixed, severe, w/o psych features
                               'F3164', #Bipolar disord, crnt episode mixed, severe, w psych features
                               'F3177', #Bipolar disord, in partial remis, most recent episode mixed
                               'F3178', #Bipolar disorder, in full remis, most recent episode mixed
                               'F319', #Bipolar disorder, unspecified
                               'F308', #Other manic episodes
                               'F328', #Other depressive episodes
                               'F3181', #Bipolar II disorder
                               'F39', #Unspecified mood [affective] disorder
                               'F348', #Other persistent mood [affective] disorders
                               'F22', #Delusional disorders
                               'F24', #Shared psychotic disorder
                               'F23', #Brief psychotic disorder
                               'F28', #Oth psych disorder not due to a sub or known physiol cond
                               'F4489', #Other dissociative and conversion disorders
                               'F29', #Unsp psychosis not due to a substance or known physiol cond
                               'F070', #Personality change due to known physiological condition
                               'G40', #Epilepsy and recurrent seizures
                               'G400', #Local-rel (focal) idio epilepsy w seizures of loc onset
                               'G4000', #Local-rel (focal) idio epi w seiz of loc onset, not ntrct
                               'G40001', #Local-rel idio epi w seiz of loc onst, not ntrct, w stat epi
                               'G40009', #Local-rel idio epi w seiz of loc onst,not ntrct,w/o stat epi
                               'G4001', #Local-rel (focal) idio epi w seizures of loc onset, ntrct
                               'G40011', #Local-rel idio epi w seiz of loc onset, ntrct, w stat epi
                               'G40019', #Local-rel idio epi w seiz of loc onset, ntrct, w/o stat epi
                               'G401', #Local-rel (focal) symptc epilepsy w simple partial seizures
                               'G4010', #Local-rel symptc epi w simple partial seiz, not ntrct
                               'G40101', #Local-rel symptc epi w simp part seiz, not ntrct, w stat epi
                               'G40109', #Local-rel symptc epi w simp prt seiz,not ntrct, w/o stat epi
                               'G4011', #Local-rel (focal) symptc epi w simple partial seiz, ntrct
                               'G40111', #Local-rel symptc epi w simple part seiz, ntrct, w stat epi
                               'G40119', #Local-rel symptc epi w simple part seiz, ntrct, w/o stat epi
                               'G402', #Local-rel (focal) symptc epilepsy w complex partial seizures
                               'G4020', #Local-rel symptc epi w complex partial seiz, not ntrct
                               'G40201', #Local-rel symptc epi w cmplx prt seiz, not ntrct, w stat epi
                               'G40209', #Local-rel symptc epi w cmplx prt seiz,not ntrct,w/o stat epi
                               'G4021', #Local-rel (focal) symptc epi w complex partial seiz, ntrct
                               'G40211', #Local-rel symptc epi w cmplx partial seiz, ntrct, w stat epi
                               'G40219', #Local-rel symptc epi w cmplx part seiz, ntrct, w/o stat epi
                               'G403', #Generalized idiopathic epilepsy and epileptic syndromes
                               'G4030', #Generalized idiopathic epilepsy, not intractable
                               'G40301', #Gen idiopathic epilepsy, not intractable, w stat epi
                               'G40309', #Gen idiopathic epilepsy, not intractable, w/o stat epi
                               'G4031', #Generalized idiopathic epilepsy, intractable
                               'G40311', #Generalized idiopathic epilepsy, intractable, w stat epi
                               'G40319', #Generalized idiopathic epilepsy, intractable, w/o stat epi
                               'G404', #Other generalized epilepsy and epileptic syndromes
                               'G4040', #Oth generalized epilepsy, not intractable
                               'G40401', #Oth generalized epilepsy, not intractable, w stat epi
                               'G40409', #Oth generalized epilepsy, not intractable, w/o stat epi
                               'G4041', #Oth generalized epilepsy, intractable
                               'G40411', #Oth generalized epilepsy, intractable, w status epilepticus
                               'G40419', #Oth generalized epilepsy, intractable, w/o stat epi
                               'G405', #Epileptic seizures related to external causes
                               'G4050', #Epileptic seizures related to external causes, not ntrct
                               'G40501', #Epileptic seiz rel to extrn causes, not ntrct, w stat epi
                               'G40509', #Epileptic seiz rel to extrn causes, not ntrct, w/o stat epi
                               'G408', #Other epilepsy and recurrent seizures
                               'G4080', #Other epilepsy
                               'G40801', #Other epilepsy, not intractable, with status epilepticus
                               'G40802', #Other epilepsy, not intractable, without status epilepticus
                               'G40803', #Other epilepsy, intractable, with status epilepticus
                               'G40804', #Other epilepsy, intractable, without status epilepticus
                               'G4081', #Lennox-Gastaut syndrome
                               'G40811', #Lennox-Gastaut syndrome, not intractable, w stat epi
                               'G40812', #Lennox-Gastaut syndrome, not intractable, w/o stat epi
                               'G40813', #Lennox-Gastaut syndrome, intractable, w status epilepticus
                               'G40814', #Lennox-Gastaut syndrome, intractable, w/o status epilepticus
                               'G4082', #Epileptic spasms
                               'G40821', #Epileptic spasms, not intractable, with status epilepticus
                               'G40822', #Epileptic spasms, not intractable, w/o status epilepticus
                               'G40823', #Epileptic spasms, intractable, with status epilepticus
                               'G40824', #Epileptic spasms, intractable, without status epilepticus
                               'G4089', #Other seizures
                               'G409', #Epilepsy, unspecified
                               'G4090', #Epilepsy, unspecified, not intractable
                               'G40901', #Epilepsy, unsp, not intractable, with status epilepticus
                               'G40909', #Epilepsy, unsp, not intractable, without status epilepticus
                               'G4091', #Epilepsy, unspecified, intractable
                               'G40911', #Epilepsy, unspecified, intractable, with status epilepticus
                               'G40919', #Epilepsy, unsp, intractable, without status epilepticus
                               'G40A', #Absence epileptic syndrome
                               'G40A0', #Absence epileptic syndrome, not intractable
                               'G40A01', #Absence epileptic syndrome, not intractable, w stat epi
                               'G40A09', #Absence epileptic syndrome, not intractable, w/o stat epi
                               'G40A1', #Absence epileptic syndrome, intractable
                               'G40A11', #Absence epileptic syndrome, intractable, w stat epi
                               'G40A19', #Absence epileptic syndrome, intractable, w/o stat epi
                               'G40B', #Juvenile myoclonic epilepsy [impulsive petit mal]
                               'G40B0', #Juvenile myoclonic epilepsy, not intractable
                               'G40B01', #Juvenile myoclonic epilepsy, not intractable, w stat epi
                               'G40B09', #Juvenile myoclonic epilepsy, not intractable, w/o stat epi
                               'G40B1', #Juvenile myoclonic epilepsy, intractable
                               'G40B11', #Juvenile myoclonic epilepsy, intractable, w stat epi
                               'G40B19', #Juvenile myoclonic epilepsy, intractable, w/o stat epi
                               'R50', #Fever of other and unknown origin
                               'R5081', #Fever presenting with conditions classified elsewhere
                               'R509' #Fever, unspecified
                               )))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
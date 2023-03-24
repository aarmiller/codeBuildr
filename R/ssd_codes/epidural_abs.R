## Codes for epidural_abs 

    
# Description:
    
desc <- "Epidural Abscess"
    
# Diagnosis codes:

# tmp <- read_csv("~/Documents/GitHub/delay_dx/params/ssd_codes/spine_abs/ssd_codes.csv")
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
    
icd9_codes <- as.character((c('33819', #Acute pain NEC
                              '33829', #Chronic pain NEC
                              '56400', #Constipation NOS
                              '71940', #Joint pain-unspec
                              '71941', #Joint pain-shlder
                              '71942', #Joint pain-up/arm
                              '71943', #Joint pain-forearm
                              '71944', #Joint pain-hand
                              '71945', #Joint pain-pelvis
                              '71946', #Joint pain-l/leg
                              '71947', #Joint pain-ankle
                              '71949', #Joint pain-mult jts
                              '7197', #Difficulty in walking
                              '7231', #Cervicalgia
                              '7241', #Pain in thoracic spine
                              '7242', #Lumbago
                              '7245', #Backache NOS
                              '7248', #Other back symptoms
                              '72887', #Muscle weakness-general
                              '7291', #Myalgia and myositis NOS
                              '7295', #Pain in limb
                              '72982', #Cramp in limb
                              '72989', #Muscskel sympt limb NEC
                              '7806', #Fever and other physiologic disturbances of temperature regulation
                              '78060', #Fever NOS
                              '78079', #Malaise and fatigue NEC
                              '78096', #Generalized pain
                              '78199', #Nerve/musculskel sym NEC
                              '7820', #Skin sensation disturb
                              '7840', #Headache
                              '78605', #Shortness of breath
                              '78650', #Chest pain NOS
                              '78651', #Precordial pain
                              '78652', #Painful respiration
                              '78659', #Chest pain NEC
                              '78720', #Dysphagia NOS
                              '78900', #Abdmnal pain unspcf site
                              '78901', #Abdmnal pain rt upr quad
                              '78903', #Abdmnal pain rt lwr quad
                              '78904', #Abdmnal pain lt lwr quad
                              '78905', #Abdmnal pain periumbilic
                              '78906', #Abdmnal pain epigastric
                              '78907', #Abdmnal pain generalized
                              '78909', #Abdmnal pain oth spcf st
                              '7881', #Dysuria
                              '78841', #Urinary frequency
                              '486', #Pneumonia, organism NOS
                              '5990', #Urin tract infection NOS
                              '07999', #Viral infection NOS
                              '2749', #Gout NOS
                              '71500', #General osteoarthrosis
                              '71509', #General osteoarthrosis
                              '71511', #Loc prim osteoart-shlder
                              '71515', #Loc prim osteoart-pelvis
                              '71516', #Loc prim osteoart-l/leg
                              '71530', #Loc osteoarth NOS-unspec
                              '71536', #Loc osteoarth NOS-l/leg
                              '71590', #Osteoarthros NOS-unspec
                              '71591', #Osteoarthros NOS-shlder
                              '71595', #Osteoarthros NOS-pelvis
                              '71596', #Osteoarthros NOS-l/leg
                              '71597', #Osteoarthros NOS-ankle
                              '71648', #Trans arthropathy NEC
                              '71688', #Arthropathy NEC-oth site
                              '71690', #Arthropathy NOS-unspec
                              '7202', #Sacroiliitis NEC
                              '7210', #Cervical spondylosis
                              '7211', #Cerv spondyl w myelopath
                              '7212', #Thoracic spondylosis
                              '7213', #Lumbosacral spondylosis
                              '72142', #Spond compr lumb sp cord
                              '7218', #Spinal disorders NEC
                              '72190', #Spondylos NOS w/o myelop
                              '7220', #Cervical disc displacmnt
                              '72210', #Lumbar disc displacement
                              '72211', #Thoracic disc displacmnt
                              '7222', #Disc displacement NOS
                              '7224', #Cervical disc degen
                              '72251', #Thoracic disc degen
                              '72252', #Lumb/lumbosac disc degen
                              '7226', #Disc degeneration NOS
                              '72271', #Cerv disc dis w myelopat
                              '72273', #Lumb disc dis w myelopat
                              '72290', #Disc dis NEC/NOS-unspec
                              '72292', #Disc dis NEC/NOS-thorac
                              '72293', #Disc dis NEC/NOS-lumbar
                              '7230', #Cervical spinal stenosis
                              '7232', #Cervicocranial syndrome
                              '7233', #Cervicobrachial syndrome
                              '7238', #Cervical syndrome NEC
                              '7239', #Neck disorder/sympt NOS
                              '72400', #Spinal stenosis NOS
                              '72401', #Spinal stenosis-thoracic
                              '72402', #Spin sten,lumbr wo claud
                              '72403', #Spin sten,lumbr w claud
                              '7243', #Sciatica
                              '7244', #Lumbosacral neuritis NOS
                              '7246', #Disorders of sacrum
                              '72470', #Disorder of coccyx NOS
                              '72479', #Disorder of coccyx NEC
                              '7249', #Back disorder NOS
                              '72610', #Rotator cuff synd NOS
                              '7262', #Shoulder region dis NEC
                              '7265', #Enthesopathy of hip
                              '72706', #Tenosynovitis foot/ankle
                              '72885', #Spasm of muscle
                              '7289', #Muscle/ligament dis NOS
                              '72999', #Soft tissue disorder NEC
                              '73300', #Osteoporosis NOS
                              '73301', #Senile osteoporosis
                              '73313', #Path fx vertebrae
                              '73390', #Bone & cartilage dis NOS
                              '73399', #Bone & cartilage dis NEC
                              '73730', #Idiopathic scoliosis
                              '73739', #Scoliosis NEC
                              '7384', #Acq spondylolisthesis
                              '75612', #Spondylolisthesis
                              '8052', #Fx dorsal vertebra-close
                              '8054', #Fx lumbar vertebra-close
                              '83908', #Disloc mult cerv vert-cl
                              '83920', #Dislocat lumbar vert-cl
                              '83921', #Disloc thoracic vert-cl
                              '8409', #Sprain shoulder/arm NOS
                              '8439', #Sprain hip & thigh NOS
                              '8449', #Sprain of knee & leg NOS
                              '84500', #Sprain of ankle NOS
                              '8460', #Sprain lumbosacral
                              '8461', #Sprain sacroiliac
                              '8470', #Sprain of neck
                              '8471', #Sprain thoracic region
                              '8472', #Sprain lumbar region
                              '8479', #Sprain of back NOS
                              '8485', #Sprain of pelvis
                              '8488', #Sprain NEC
                              '9089', #Late effect injury NOS
                              '95909', #Face & neck injury
                              '9596', #Hip & thigh injury NOS
                              '9597', #Lower leg injury NOS
                              '30781', #Tension headache
                              '3239', #Encephalitis NOS
                              '3320', #Paralysis agitans
                              '3361', #Vascular myelopathies
                              '3368', #Myelopathy NEC
                              '3369', #Spinal cord disease NOS
                              '3384', #Chronic pain syndrome
                              '33910', #Tension headache NOS
                              '34281', #Ot sp hmiplga domnt side
                              '34282', #Ot sp hmiplg nondmnt sde
                              '34290', #Unsp hemiplga unspf side
                              '34291', #Unsp hemiplga domnt side
                              '34292', #Unsp hmiplga nondmnt sde
                              '34400', #Quadriplegia, unspecifd
                              '34409', #Other quadriplegia
                              '3441', #Paraplegia NOS
                              '34610', #Mgrn wo aura wo ntrc mgr
                              '3530', #Brachial plexus lesions
                              '3532', #Cervical root lesion NEC
                              '3540', #Carpal tunnel syndrome
                              '3542', #Ulnar nerve lesion
                              '3558', #Mononeuritis leg NOS
                              '3559', #Mononeuritis NOS
                              '3569', #Idio periph neurpthy NOS
                              '3579', #Inflam/tox neuropthy NOS
                              '4359', #Trans cereb ischemia NOS
                              '436', #Cva
                              '43822', #Late ef-hemiplga non-dom
                              '4439', #Periph vascular dis NOS
                              '7135', #Arthropathy w nerve dis
                              '7292', #Neuralgia/neuritis NOS
                              '7234', #Brachial neuritis NOS
                              '7235', #Torticollis NOS
                              '73605', #Wrist drop
                              '57420', #Cholelithiasis NOS
                              '5920', #Calculus of kidney
                              '5932', #Cyst of kidney, acquired
                              '59654', #Neurogenic bladder NOS
                              '78820', #Retention urine NOS
                              '78830', #Urinary incontinence NOS
                              '28529', #Anemia-other chronic dis
                              '2859', #Anemia NOS
                              '2875', #Thrombocytopenia NOS
                              '28860', #Leukocytosis NOS
                              '7812', #Abnormality of gait
                              '78321', #Abnormal loss of weight
                              '7937' #Nonsp abn find-ms system
                              )))
    
icd10_codes <- as.character((c('G8929', #Other chronic pain
                               'K5900', #Constipation, unspecified
                               'M160', #Bilateral primary osteoarthritis of hip
                               'M2550', #Pain in unspecified joint
                               'M25511', #Pain in right shoulder
                               'M25512', #Pain in left shoulder
                               'M25519', #Pain in unspecified shoulder
                               'M25529', #Pain in unspecified elbow
                               'M25531', #Pain in right wrist
                               'M25532', #Pain in left wrist
                               'M25539', #Pain in unspecified wrist
                               'M25551', #Pain in right hip
                               'M25552', #Pain in left hip
                               'M25559', #Pain in unspecified hip
                               'M25569', #Pain in unspecified knee
                               'M25579', #Pain in unspecified ankle and joints of unspecified foot
                               'M545', #Low back pain
                               'M546', #Pain in thoracic spine
                               'M5489', #Other dorsalgia
                               'M549', #Dorsalgia, unspecified
                               'M6281', #Muscle weakness (generalized)
                               'M62830', #Muscle spasm of back
                               'M791', #Myalgia
                               'M79601', #Pain in right arm
                               'M79602', #Pain in left arm
                               'M79604', #Pain in right leg
                               'M79605', #Pain in left leg
                               'M79606', #Pain in leg, unspecified
                               'M79609', #Pain in unspecified limb
                               'M79641', #Pain in right hand
                               'M79642', #Pain in left hand
                               'M79643', #Pain in unspecified hand
                               'M79646', #Pain in unspecified finger(s)
                               'M79661', #Pain in right lower leg
                               'M79662', #Pain in left lower leg
                               'R071', #Chest pain on breathing
                               'R072', #Precordial pain
                               'R0781', #Pleurodynia
                               'R0782', #Intercostal pain
                               'R0789', #Other chest pain
                               'R079', #Chest pain, unspecified
                               'R1010', #Upper abdominal pain, unspecified
                               'R1011', #Right upper quadrant pain
                               'R1012', #Left upper quadrant pain
                               'R1013', #Epigastric pain
                               'R102', #Pelvic and perineal pain
                               'R1030', #Lower abdominal pain, unspecified
                               'R1031', #Right lower quadrant pain
                               'R1032', #Left lower quadrant pain
                               'R1084', #Generalized abdominal pain
                               'R109', #Unspecified abdominal pain
                               'R130', #Aphagia
                               'R1310', #Dysphagia, unspecified
                               'R200', #Anesthesia of skin
                               'R201', #Hypoesthesia of skin
                               'R202', #Paresthesia of skin
                               'R203', #Hyperesthesia
                               'R208', #Other disturbances of skin sensation
                               'R209', #Unspecified disturbances of skin sensation
                               'R252', #Cramp and spasm
                               'R262', #Difficulty in walking, not elsewhere classified
                               'R270', #Ataxia, unspecified
                               'R29898', #Oth symptoms and signs involving the musculoskeletal system
                               'R300', #Dysuria
                               'R309', #Painful micturition, unspecified
                               'R350', #Frequency of micturition
                               'R509', #Fever, unspecified
                               'R51', #Headache
                               'R52', #Pain, unspecified
                               'R531', #Weakness
                               'R5381', #Other malaise
                               'R5383', #Other fatigue
                               'M542', #Cervicalgia
                               'B9789', #Oth viral agents as the cause of diseases classd elswhr
                               'J189', #Pneumonia, unspecified organism
                               'N390', #Urinary tract infection, site not specified
                               'M109', #Gout, unspecified
                               'M1288', #Oth specific arthropathies, NEC, oth site
                               'M129', #Arthropathy, unspecified
                               'M150', #Primary generalized (osteo)arthritis
                               'M159', #Polyosteoarthritis, unspecified
                               'M1611', #Unilateral primary osteoarthritis, right hip
                               'M169', #Osteoarthritis of hip, unspecified
                               'M1710', #Unilateral primary osteoarthritis, unspecified knee
                               'M179', #Osteoarthritis of knee, unspecified
                               'M19011', #Primary osteoarthritis, right shoulder
                               'M1990', #Unspecified osteoarthritis, unspecified site
                               'M2578', #Osteophyte, vertebrae
                               'M4120', #Other idiopathic scoliosis, site unspecified
                               'M4180', #Other forms of scoliosis, site unspecified
                               'M4186', #Other forms of scoliosis, lumbar region
                               'M419', #Scoliosis, unspecified
                               'M4300', #Spondylolysis, site unspecified
                               'M4306', #Spondylolysis, lumbar region
                               'M4310', #Spondylolisthesis, site unspecified
                               'M4312', #Spondylolisthesis, cervical region
                               'M4316', #Spondylolisthesis, lumbar region
                               'M4317', #Spondylolisthesis, lumbosacral region
                               'M438X9', #Other specified deforming dorsopathies, site unspecified
                               'M461', #Sacroiliitis, not elsewhere classified
                               'M4712', #Other spondylosis with myelopathy, cervical region
                               'M4716', #Other spondylosis with myelopathy, lumbar region
                               'M4722', #Other spondylosis with radiculopathy, cervical region
                               'M4726', #Other spondylosis with radiculopathy, lumbar region
                               'M4727', #Other spondylosis with radiculopathy, lumbosacral region
                               'M47812', #Spondylosis w/o myelopathy or radiculopathy, cervical region
                               'M47814', #Spondylosis w/o myelopathy or radiculopathy, thoracic region
                               'M47816', #Spondylosis w/o myelopathy or radiculopathy, lumbar region
                               'M47817', #Spondyls w/o myelopathy or radiculopathy, lumbosacr region
                               'M47819', #Spondylosis without myelopathy or radiculopathy, site unsp
                               'M47892', #Other spondylosis, cervical region
                               'M47896', #Other spondylosis, lumbar region
                               'M47897', #Other spondylosis, lumbosacral region
                               'M479', #Spondylosis, unspecified
                               'M4800', #Spinal stenosis, site unspecified
                               'M4802', #Spinal stenosis, cervical region
                               'M4804', #Spinal stenosis, thoracic region
                               'M4806', #Spinal stenosis, lumbar region
                               'M48061', #Spinal stenosis, lumbar region without neurogenic claud
                               'M48062', #Spinal stenosis, lumbar region with neurogenic claudication
                               'M4807', #Spinal stenosis, lumbosacral region
                               'M4850XA', #Collapsed vertebra, NEC, site unsp, init
                               'M4856XA', #Collapsed vertebra, NEC, lumbar region, init
                               'M488X4', #Other specified spondylopathies, thoracic region
                               'M489', #Spondylopathy, unspecified
                               'M5000', #Cervical disc disorder with myelopathy, unsp cervical region
                               'M5002', #Cervical disc disorder with myelopathy, mid-cervical region
                               'M5010', #Cervical disc disorder w radiculopathy, unsp cervical region
                               'M5012', #Cervical disc disorder w radiculopathy, mid-cervical region
                               'M5013', #Cervical disc disorder w radiculopathy, cervicothor region
                               'M5020', #Other cervical disc displacement, unsp cervical region
                               'M5021', #Other cervical disc displacement, high cervical region
                               'M5022', #Other cervical disc displacement, mid-cervical region
                               'M5030', #Other cervical disc degeneration, unsp cervical region
                               'M5031', #Other cervical disc degeneration, high cervical region
                               'M5032', #Other cervical disc degeneration, mid-cervical region
                               'M5033', #Other cervical disc degeneration, cervicothoracic region
                               'M5106', #Intervertebral disc disorders with myelopathy, lumbar region
                               'M5116', #Intervertebral disc disorders w radiculopathy, lumbar region
                               'M5117', #Intvrt disc disorders w radiculopathy, lumbosacral region
                               'M5124', #Other intervertebral disc displacement, thoracic region
                               'M5126', #Other intervertebral disc displacement, lumbar region
                               'M5127', #Other intervertebral disc displacement, lumbosacral region
                               'M5134', #Other intervertebral disc degeneration, thoracic region
                               'M5135', #Other intervertebral disc degeneration, thoracolumbar region
                               'M5136', #Other intervertebral disc degeneration, lumbar region
                               'M5137', #Other intervertebral disc degeneration, lumbosacral region
                               'M5184', #Other intervertebral disc disorders, thoracic region
                               'M5185', #Other intervertebral disc disorders, thoracolumbar region
                               'M5186', #Other intervertebral disc disorders, lumbar region
                               'M5187', #Other intervertebral disc disorders, lumbosacral region
                               'M519', #Unsp thoracic, thoracolum and lumbosacr intvrt disc disorder
                               'M609', #Myositis, unspecified
                               'M629', #Disorder of muscle, unspecified
                               'M6240', #Contracture of muscle, unspecified site
                               'M6249', #Contracture of muscle, multiple sites
                               'M62838', #Other muscle spasm
                               'M65879', #Other synovitis and tenosynovitis, unsp ankle and foot
                               'M7060', #Trochanteric bursitis, unspecified hip
                               'M7070', #Other bursitis of hip, unspecified hip
                               'M7610', #Psoas tendinitis, unspecified hip
                               'M7620', #Iliac crest spur, unspecified hip
                               'M75100', #Unsp rotatr-cuff tear/ruptr of unsp shoulder, not trauma
                               'M7530', #Calcific tendinitis of unspecified shoulder
                               'M7540', #Impingement syndrome of unspecified shoulder
                               'M7550', #Bursitis of unspecified shoulder
                               'M7580', #Other shoulder lesions, unspecified shoulder
                               'M7989', #Other specified soft tissue disorders
                               'M8008XA', #Age-rel osteopor w current path fracture, vertebra(e), init
                               'M810', #Age-related osteoporosis w/o current pathological fracture
                               'M8448XA', #Pathological fracture, other site, init encntr for fracture
                               'M8468XA', #Pathological fracture in oth disease, oth site, init for fx
                               'M8930', #Hypertrophy of bone, unspecified site
                               'M898X9', #Other specified disorders of bone, unspecified site
                               'M899', #Disorder of bone, unspecified
                               'M948X9', #Other specified disorders of cartilage, unspecified sites
                               'M949', #Disorder of cartilage, unspecified
                               'M9971', #Conn tiss and disc stenosis of intvrt foramin of cerv region
                               'S13101A', #Dislocation of unspecified cervical vertebrae, init encntr
                               'S134XXA', #Sprain of ligaments of cervical spine, initial encounter
                               'S134XXD', #Sprain of ligaments of cervical spine, subsequent encounter
                               'S138XXA', #Sprain of joints and ligaments of oth prt neck, init encntr
                               'S161XXA', #Strain of muscle, fascia and tendon at neck level, init
                               'S161XXD', #Strain of muscle, fascia and tendon at neck level, subs
                               'S199XXA', #Unspecified injury of neck, initial encounter
                               'S22009A', #Unsp fracture of unsp thoracic vertebra, init for clos fx
                               'S23131A', #Dislocation of T4/T5 thoracic vertebra, initial encounter
                               'S233XXA', #Sprain of ligaments of thoracic spine, initial encounter
                               'S238XXA', #Sprain of other specified parts of thorax, initial encounter
                               'S239XXA', #Sprain of unspecified parts of thorax, initial encounter
                               'S32009A', #Unsp fracture of unsp lumbar vertebra, init for clos fx
                               'S33101A', #Dislocation of unspecified lumbar vertebra, init encntr
                               'S335XXA', #Sprain of ligaments of lumbar spine, initial encounter
                               'S335XXD', #Sprain of ligaments of lumbar spine, subsequent encounter
                               'S336XXA', #Sprain of sacroiliac joint, initial encounter
                               'S338XXA', #Sprain of oth parts of lumbar spine and pelvis, init encntr
                               'S39012A', #Strain of muscle, fascia and tendon of lower back, init
                               'S39012D', #Strain of muscle, fascia and tendon of lower back, subs
                               'S3992XA', #Unspecified injury of lower back, initial encounter
                               'S43409A', #Unsp sprain of unspecified shoulder joint, init encntr
                               'S46919A', #Strain unsp musc/fasc/tend at shldr/up arm, unsp arm, init
                               'S73109A', #Unspecified sprain of unspecified hip, initial encounter
                               'S76919A', #Strain of unsp musc/fasc/tend at thi lev, unsp thigh, init
                               'S79819A', #Other specified injuries of unspecified hip, init encntr
                               'S79829A', #Other specified injuries of unspecified thigh, init encntr
                               'S79919A', #Unspecified injury of unspecified hip, initial encounter
                               'S79929A', #Unspecified injury of unspecified thigh, initial encounter
                               'S8390XA', #Sprain of unspecified site of unspecified knee, init encntr
                               'S86919A', #Strain of unsp musc/tend at lower leg level, unsp leg, init
                               'S8980XA', #Oth injuries of unspecified lower leg, init encntr
                               'S8990XA', #Unspecified injury of unspecified lower leg, init encntr
                               'S93409A', #Sprain of unsp ligament of unspecified ankle, init encntr
                               'S96919A', #Strain of unsp msl/tnd at ank/ft level, unsp foot, init
                               'S99819A', #Other specified injuries of unspecified ankle, init encntr
                               'S99919A', #Unspecified injury of unspecified ankle, initial encounter
                               'G0490', #Encephalitis and encephalomyelitis, unspecified
                               'G0491', #Myelitis, unspecified
                               'G43009', #Migraine w/o aura, not intractable, w/o status migrainosus
                               'G441', #Vascular headache, not elsewhere classified
                               'G44209', #Tension-type headache, unspecified, not intractable
                               'G459', #Transient cerebral ischemic attack, unspecified
                               'G540', #Brachial plexus disorders
                               'G542', #Cervical root disorders, not elsewhere classified
                               'G5600', #Carpal tunnel syndrome, unspecified upper limb
                               'G5601', #Carpal tunnel syndrome, right upper limb
                               'G5602', #Carpal tunnel syndrome, left upper limb
                               'G5620', #Lesion of ulnar nerve, unspecified upper limb
                               'G5790', #Unspecified mononeuropathy of unspecified lower limb
                               'G589', #Mononeuropathy, unspecified
                               'G609', #Hereditary and idiopathic neuropathy, unspecified
                               'G629', #Polyneuropathy, unspecified
                               'G8190', #Hemiplegia, unspecified affecting unspecified side
                               'G8191', #Hemiplegia, unspecified affecting right dominant side
                               'G8194', #Hemiplegia, unspecified affecting left nondominant side
                               'G8220', #Paraplegia, unspecified
                               'G8222', #Paraplegia, incomplete
                               'G8250', #Quadriplegia, unspecified
                               'G894', #Chronic pain syndrome
                               'G9520', #Unspecified cord compression
                               'G959', #Disease of spinal cord, unspecified
                               'I6789', #Other cerebrovascular disease
                               'I69354', #Hemiplga following cerebral infrc affecting left nondom side
                               'I69848', #NA
                               'I739', #Peripheral vascular disease, unspecified
                               'M21339', #Wrist drop, unspecified wrist
                               'M21371', #Foot drop, right foot
                               'M21372', #Foot drop, left foot
                               'M436', #Torticollis
                               'M530', #Cervicocranial syndrome
                               'M531', #Cervicobrachial syndrome
                               'M533', #Sacrococcygeal disorders, not elsewhere classified
                               'M5382', #Other specified dorsopathies, cervical region
                               'M5386', #Other specified dorsopathies, lumbar region
                               'M539', #Dorsopathy, unspecified
                               'M5410', #Radiculopathy, site unspecified
                               'M5412', #Radiculopathy, cervical region
                               'M5413', #Radiculopathy, cervicothoracic region
                               'M5414', #Radiculopathy, thoracic region
                               'M5415', #Radiculopathy, thoracolumbar region
                               'M5416', #Radiculopathy, lumbar region
                               'M5417', #Radiculopathy, lumbosacral region
                               'M5430', #Sciatica, unspecified side
                               'M5431', #Sciatica, right side
                               'M5432', #Sciatica, left side
                               'M5440', #Lumbago with sciatica, unspecified side
                               'M5441', #Lumbago with sciatica, right side
                               'M5442', #Lumbago with sciatica, left side
                               'M5481', #Occipital neuralgia
                               'M792', #Neuralgia and neuritis, unspecified
                               'K8020', #Calculus of gallbladder w/o cholecystitis w/o obstruction
                               'N200', #Calculus of kidney
                               'N281', #Cyst of kidney, acquired
                               'N319', #Neuromuscular dysfunction of bladder, unspecified
                               'R32', #Unspecified urinary incontinence
                               'R339', #Retention of urine, unspecified
                               'D638', #Anemia in other chronic diseases classified elsewhere
                               'D649', #Anemia, unspecified
                               'D696', #Thrombocytopenia, unspecified
                               'D72829', #Elevated white blood cell count, unspecified
                               'R2689', #Other abnormalities of gait and mobility
                               'R269', #Unspecified abnormalities of gait and mobility
                               'R634', #Abnormal weight loss
                               'R260', #Ataxic gait
                               'R261', #Paralytic gait
                               'R936', #Abnormal findings on diagnostic imaging of limbs
                               'R937' #Abnormal findings on diagnostic imaging of prt ms sys
                               )))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
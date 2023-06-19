

### Add disease Tokens ---------------------------------------------------------

dis_files <- codeBuildr::avail_disease_codes()

for (i in 1:nrow(dis_files)){
  
  tmp <- read_lines(paste0("R/disease_codes/",dis_files[i,]$name,".R")) 
  
  if(!any(str_detect(tmp,"tokens"))) {
    print(paste0("fixing",dis_files[i,]$name))
    desc_index <- which(str_detect(tmp,"desc"))
    
    tolower(dis_files[i,]$description)
    
    entry <- paste0("tokens <- c('",tolower(dis_files[i,]$description),"')")
    
    out <- c(tmp[1:desc_index],"",entry,
             tmp[(desc_index+1):length(tmp)])
    
    write_lines(out,paste0("R/disease_codes/",dis_files[i,]$name,".R"))
  }
  
}

### Add symptom Tokens ---------------------------------------------------------

symp_files <- codeBuildr::avail_symptom_codes()

for (i in 1:nrow(symp_files)){
  
  tmp <- read_lines(paste0("R/symptom_codes/",symp_files[i,]$name,".R")) 
  
  if(!any(str_detect(tmp,"tokens"))) {
    print(paste0("fixing",symp_files[i,]$name))
    desc_index <- which(str_detect(tmp,"desc"))
    
    tolower(symp_files[i,]$description)
    
    entry <- paste0("tokens <- c('",tolower(symp_files[i,]$description),"')")
    
    out <- c(tmp[1:desc_index],"",entry,
             tmp[(desc_index+1):length(tmp)])
    
    write_lines(out,paste0("R/symptom_codes/",symp_files[i,]$name,".R"))
  }
  
}


### Pull tokens ----------------------------------------------------------------
rm(list = ls())
symp_files <- codeBuildr::avail_symptom_codes()

token_data <- tibble(symptom = character(),
                     token = character())

for (i in 1:nrow(symp_files)){
  
  tmp <- read_lines(paste0("R/symptom_codes/",symp_files[i,]$name,".R"))
  
  start_index <- which(str_detect(tmp,"token"))
  end_index <- which(str_detect(tmp,"# Diagnosis codes:"))
  
  eval(parse(text = tmp[start_index:(end_index-1)]))
  
  tmp_out <- tibble(symptom = symp_files[i,]$name,
                    token = tolower(tokens))
  
  token_data <- bind_rows(token_data,
                          tmp_out)
  
}

token_data %>% filter(symptom=="skin_general")

source(paste0("R/disease_codes/ami.R"),local = TRUE)

rm(list = ls())

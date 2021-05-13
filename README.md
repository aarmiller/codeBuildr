codeBuildR
================

## Description

This package contains useful functions for working with ICD Codes
(diagnoses and procedures), CCS groupings along with NDC drug codes. It
also contains datasets used to generate common code groups such as index
diseases (e.g., AMI or CDI), medications (e.g., antibiotics).

This package is intended to replace and expand upon the `icdplus`
package. All prior functions and datasets contained in `icdplus` have
been placed in this package.

### Structure

Code used to generate common disease, medication or procedure groupings
are located in `R/disease_codes`, `R/drug_codes` or `R/proc_codes`,
respectively. These scripts should generate .csv files that reside in
`inst/extdata`. Note: these files will be stored externally to the
package and are saved as raw text files to manage code revisions on
GitHub, but will be installed with the package.

If code used to generate the common disease, medication and procedure
groupings require manually created raw csv files, these should be stored
in `data-raw/disease_codes`, `data-raw/drug_codes` or
`data-raw/proc_codes`, respectively.

## Examples - Exisiting `icdplus` codes

``` r
library(codeBuildr)
```

#### Crosswalk ICD-9-CM and ICD-10-CM codes

Covert ICD-9 code for C.diff to ICD-10

``` r
icd9_to_icd10("00845")
```

    ## [1] "A047"

Use `children()` from `icd` package to collect any nested codes

``` r
icd9_to_icd10("00845") %>% children()
```

    ## [1] "A047"  "A0471" "A0472"

Convert ICD-10 back to ICD-9 for C.diff

``` r
icd10_to_icd9("A047")
```

    ## [1] "00845"

#### Working with CCS codes

Find a ccs code from a term:

``` r
find_ccs("flu")
```

    ## # A tibble: 2 x 2
    ##   ccs_code ccs_category                   
    ##      <int> <chr>                          
    ## 1       55 Fluid and electrolyte disorders
    ## 2      123 Influenza

``` r
find_ccs("influenza")
```

    ## # A tibble: 1 x 2
    ##   ccs_code ccs_category
    ##      <int> <chr>       
    ## 1      123 Influenza

Get descriptions for CCS codes:

``` r
explain_ccs(c(1,100))
```

    ## # A tibble: 2 x 2
    ##   ccs_code ccs_category               
    ##      <int> <chr>                      
    ## 1        1 Tuberculosis               
    ## 2      100 Acute myocardial infarction

Get ICD-9 codes for a CCS group

``` r
get_icd_from_ccs(100)
```

    ##  [1] "4100"  "41000" "41001" "41002" "4101"  "41010" "41011" "41012" "4102" 
    ## [10] "41020" "41021" "41022" "4103"  "41030" "41031" "41032" "4104"  "41040"
    ## [19] "41041" "41042" "4105"  "41050" "41051" "41052" "4106"  "41060" "41061"
    ## [28] "41062" "4107"  "41070" "41071" "41072" "4108"  "41080" "41081" "41082"
    ## [37] "4109"  "41090" "41091" "41092"

Get ICD-10 codes for a CCS group

``` r
get_icd_from_ccs(100,icd_version = 10)
```

    ##  [1] "I2101" "I2102" "I2109" "I2111" "I2119" "I2121" "I2129" "I213"  "I214" 
    ## [10] "I219"  "I21A1" "I21A9" "I220"  "I221"  "I222"  "I228"  "I229"

## Examples - Loading Code Sets

#### Loading diagnosis code sets

See the available disease code sets

``` r
avail_disease_codes()
```

    ## # A tibble: 9 x 2
    ##   name                 description                       
    ##   <chr>                <chr>                             
    ## 1 ami                  Acute Myocardial Infarction       
    ## 2 asthma               Asthma                            
    ## 3 cdi                  Clostridioides difficile infection
    ## 4 cf_carrier           Cystic Fibrosis Carrier           
    ## 5 cf                   Cystic Fibrosis                   
    ## 6 covid                COVID-19                          
    ## 7 pancreatitis_acute   Acute Pancreatitis                
    ## 8 pancreatitis_chronic Chronic Pancreatitis              
    ## 9 pancreatitis         Pancreatitis

Load disease codes sets

``` r
load_disease_codes(c("ami","cdi"))
```

    ## $ami
    ## $ami$desc
    ## [1] "Acute Myocardial Infarction"
    ## 
    ## $ami$icd9_codes
    ##  [1] "410"   "4100"  "41000" "41001" "41002" "4101"  "41010" "41011" "41012"
    ## [10] "4102"  "41020" "41021" "41022" "4103"  "41030" "41031" "41032" "4104" 
    ## [19] "41040" "41041" "41042" "4105"  "41050" "41051" "41052" "4106"  "41060"
    ## [28] "41061" "41062" "4107"  "41070" "41071" "41072" "4108"  "41080" "41081"
    ## [37] "41082" "4109"  "41090" "41091" "41092"
    ## 
    ## $ami$icd10_codes
    ##  [1] "I21"   "I210"  "I2101" "I2102" "I2109" "I211"  "I2111" "I2119" "I212" 
    ## [10] "I2121" "I2129" "I213"  "I214"  "I219"  "I21A"  "I21A1" "I21A9" "I22"  
    ## [19] "I220"  "I221"  "I222"  "I228"  "I229" 
    ## 
    ## 
    ## $cdi
    ## $cdi$desc
    ## [1] "Clostridioides difficile infection"
    ## 
    ## $cdi$icd9_codes
    ## [1] "00845"
    ## 
    ## $cdi$icd10_codes
    ## [1] "A047"  "A0471" "A0472"

#### Loading RX (medication) code sets

See the available rx code sets

``` r
avail_rx_codes()
```

    ## [1] "abx_cdi_risk" "all_abx"

Load an rx code set

``` r
all_abx <- load_rx_codes("all_abx")

names(all_abx)
```

    ##  [1] "clindamycin"      "fluoroquinolones" "cephalosporins"   "monobactams"     
    ##  [5] "carbapenems"      "penicillins"      "macrolides"       "sulfonamides"    
    ##  [9] "other"            "tetracyclines"    "glycopeptides"    "nitroimidazoles"

``` r
head(all_abx$clindamycin)
```

    ## [1] "00003294210" "00003294211" "00003294220" "00003294221" "00003294222"
    ## [6] "00009022501"

#' NBER Diagnosis Crosswalk: ICD-10-CM to ICD-9-CM
#'
#' A dataset containing crosswalk values from ICD-10 diagnosis codes to ICD-9
#' diagnosis codes
#'
#' @format A data frame with 78,838 rows and 8 variables:
#' \describe{
#'   \item{icd10cm}{ICD-10-CM code}
#'   \item{icd9cm}{ICD-9-CM code}
#'   \item{flags}{(Describe "flags")}
#'   \item{approximate}{(Describe "approximate")}
#'   \item{no_map}{(Describe "no_map")}
#'   \item{combination}{(Describe "combination")}
#'   \item{scenario}{(Describe "scenario")}
#'   \item{choice_list}{(Describe "choice_list")}
#' }
#' @source \url{https://www.nber.org/research/data/icd-9-cm-and-icd-10-cm-and-icd-10-pcs-crosswalk-or-general-equivalence-mappings}
"icd10cm_to_9"

#' NBER Diagnosis Crosswalk: ICD-9-CM to ICD-10-CM
#'
#' A dataset containing crosswalk values from ICD-9 diagnosis codes to ICD-10
#' diagnosis codes
#'
#' @format A data frame with 23,912 rows and 8 variables:
#' \describe{
#'   \item{icd9cm}{ICD-9-CM code}
#'   \item{icd10cm}{ICD-10-CM code}
#'   \item{flags}{(Describe "flags")}
#'   \item{approximate}{(Describe "approximate")}
#'   \item{no_map}{(Describe "no_map")}
#'   \item{combination}{(Describe "combination")}
#'   \item{scenario}{(Describe "scenario")}
#'   \item{choice_list}{(Describe "choice_list")}
#' }
#' @source \url{https://www.nber.org/research/data/icd-9-cm-and-icd-10-cm-and-icd-10-pcs-crosswalk-or-general-equivalence-mappings}
"icd9cm_to_10"

#' NBER Procedure Crosswalk: ICD-10-PCS to ICD-9-PCS
#'
#' A dataset containing crosswalk values from ICD-10 procedure codes to ICD-9
#' procedure codes
#'
#' @format A data frame with 82,571 rows and 8 variables:
#' \describe{
#'   \item{icd10cm}{ICD-10-PCS procedure code}
#'   \item{icd9cm}{ICS-9-PCS procedure code}
#'   \item{flags}{(Describe "flags")}
#'   \item{approximate}{(Describe "approximate")}
#'   \item{no_map}{(Describe "no_map")}
#'   \item{combination}{(Describe "combination")}
#'   \item{scenario}{(Describe "scenario")}
#'   \item{choice_list}{(Describe "choice_list")}
#' }
#' @source \url{https://www.nber.org/research/data/icd-9-cm-and-icd-10-cm-and-icd-10-pcs-crosswalk-or-general-equivalence-mappings}
"icd10pcs_to_9"

#' NBER Procedure Crosswalk: ICD-9-PCS to ICD-10-PCS
#'
#' A dataset containing crosswalk values from ICD-9 procedure codes to ICD-10
#' procedure codes
#'
#' @format A data frame with 69,366 rows and 8 variables:
#' \describe{
#'   \item{icd9cm}{ICD-9-PCS procedure code}
#'   \item{icd10cm}{ICD-10-PCS procedure code}
#'   \item{flags}{(Describe "flags")}
#'   \item{approximate}{(Describe "approximate")}
#'   \item{no_map}{(Describe "no_map")}
#'   \item{combination}{(Describe "combination")}
#'   \item{scenario}{(Describe "scenario")}
#'   \item{choice_list}{(Describe "choice_list")}
#' }
#' @source \url{https://www.nber.org/research/data/icd-9-cm-and-icd-10-cm-and-icd-10-pcs-crosswalk-or-general-equivalence-mappings}
"icd9pcs_to_10"

#' Clinical Classification Software: ICD-9-CM Diagnosis CCS codes
#'
#' A dataset containing CCS codes for ICD-9 diagnoses
#'
#' @format A data frame with 15,073 rows and 4 variables:
#' \describe{
#'   \item{icd9cm}{ICD-9-CM diagnosis code}
#'   \item{ccs_code}{CCS code number}
#'   \item{ccs_description}{CCS Code Description}
#'   \item{icd_description}{ICD-10-CM Description}
#' }
#' @source Version: 2015 \url{https://www.hcup-us.ahrq.gov/toolssoftware/ccs/ccs.jsp}
"ccs9_mappings"


#' Clinical Classification Software: ICD-10-CM Diagnosis CCS codes
#'
#' A dataset containing CCS codes for ICD-10 diagnoses
#'
#' @format A data frame with 72,446 rows and 8 variables:
#' \describe{
#'   \item{icd10cm}{ICD-10-CM diagnosis code}
#'   \item{ccs_code}{CCS code number}
#'   \item{icd_description}{ICD-10-CM Description}
#'   \item{ccs_description}{CCS Code Description}
#'   \item{ccs_multi_lvl_1_code}{CCS Multi-level Level 1 Code}
#'   \item{ccs_multi_lvl_1_description}{CCS Multi-level Level 1 Description}
#'   \item{ccs_multi_lvl_2_code}{CCS Multi-level Level 2 Code}
#'   \item{ccs_multi_lvl_2_description}{CCS Multi-level Level 2 Description}
#' }
#' @source Version: CCS v2019.1 \url{https://www.hcup-us.ahrq.gov/toolssoftware/ccsr/ccsr_archive.jsp#ccsr}
"ccs10_mappings"

#' Clinical Classification Software: CCS Diagnosis Code Labels
#'
#' A dataset containing labels for CCS diagnosis groups
#'
#' @format A data frame with 285 rows and 2 variables:
#' \describe{
#'   \item{ccs_code}{CCS code number}
#'   \item{ccs_category}{CCS Code Group Description}
#' }
#' @source Version: 2015 \url{https://www.hcup-us.ahrq.gov/toolssoftware/ccs/ccs.jsp}
"ccs_labels"

#' AHRQ Elixhauser Comorbidity Score Indicators for ICD-10 Codes
#'
#' A dataset containing corrected indicator lists of ICD-10 codes for each comorbidity.
#' Codes were taken from software lists from 2016-2022. Details of construction
#' can be found in the comorbidity repository.
#'
#' @format A list with 30 vectors named for each
#' @source \url{https://www.hcup-us.ahrq.gov/toolssoftware/comorbidityicd10/comorbidity_icd10.jsp#overview}
"icd10_map_ahrq_corrected"

#' ICD10 Labels
#'
#' A dataset containing ICD-10-CM codes along with short and long descriptions. This
#' dataset was created from the base data inside the icd package from `icd::icd10cm2019`
#' and appended with CMS order labels from 2017-2022
#'
#' @format A data frame with 95,711 rows and 4 variables:
#' \describe{
#'   \item{code}{ICD-10-CM code}
#'   \item{billable}{Indicator if the code is a billable code}
#'   \item{short_desc}{Short code description}
#'   \item{long_desc}{Long code description}
#' }
#' @source \url{https://www.cms.gov/medicare/icd-10/2022-icd-10-cm}
"icd10cm_labels"


#' ALL ICD9 & ICD10 Labels
#'
#' A dataset containing labels for all ICD9 & ICD10 codes
#'
#' @format A data frame with 113,272 rows and 3 variables:
#' \describe{
#'   \item{dx}{ICD-9-CM or ICD-10-CM code}
#'   \item{dx_ver}{Indicator of ICD-9 or ICD-10}
#'   \item{desc}{Code description}
#' }
#' @source \url{https://www.cms.gov/medicare/icd-10/2022-icd-10-cm}
"all_icd_labels"

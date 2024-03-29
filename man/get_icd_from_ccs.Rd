% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/crosswalk_funcs.R
\name{get_icd_from_ccs}
\alias{get_icd_from_ccs}
\title{Get ICD codes corresponding to ccs codes}
\usage{
get_icd_from_ccs(ccs_list, icd_version = 9)
}
\arguments{
\item{ccs_list}{A vector of CCS values}

\item{icd_version}{An integer value for the icd version to return}
}
\description{
`get_icd_from_ccs` returns the icd-9 or icd-10 codes corresponding
to a vector of CCS categories
}
\examples{
get_icd_from_ccs(c(20,22))
get_icd_from_ccs(c(20,22),icd_version=10)
}

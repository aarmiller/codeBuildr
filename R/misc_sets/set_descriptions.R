

descriptions <- tibble::tribble(~name, ~description,
                                "abx_classes", "Names and classes of antibiotics",
                                "cftr_set", "Set of conditions CF carriers and CF patients are at increased risk for")



write_csv(descriptions,"inst/extdata/misc_list.csv")

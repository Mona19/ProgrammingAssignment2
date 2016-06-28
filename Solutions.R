##Solutions for q8,9,10
> source("rankAll.R")
> r <- rankall("heart attack", 4)
> as.character(subset(r, state == "HI")$hospital)
[1] "CASTLE MEDICAL CENTER"
> r <- rankall("pneumonia", "worst")
> as.character(subset(r, state == "NJ")$hospital)
[1] "BERGEN REGIONAL MEDICAL CENTER"
> r <- rankall("heart failure", 10)
> as.character(subset(r, state == "NV")$hospital)
[1] "RENOWN SOUTH MEADOWS MEDICAL CENTER"
##Solutions for q 4,5,6 and 7
>   data <- read.csv("outcome-of-care-measures.csv")
> source("rankHospital.R")
> rankhospital("NC", "heart attack", "worst")
[1] "WAYNE MEMORIAL HOSPITAL"
> rankhospital("WA", "heart attack", 7)
[1] "YAKIMA VALLEY MEMORIAL HOSPITAL"
> rankhospital("TX", "pneumonia", 10)
[1] "SETON SMITHVILLE REGIONAL HOSPITAL"
> rankhospital("NY", "heart attack", 7)
[1] "BELLEVUE HOSPITAL CENTER"
##Solution for question 1,2 and 3
> source("rankHospital.R")
> rankhospital("NC", "heart attack", "worst")
[1] "WAYNE MEMORIAL HOSPITAL"
> rankhospital("WA", "heart attack", 7)
[1] "YAKIMA VALLEY MEMORIAL HOSPITAL"
> rankhospital("TX", "pneumonia", 10)
[1] "SETON SMITHVILLE REGIONAL HOSPITAL"
> rankhospital("NY", "heart attack", 7)
[1] "BELLEVUE HOSPITAL CENTER"

agecount <- function(age = NULL) {
    # check age is non-NULL; else throw error
    if (!(class(age)==class(1))) {
        stop('enter a valid age')
        return(0)
    }
    # read data
    hdata <- readLines('homicides.txt')
    m <- regexec('.* ([0-9]{1,3}) years old.*', hdata)
    matches <- regmatches(hdata, m)
    ages <- sapply(matches, function(l) l[2])
    # extract victim ages; ignore where none given
    if (age %in% ages) {
        t_ages <- table(ages)
        cnt <- as.integer(t_ages[as.character(age)])
        return(cnt)
    } else {
        return(0)
    }
}


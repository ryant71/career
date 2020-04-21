complete <- function(directory, id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
      
    ## Return a data frame of the form:
    ## id nobs
    ## 1  117
    ## 2  1041
    ## ...
    ## where 'id' is the monitor ID number and 'nobs' is the
    ## number of complete cases

    mydata = data.frame()
    for(item in id) {
        file = sprintf("%s/%03d.csv", directory, item)
        data = read.csv(file)
        #gdata = complete.cases(data)
        #good = data[gdata,]
        good = data[complete.cases(data),]
        rows = nrow(good)
        mydata <- rbind(mydata, c(item, rows))
    }
    names(mydata) <- c("id", "nobs")
    return(mydata)
}

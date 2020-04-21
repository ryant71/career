corr <- function(directory, threshold = 0) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'threshold' is a numeric vector of length 1 indicating the
    ## number of completely observed observations (on all
    ## variables) required to compute the correlation between
    ## nitrate and sulfate; the default is 0

    ## Return a numeric vector of correlations

    cordata <- c()

    files <- list.files(directory)
    for(file in files){
        # get the file and its data
        file <- sprintf("%s/%s", directory, file)
        data <- read.csv(file)

        # get the complete data (and count) for that file
        good <- data[complete.cases(data),]
        rows <- nrow(good)

        # only calc correlation on files with more than
        # 'threshold' complete rows
        if(rows > threshold){
            correlation <- cor(good$sulfate, good$nitrate)
            cordata <- append(cordata, correlation)
        }
    }

    # if no data (no files with number of rows > threshold
    if(length(cordata) < 1){
        cordata <- vector(mode="numeric", length=0)
    }

    # finished
    return(cordata)
}

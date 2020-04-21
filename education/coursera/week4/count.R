
count <- function(cause = NULL) {
    # check cause is non-NULL; else throw error
    # check that cause is allowed; else throw error
    causes <- c('asphyxiation','blunt force','other','shooting','stabbing','unknown')

    if (!(cause %in% causes)) {
        stop('bad cause')
        return(0)
    }
    if (cause == "asphyxiation") reg <- '[A|a]sphyxiation'
    if (cause == "blunt force") reg <- '[B|b]lunt [F|f]orce'
    if (cause == "other") reg <- '[O|o]ther'
    if (cause == "shooting") reg <- '[S|s]hooting'
    if (cause == "stabbing") reg <- '[S|s]tabbing'
    if (cause == "unknown") reg <- '[U|u]nknown'

    reg <- sprintf("<dd>Cause: %s</dd>", reg)

    # read homicides data file
    h <- readLines('homicides.txt')

    # extract cause of death
    ret <- length(grep(reg, h))

    # return integer count of homicides with that cause
    return(ret)

}


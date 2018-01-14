#' removePHI
#'
#' removes from a table columns that may contain personally-idenifiable information
#'
#' @param db a table containing columns with potentially personally-identifiable
#'   information
#'
#' @return table with PHI columns removed
#' @export
#'
#' @examples
#' db <- data.frame(name = c("sehj","nikhil"), phone1 = c(12348,421279), color = c("red","yellow"), age = c(10,15))
#' removePHI(db)
removePHI <- function(db) {
  phiCols <- grep("name|label|phone1|phone2|phone3|new_phone|instanceName|audit", names(db), value = TRUE)
  outputDb <- db[, !names(db) %in% (phiCols), drop = F]
  return(outputDb)
}

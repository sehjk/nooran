#' removeProcessCols
#'
#' removes columns that are intermediate columns not required for analysis.
#'
#' @param db a table that has intermediate columns generated either by surveycto
#'   or for surveycto
#'
#' @return a table with the process columns removed
#' @export
#'
#' @examples
#' db <- data.frame(name_check = c("sehj","k"), subscriberid = c(1,42), sim = c("bite","shark"), sum = c(1,5))
#' removeProcessCols(db)
removeProcessCols <- function(db){
  processCols <- grep("check|subscriberid|simid|note", names(db), value = TRUE)
  outputDb <- db[, !names(db) %in% (processCols)]
  return(outputDb)
}

#' prop_test
#'
#' prop_test returns the test summary for a column in a given data.table
#'
#' @param db a data.table containing a trained column and a column of interest
#' @param col the column which you want to check successes for
#'
#' @return a test summary of prop.test
#' @export
#'
#' @examples
#' test <- data.frame(trained = sample(c(0,1),100, replace = TRUE), outcome = sample(c(0,1), 100, replace = TRUE))
#' prop_test(test, "outcome")
prop_test <- function(db, col){
  table <- table(db[, c("trained",col), drop = F])
  test <- prop.test(table)
  table <- table[nrow(table):1,ncol(table):1]
  return(test)
}

#' @title View the dataset filename for MSigDB
#' @export listMSigDB
#' @author DoubleHelix
#' @description View the dataset filename for MSigDB.
#' @param gsMSigDB A list object. A data object from the R package csGeneset.
#' @return A vector
#'
#' @examples
#' listMSigDB()
listMSigDB <- function(gsMSigDB){

  return(names(gsMSigDB))
}

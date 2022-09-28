#' @title View the dataset filename for MSigDB
#' @export listMSigDB
#' @author DoubleHelix
#' @description View the dataset filename for MSigDB.
#' @return A vector
#'
#' @examples
#' listMSigDB()
listMSigDB <- function(){
  return(names(gsMSigDB))
}

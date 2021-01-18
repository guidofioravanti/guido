#' @title Tipi utilizzati per i dati di temperatura e precipitazione
#' 
#' Questa e' la specifica dei tipi che viene passata a readr::red_delim per la lettura dei dati giornalieri di temperatura e precipitazione
#' 
#' @export
YYMMDD_TYPE<-readr::cols(yy=readr::col_integer(),mm=readr::col_integer(),dd=readr::col_integer(),.default = readr::col_double())
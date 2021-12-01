#' leggi_file
#' 
#' @export
leggi_file<-function(pattern="",output="",delim=";",col_names=TRUE,col_types=NULL,...){
  
  list.files(pattern=pattern,...)->ffile
  
  if(!length(ffile)) return()
  
  stopifnot(output %in% c("","_dfr","_dfc"))
  
  utils::getFromNamespace(paste0("map",output),ns= "purrr")->fun_map
  
  fun_map(ffile,.f=~(readr::read_delim(.,delim=delim,col_names = col_names,col_types=col_types)))
  
}
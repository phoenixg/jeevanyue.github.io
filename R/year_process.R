# 一年进度
year_process <- function(date = Sys.Date(), label = "year process: "){
  week_over_num <- lubridate::week(date)
  week_over_per <- paste0(round(week_over_num/53,2)*100, "%")
  week_over <- "▓"
  progress_week_over <- paste(rep(week_over,ceiling(week_over_num/2)), collapse = "")
  week_ <- "░"
  progress_week_ <- paste(rep(week_, 27-ceiling(week_over_num/2)), collapse = "")
  result <- paste0("year process: ",progress_week_over, progress_week_, " ", week_over_per, collapse = "")
  return(result)
}
year_process()

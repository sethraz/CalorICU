#' Convert a hourly meteorological table in wide format from the IMN of Costa Rica, to a time series format
#' @export
#' @param x is a data table from excel or csv
#' @param var.type the variable is: pp (precipitation), temp (temperature), hr (relative humidity) or wind
#' @return a data.frame with a date field
ts_format_hr <- function(x,var.type){
  #Inicialización de variables
  dat <- NULL
  aaaa <- array()
  mm   <- array()
  dd   <- array()
  hrs  <- array()
  temp <- array()
  pp   <- array()
  hr   <- array()
  wind <- array()
  k    <- 1
  hrs.label <- c("01:00:00", "02:00:00","03:00:00","04:00:00","05:00:00", "06:00:00",
                 "07:00:00", "08:00:00","09:00:00","10:00:00","11:00:00", "12:00:00",
                 "13:00:00", "14:00:00","15:00:00","16:00:00","17:00:00", "18:00:00",
                 "19:00:00", "20:00:00","21:00:00","22:00:00","23:00:00","00:00:00")

  dim(x)

  for(i in 1:dim(x)[1]){
    for (j in 4:dim(x)[2]){
      #i=1
      aaaa[k] <- x[i,1]
      mm[k]   <- x[i,2]
      dd[k]   <- x[i,3]
      hrs[k]  <- hrs.label[(j-3)]

      if (var.type =="pp"){
        pp[k] <- x[i,j] #Precipitacion
      }
      if (var.type == "temp"){
        temp[k] <- x[i,j] #Temp
      }
      if (var.type == "hr"){
        hr[k] <- x[i,j] #Humedad Relativa
      }

      k <- k+1
    }
  }

# Se selecciona según el tipo de variable
  if  (var.type == "pp"){
    dat <- data.frame(aaaa,mm,dd,hrs,pp)
    dat$fecha <- as.POSIXct(paste0(dat$aaaa,'-',dat$mm,'-',dat$dd,' ',dat$hrs),
                            format="%Y-%m-%d %H:%M:%S") #Convierte en campo de tiempo
  }

  if  (var.type == "temp"){
    dat <- data.frame(aaaa,mm,dd,hrs,temp)
    dat$fecha <- as.POSIXct(paste0(dat$aaaa,'-',dat$mm,'-',dat$dd,' ',dat$hrs),
                            format="%Y-%m-%d %H:%M:%S") #Convierte en campo de tiempo
  }

  if  (var.type == "hr"){
    dat <- data.frame(aaaa,mm,dd,hrs,hr)
    dat$fecha <- as.POSIXct(paste0(dat$aaaa,'-',dat$mm,'-',dat$dd,' ',dat$hrs),
                            format="%Y-%m-%d %H:%M:%S") #Convierte en campo de tiempo
  }

  dat
}

#'To merge big data sets with a lot of rows and an arbitrary number of columns
#' @export
#' @param df1 first data frame
#' @param df2 second data frame
#' @return a merge data frame with all the fields from the used data frames
quickmerge <- function(df1,df2) {
  df1.names <- names(df1)
  df2.names <- names(df2)
  df2.add <- setdiff(df1.names, df2.names)
  df1.add <- setdiff(df2.names, df1.names)
  if(length(df2.add) > 0) {
    for(i in 1:length(df2.add)) {
      df2[df2.add[i]] <- NA
    }
  }
  if(length(df1.add) > 0) {
    for(i in 1:length(df1.add)) {
      df1[df1.add[i]] <- NA
    }
  }
  return(rbind(df1, df2))
}

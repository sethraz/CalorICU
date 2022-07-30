#' @title e73123_pp_raw
#' @description Records of hourly precipitation data in the station 73123,
#'    from 2019-08-31 to 2022-05-19 in wide format. Administraded by the IMN Costa Rica.
#' @format A data frame with 980 rows and 27 variables:
#' \describe{
#'   \item{\code{...1}}{a number denoting the year}
#'   \item{\code{...2}}{a number denoting the month}
#'   \item{\code{...3}}{a number denoting the day}
#'   \item{\code{...4}}{a number denoting precipitation at hour "01:00:00"}
#'   \item{\code{...5}}{a number denoting precipitation at hour "02:00:00"}
#'   \item{\code{...6}}{a number denoting precipitation at hour "03:00:00"}
#'   \item{\code{...7}}{a number denoting precipitation at hour "04:00:00"}
#'   \item{\code{...8}}{a number denoting precipitation at hour "05:00:00"}
#'   \item{\code{...9}}{a number denoting precipitation at hour "06:00:00"}
#'   \item{\code{...10}}{a number denoting precipitation at hour "07:00:00"}
#'   \item{\code{...11}}{a number denoting precipitation at hour "08:00:00"}
#'   \item{\code{...12}}{a number denoting precipitation at hour "09:00:00"}
#'   \item{\code{...13}}{a number denoting precipitation at hour "10:00:00"}
#'   \item{\code{...14}}{a number denoting precipitation at hour "11:00:00"}
#'   \item{\code{...15}}{a number denoting precipitation at hour "12:00:00"}
#'   \item{\code{...16}}{a number denoting precipitation at hour "13:00:00"}
#'   \item{\code{...17}}{a number denoting precipitation at hour "14:00:00"}
#'   \item{\code{...18}}{a number denoting precipitation at hour "15:00:00"}
#'   \item{\code{...19}}{a number denoting precipitation at hour "16:00:00"}
#'   \item{\code{...20}}{a number denoting precipitation at hour "17:00:00"}
#'   \item{\code{...21}}{a number denoting precipitation at hour "18:00:00"}
#'   \item{\code{...22}}{a number denoting precipitation at hour "19:00:00"}
#'   \item{\code{...23}}{a number denoting precipitation at hour "20:00:00"}
#'   \item{\code{...24}}{a number denoting precipitation at hour "21:00:00"}
#'   \item{\code{...25}}{a number denoting precipitation at hour "22:00:00"}
#'   \item{\code{...26}}{a number denoting precipitation at hour "23:00:00"}
#'   \item{\code{...27}}{a number denoting precipitation at hour "00:00:00"}
#'}
#' @source \url{http://imn.ac.cr}
"e73123_pp_raw"


#' @title e73123_pp
#' @description Clean meteorological dataset from the station 73123 from the IMN Costa Rica
#'    with precipitation data from 2019-08-31 to 2022-05-19.
#' @format A data frame with 23520 rows and 6 variables:
#' \describe{
#'   \item{\code{aaaa}}{a integer denoting the year}
#'   \item{\code{mm}}{a integer denoting the month}
#'   \item{\code{dd}}{a integer denoting the day}
#'   \item{\code{hrs}}{a character denoting the hour}
#'   \item{\code{pp}}{a number of the hourly precipitation}
#'   \item{\code{fecha}}{a date and time of the record}
#'}
#' @source \url{http://imn.ac.cr}
"e73123_pp"


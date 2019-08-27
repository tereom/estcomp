## code to prepare `rama_2019` dataset goes here
# http://www.aire.cdmx.gob.mx/default.php?opc=%27aKBh%27
# http://www.aire.cdmx.gob.mx/

library(here)
library(tidyverse)
library(readxl)
library(fs)

# pm2.5
pm25_2019 <- read_excel(here("data-raw", "19RAMA", "2019PM25.xls"),
    na = "-99") %>%
    mutate(FECHA = lubridate::as_date(FECHA)) %>%
    rename(date = FECHA, hour = HORA)
usethis::use_data(pm25_2019, overwrite = TRUE)


paths <- dir_ls(here::here("data-raw", "RAMA"), glob = "*.xls",
    recurse = TRUE)
read_excel_csv <- function(path){
    n_col_num  <- path %>%
        read_excel(, na = "-99", n_max = 1) %>%
        ncol() - 1
    df <- read_excel(path, na = "-99", col_types = c("date",
        rep("numeric", n_col_num))) %>%
        mutate(FECHA = lubridate::as_date(FECHA)) %>%
        rename(date = FECHA, hour = HORA)
    path_csv <- path %>%
        path_file() %>%
        path_ext_set("csv") %>%
        here("data-raw", "rama-csv", .)
    write_csv(df, path = path_csv)
}
walk(paths, read_excel_csv)

paths <- dir("data-raw/rama-csv", pattern = "\\.csv$", full.names = TRUE)



# monitoring stations
download.file("http://www.aire.cdmx.gob.mx/opendata/catalogos/cat_estacion.csv",
    here("data-raw", "cat_estaciones.csv"))

monitoring_stations <- read_csv(here("data-raw/", "cat_estaciones.csv"),
    skip = 1, locale = readr::locale(encoding = "ISO-8859-1")) %>%
    rename(station_code = cve_estac, station_name = nom_estac,
        lon = longitud, lat = latitud, notes = obs_estac)
usethis::use_data(monitoring_stations, overwrite = TRUE)

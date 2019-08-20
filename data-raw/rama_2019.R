## code to prepare `rama_2019` dataset goes here
# http://www.aire.cdmx.gob.mx/default.php?opc=%27aKBh%27
# http://www.aire.cdmx.gob.mx/

library(here)
library(tidyverse)

# pm2.5
pm25_2019 <- read_excel(here("data-raw", "19RAMA", "2019PM25.xls"),
    na = "-99") %>%
    mutate(FECHA = lubridate::as_date(FECHA)) %>%
    rename(date = FECHA, hour = HORA)
usethis::use_data(pm25_2019, overwrite = TRUE)


# monitoring stations
download.file("http://www.aire.cdmx.gob.mx/opendata/catalogos/cat_estacion.csv",
    here("data-raw", "cat_estaciones.csv"))

monitoring_stations <- read_csv(here("data-raw/", "cat_estaciones.csv"),
    skip = 1, locale = readr::locale(encoding = "ISO-8859-1")) %>%
    rename(station_code = cve_estac, station_name = nom_estac,
        lon = longitud, lat = latitud, notes = obs_estac)
usethis::use_data(monitoring_stations, overwrite = TRUE)

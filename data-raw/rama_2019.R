## code to prepare `rama_2019` dataset goes here
# http://www.aire.cdmx.gob.mx/default.php?opc=%27aKBh%27
# http://www.aire.cdmx.gob.mx/

pm25_2019 <- read_excel("data-raw/19RAMA/2019PM25.xls", na = "-99")

usethis::use_data(pm25_2019)

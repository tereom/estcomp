library(tidyverse)

# source: https://www.inee.edu.mx/bases-de-datos-inee-2019/#indicadores
## code to prepare `enlace` dataset goes here
download.file("https://www.inee.edu.mx/wp-content/uploads/2019/05/ENLACE_prim_2013.csv",
    destfile = "data-raw/enlace/ENLACE_prim_2013.csv")

enlacep_2013 <- read_csv("data-raw/enlace/ENLACE_prim_2013.csv",
    na = "S/D", locale = readr::locale(encoding = "ISO8859-1"))
glimpse(enlacep_2013)

# 281 parsing failures

usethis::use_data(enlacep_2013)


enlacep_2013_3 <- enlacep_2013 %>%
    select(CVE_ENT, PUNT_ESP_3:PUNT_FCE_3, ALUM_NOCONFIABLE_3, ALUM_EVAL_3)
usethis::use_data(enlacep_2013_3)

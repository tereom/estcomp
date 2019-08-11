## code to prepare `edu_inegi` dataset goes here
library(mxmaps)
library(fs)


# Download data
# source: https://www.inegi.org.mx/programas/intercensal/2015/default.html#Tabulados
edu_path <- "https://www.inegi.org.mx/contenidos/programas/intercensal/2015/tabulados/06_educacion_"
home_path <- "https://www.inegi.org.mx/contenidos/programas/intercensal/2015/tabulados/12_hogares_"
marital_path <- "https://www.inegi.org.mx/contenidos/programas/intercensal/2015/tabulados/11_situacion_conyugal_"
fertility_path <- "https://www.inegi.org.mx/contenidos/programas/intercensal/2015/tabulados/02_fecundidad_"

download_files_inegi <- function(state_abbr, path, local) {
    path_local <- path("data-raw/municipios/", local)
    use_directory(path_local)
    state_path <- paste0(path, state_abbr, ".xls")
    download.file(state_path, destfile = fs::path(path_local,
        path_file(state_path)))
}


state_abbrs <- df_mxstate %>%
    pull(state_abbr_official) %>%
    tolower %>%
    str_remove(fixed(".")) %>%
    str_remove(" ")

state_abbrs[4] <- "cam"
state_abbrs[9] <- "cdmx"

walk(state_abbrs, ~download_files_inegi(., fertility_path, "fertility"))

# read and tidy data
df_municipio_codes <- df_mxmunicipio %>%
    as_tibble() %>%
    select(state_code:state_name, state_abbr, municipio_name)

add_codes <- function(data) {
    data_codes <- data %>% mutate(
        state_code = str_sub(state, 1, 2),
        municipio_code = str_sub(municipio, 1, 3)
    ) %>%
        left_join(df_municipio_codes,
            by = c("state_code", "municipio_code")) %>%
        select(-state, -municipio) %>%
        select(state_code:municipio_name, everything())
    return(data_codes)
}

read_edu <- function(state_path) {
    # df_readwrite <- readxl::read_excel(state_path, sheet = 2, skip = 8) %>%
    #     select(state = ...1, municipio = ...2, est = ...3,
    #         reads_writes = Total...7) %>%
    #     filter(!is.na(state), municipio != "Total", est == "Valor") %>%
    #     select(-est)
    df_schoolyrs <- readxl::read_excel(state_path, sheet = 5, skip = 9) %>%
        select(state = ...1, municipio = ...2, sex = ...3, est = ...4,
            pop_15 = ...5, no_school = ...6, total = ...7, preschool = ...8,
            elementary = ...9, secondary = Total, highschool = ...14,
            higher_edu = ...15, other = ...16, schoolyrs = ...17) %>%
        mutate_at(vars(preschool:secondary), .funs = ~ . * total / 100) %>%
        filter(!is.na(state), municipio != "Total", est == "Valor",
            sex != "Total") %>%
        select(-est, - total)
    # df_edu <- df_schoolyrs %>%
    #     spread(sex, schoolyrs) %>%
    #     rename(schoolyrs_male = Hombres, schoolyrs_female = Mujeres,
    #         schoolyrs_total = Total) %>%
    #     inner_join(df_readwrite)
    df_schoolyrs_codes <- add_codes(df_schoolyrs)
    return(df_schoolyrs_codes)
}
edu_paths <- dir_ls(path("data-raw", "municipios", "edu"))
df_edu <- map_df(edu_paths, read_edu)
usethis::use_data(df_edu, overwrite = TRUE)

read_home <- function(state_path) {
    df_home <- readxl::read_excel(path = state_path, sheet = 3, skip = 8) %>%
        select(state = ...1, municipio = ...2, sex_lead = ...3, homes = ...4,
            family_homes = Total...7, no_family_homes = Total...12,
            est = ...5, nuclear = Nuclear, unipersonal = Unipersonal) %>%
        filter(!is.na(state), municipio != "Total", sex_lead == "Total",
            est == "Valor", homes == "Hogares") %>%
        select(-est, -sex_lead, -homes)
    df_home_codes <- add_codes(df_home)
    return(df_home_codes)
}

home_paths <- dir_ls(path("data-raw", "municipios", "home"))
df_home <- map_df(home_paths, read_home)
usethis::use_data(df_edu, overwrite = TRUE)


read_marital <- function(state_path) {
    df_marital <- readxl::read_excel(path = state_path, sheet = 2, skip = 7) %>%
        select(state = ...1, municipio = ...2, sex = ...3, age_group = ...4,
            est = ...5, pop = ...6, single = Soltera, married = Casada,
            living_w_partner = `En unión libre`,
            separated = `Separada, divorciada o viuda`,
            other = `No especificado`) %>%
        filter(!is.na(state), municipio != "Total", est == "Valor") %>%
            # age_group != "Total", sex != "Total") %>%
        select(-est)
    df_marital_codes <- add_codes(df_marital)

}

marital_paths <- dir_ls(path("data-raw", "municipios", "marital"))
df_marital <- map_df(marital_paths, read_marital)
usethis::use_data(df_marital, overwrite = TRUE)


read_fertility <- function(state_path) {
    df_fertility <- readxl::read_excel(path = state_path, sheet = 2, skip = 7) %>%
        select(state = ...1, size_localidad = ...2, est = ...3,
            `15-19 años`:`45-49 años`, global_rate = ...11) %>%
        filter(!is.na(state), size_localidad != "Total")
    names_yrs <- str_c("age_", str_extract(names(df_fertility),
        "[0-9]*-[0-9]*")) %>%
        str_replace("-", "_")
    names(df_fertility)[4:8] <- names_yrs[4:8]
    return(df_fertility)

}

fertility_paths <- dir_ls(path("data-raw", "municipios", "fertility"))
df_fertility <- map_df(fertility_paths, read_fertility)
usethis::use_data(df_fertility, overwrite = TRUE)

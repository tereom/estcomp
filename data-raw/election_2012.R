## code to prepare `elections_2012` dataset goes here
library(tidyverse)
library(quickcountmx)
library(mxmaps)

df_statecodes <- df_mxstate %>%
    select(state_code = region, state_name, state_abbr)

election_2012 <- nal_2012 %>%
    mutate(
        state_code = str_c("0", edo_id) %>% str_sub(start = -1L-1),
        region = case_when(
            edo_id %in% c(2, 3, 8, 10, 25, 26) ~ "noroeste",
            edo_id %in% c(5, 19, 28) ~ "noreste",
            edo_id %in% c(6, 14, 16, 18) ~ "oeste",
            edo_id %in% c(13, 21, 29, 30) ~ "este",
            edo_id %in% c(1, 11, 22, 24, 32) ~ "centronorte",
            edo_id %in% c(9, 15, 17) ~ "centrosur",
            edo_id %in% c(7, 12, 20) ~ "suroeste",
            TRUE ~ "sureste"),
        votes_winner = pmax(pri_pvem, pan, panal, prd_pt_mc, otros),
        winner = case_when(
            pri_pvem == votes_winner ~ "pri_pvem",
            pan == votes_winner ~ "pan",
            panal == votes_winner ~ "panal",
            prd_pt_mc == votes_winner ~ "prd_pt_mc",
            pri_pvem == votes_winner ~ "otros"
        )
        ) %>%
    mutate_at(vars(pri_pvem:otros), list(pct = ~round(100 *./total))) %>%
    left_join(df_statecodes, by = "state_code") %>%
    select(state_code, state_name, state_abbr,
        district_loc_17 = distrito_loc_17, district_fed_17 = distrito_fed_17,
        polling_id = casilla_id, section = seccion, region,
        polling_type = casilla, section_type = tipo_seccion, pri_pvem:total,
        nominal_list = ln, pri_pvem_pct:otros_pct, winner)


set.seed(12938938)
election_sub_2012 <- election_2012 %>%
    sample_n(1500)


usethis::use_data(election_2012, overwrite = TRUE)
usethis::use_data(election_sub_2012, overwrite = TRUE)

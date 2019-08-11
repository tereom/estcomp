#' ENLACE 2013: elementary school standarized tests results
#'
#' A data set containing the results of the ENLACE achievement test
#' corresponding to 2013. Description
#' \url{https://www.inee.edu.mx/wp-content/uploads/2019/05/FD_ENLACE_PRIM_2013.xlsx}.
#'
#' @format A data frame with 83680 rows and 81 variables:
#' \describe{
#'   \item{CVE_ENT}{Clave la entidad federativa}
#'   \item{NOM_ENT}{Entidad federativa}
#'   \item{CCT}{Clave de Centro de Trabajo}
#'   \item{TURNO}{Turno}
#'   \item{ESCUELA}{Nombre de la escuela}
#'   \item{TIPO}{Tipo de servicio}
#'   \item{CVE_MUN}{Clave del municipio}
#'   \item{NOM_MUN}{Nombre del municipio}
#'   \item{CVE_LOC}{Clave de localidad}
#'   \item{NOM_LOC}{Nombre de la localidad}
#'   \item{PUNT_ESP_3}{Puntaje de los alumnos de tercer grado en Español}
#'   \item{PUNT_MAT_3}{Puntaje de los alumnos de tercer grado en Matemáticas}
#'   \item{PUNT_FCE_3}{Puntaje de los alumnos de tercer grado en Formación Cívica y Ética}
#'   \item{PUNT_ESP_4}{Puntaje de los alumnos de cuarto grado en Español}
#'   \item{PUNT_MAT_4}{Puntaje de los alumnos de cuarto grado en Matemáticas}
#'   \item{PUNT_FCE_4}{Puntaje de los alumnos de cuarto grado en Formación Cívica y Ética}
#'   \item{PUNT_ESP_5}{Puntaje de los alumnos de quinto grado en Español}
#'   \item{PUNT_MAT_5}{Puntaje de los alumnos de quinto grado en Matemáticas}
#'   \item{PUNT_FCE_5}{Puntaje de los alumnos de quinto grado en Formación Cívica y Ética}
#'   \item{PUNT_ESP_6}{Puntaje de los alumnos de sexto grado en Español}
#'   \item{PUNT_MAT_6}{Puntaje de los alumnos de sexto grado en Matemáticas}
#'   \item{PUNT_FCE_6}{Puntaje de los alumnos de sexto grado en Formación Cívica y Ética}
#'   \item{POR_N1_ESP_3}{Porcentaje de alumnos de tercer grado en Español en el nivel I - con logro Insuficiente}
#'   \item{POR_N2_ESP_3}{Porcentaje de alumnos de tercer grado en Español en el nivel II - con logro Elemental}
#'   \item{POR_N3_ESP_3}{Porcentaje de alumnos de tercer grado en Español en el nivel III - con logro Bueno}
#'   \item{POR_N4_ESP_3}{Porcentaje de alumnos de tercer grado en Español en el nivel IV - con logro Excelente}
#'   \item{POR_N1_ESP_4}{Porcentaje de alumnos de cuarto grado en Español en el nivel I - con logro Insuficiente}
#'   \item{POR_N2_ESP_4}{Porcentaje de alumnos de cuarto grado en Español en el nivel II - con logro Elemental}
#'   \item{POR_N3_ESP_4}{Porcentaje de alumnos de cuarto grado en Español en el nivel III - con logro Bueno}
#'   \item{POR_N4_ESP_4}{Porcentaje de alumnos de cuarto grado en Español en el nivel IV - con logro Excelente}
#'   \item{POR_N1_ESP_5}{Porcentaje de alumnos de quinto grado en Español en el nivel I - con logro Insuficiente}
#'   \item{POR_N2_ESP_5}{Porcentaje de alumnos de quinto grado en Español en el nivel II - con logro Elemental}
#'   \item{POR_N3_ESP_5}{Porcentaje de alumnos de quinto grado en Español en el nivel III - con logro Bueno}
#'   \item{POR_N4_ESP_5}{Porcentaje de alumnos de quinto grado en Español en el nivel IV - con logro Excelente}
#'   \item{POR_N1_ESP_6}{Porcentaje de alumnos de sexto grado en Español en el nivel I - con logro Insuficiente}
#'   \item{POR_N2_ESP_6}{Porcentaje de alumnos de sexto grado en Español en el nivel II - con logro Elemental}
#'   \item{POR_N3_ESP_6}{Porcentaje de alumnos de sexto grado en Español en el nivel III - con logro Bueno}
#'   \item{POR_N4_ESP_6}{Porcentaje de alumnos de sexto grado en Español en el nivel IV - con logro Excelente}
#'   \item{POR_N1_MAT_3}{Porcentaje de alumnos de tercer grado en Matemáticas en el nivel I - con logro Insuficiente}
#'   \item{POR_N2_MAT_3}{Porcentaje de alumnos de tercer grado en Matemáticas en el nivel II - con logro Elemental}
#'   \item{POR_N3_MAT_3}{Porcentaje de alumnos de tercer grado en Matemáticas en el nivel III - con logro Bueno}
#'   \item{POR_N4_MAT_3}{Porcentaje de alumnos de tercer grado en Matemáticas en el nivel IV - con logro Excelente}
#'   \item{POR_N1_MAT_4}{Porcentaje de alumnos de cuarto grado en Matemáticas en el nivel I - con logro Insuficiente}
#'   \item{POR_N2_MAT_4}{Porcentaje de alumnos de cuarto grado en Matemáticas en el nivel II - con logro Elemental}
#'   \item{POR_N3_MAT_4}{Porcentaje de alumnos de cuarto grado en Matemáticas en el nivel III - con logro Bueno}
#'   \item{POR_N4_MAT_4}{Porcentaje de alumnos de cuarto grado en Matemáticas en el nivel IV - con logro Excelente}
#'   \item{POR_N1_MAT_5}{Porcentaje de alumnos de quinto grado en Matemáticas en el nivel I - con logro Insuficiente}
#'   \item{POR_N2_MAT_5}{Porcentaje de alumnos de quinto grado en Matemáticas en el nivel II - con logro Elemental}
#'   \item{POR_N3_MAT_5}{Porcentaje de alumnos de quinto grado en Matemáticas en el nivel III - con logro Bueno}
#'   \item{POR_N4_MAT_5}{Porcentaje de alumnos de quinto grado en Matemáticas en el nivel IV - con logro Excelente}
#'   \item{POR_N1_MAT_6}{Porcentaje de alumnos de sexto grado en Matemáticas en el nivel I - con logro Insuficiente}
#'   \item{POR_N2_MAT_6}{Porcentaje de alumnos de sexto grado en Matemáticas en el nivel II - con logro Elemental}
#'   \item{POR_N3_MAT_6}{Porcentaje de alumnos de sexto grado en Matemáticas en el nivel III - con logro Bueno}
#'   \item{POR_N4_MAT_6}{Porcentaje de alumnos de sexto grado en Matemáticas en el nivel IV - con logro Excelente}
#'   \item{POR_N1_FCE_3}{Porcentaje de alumnos de tercer grado en Formación Cívica y Ética en el nivel I - con logro Insuficiente}
#'   \item{POR_N2_FCE_3}{Porcentaje de alumnos de tercer grado en Formación Cívica y Ética en el nivel II - con logro Elemental}
#'   \item{POR_N3_FCE_3}{Porcentaje de alumnos de tercer grado en Formación Cívica y Ética en el nivel III - con logro Bueno}
#'   \item{POR_N4_FCE_3}{Porcentaje de alumnos de tercer grado en Formación Cívica y Ética en el nivel IV - con logro Excelente}
#'   \item{POR_N1_FCE_4}{Porcentaje de alumnos de cuarto grado en Formación Cívica y Ética en el nivel I - con logro Insuficiente}
#'   \item{POR_N2_FCE_4}{Porcentaje de alumnos de cuarto grado en Formación Cívica y Ética en el nivel II - con logro Elemental}
#'   \item{POR_N3_FCE_4}{Porcentaje de alumnos de cuarto grado en Formación Cívica y Ética en el nivel III - con logro Bueno}
#'   \item{POR_N4_FCE_4}{Porcentaje de alumnos de cuarto grado en Formación Cívica y Ética en el nivel IV - con logro Excelente}
#'   \item{POR_N1_FCE_5}{Porcentaje de alumnos de quinto grado en Formación Cívica y Ética en el nivel I - con logro Insuficiente}
#'   \item{POR_N2_FCE_5}{Porcentaje de alumnos de quinto grado en Formación Cívica y Ética en el nivel II - con logro Elemental}
#'   \item{POR_N3_FCE_5}{Porcentaje de alumnos de quinto grado en Formación Cívica y Ética en el nivel III - con logro Bueno}
#'   \item{POR_N4_FCE_5}{Porcentaje de alumnos de quinto grado en Formación Cívica y Ética en el nivel IV - con logro Excelente}
#'   \item{POR_N1_FCE_6}{Porcentaje de alumnos de sexto grado en Formación Cívica y Ética en el nivel I - con logro Insuficiente}
#'   \item{POR_N2_FCE_6}{Porcentaje de alumnos de sexto grado en Formación Cívica y Ética en el nivel II - con logro Elemental}
#'   \item{POR_N3_FCE_6}{Porcentaje de alumnos de sexto grado en Formación Cívica y Ética en el nivel III - con logro Bueno}
#'   \item{POR_N4_FCE_6}{Porcentaje de alumnos de sexto grado en Formación Cívica y Ética en el nivel IV - con logro Excelente}
#'   \item{ALUM_NOCONFIABLE_3}{Número de alumnos de tercer grado con resultado no confiable}
#'   \item{ALUM_NOCONFIABLE_4}{Número de alumnos de cuarto grado con resultado no confiable}
#'   \item{ALUM_NOCONFIABLE_5}{Número de alumnos de quinto grado con resultado no confiable}
#'   \item{ALUM_NOCONFIABLE_6}{Número de alumnos de sexto grado con resultado no confiable}
#'   \item{ALUM_NOCONFIABLE_ESC}{Total de alumnos con resultado no confiable en la escuela}
#'   \item{ALUM_EVAL_3}{Alumnos evaluados de tercer grado}
#'   \item{ALUM_EVAL_4}{Alumnos evaluados de cuarto grado}
#'   \item{ALUM_EVAL_5}{Alumnos evaluados de quinto grado}
#'   \item{ALUM_EVAL_6}{Alumnos evaluados de sexto grado}
#'   \item{ALUM_EVAL_ESC}{Total de alumnos evaluados en la escuela}
#'   \item{GRADO_MARG}{Grado de marginación}
#' }
#' @source ENLACE: \url{http://www.enlace.sep.gob.mx/ba/}, INEE: \url{https://www.inee.edu.mx/bases-de-datos-inee-2019/#indicadores}
"enlacep_2013"

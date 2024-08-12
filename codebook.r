install.packages("codebookr")
install.packages("dplyr")
library(codebookr)
library(dplyr)

final_cleaned_data <- read.csv("archive/final_cleaned_data.csv")

final_cleaned_data <- final_cleaned_data %>%
  cb_add_col_attributes(
    CODIGO,
    description = "Unique identifier for each educational institution.",
    source = "Provided by the Ministry of Education (MINEDUC).",
    col_type = "Categorical"
  ) %>%
  cb_add_col_attributes(
    ESTABLECIMIENTO,
    description = "Name of the educational institution.",
    source = "Provided by the Ministry of Education (MINEDUC).",
    col_type = "Descriptive"
  ) %>%
  cb_add_col_attributes(
    DIRECCION,
    description = "Physical address of the educational institution.",
    source = "Provided by the Ministry of Education (MINEDUC).",
    col_type = "Descriptive"
  ) %>%
  cb_add_col_attributes(
    TELEFONO,
    description = "Contact phone number of the educational institution.",
    source = "Provided by the Ministry of Education (MINEDUC).",
    col_type = "Descriptive"
  ) %>%
  cb_add_col_attributes(
    DIRECTOR,
    description = "Name of the director or principal of the educational institution.",
    source = "Provided by the Ministry of Education (MINEDUC).",
    col_type = "Descriptive"
  ) %>%
  cb_add_col_attributes(
    DISTRITO,
    description = "District classification for the educational institution.",
    source = "Provided by the Ministry of Education (MINEDUC).",
    col_type = "Categorical"
  ) %>%
  cb_add_col_attributes(
    DEPARTAMENTO,
    description = "Department where the educational institution is located.",
    source = "Provided by the Ministry of Education (MINEDUC).",
    col_type = "Categorical"
  ) %>%
  cb_add_col_attributes(
    MUNICIPIO,
    description = "Municipality where the educational institution is located.",
    source = "Provided by the Ministry of Education (MINEDUC).",
    col_type = "Categorical"
  ) %>%
  cb_add_col_attributes(
    NIVEL,
    description = "Educational level offered by the institution.",
    source = "Provided by the Ministry of Education (MINEDUC).",
    col_type = "Categorical"
  ) %>%
  cb_add_col_attributes(
    SECTOR,
    description = "Educational sector to which the institution belongs.",
    source = "Provided by the Ministry of Education (MINEDUC).",
    col_type = "Categorical"
  ) %>%
  cb_add_col_attributes(
    AREA,
    description = "Geographical area of the institution.",
    source = "Provided by the Ministry of Education (MINEDUC).",
    col_type = "Categorical"
  ) %>%
  cb_add_col_attributes(
    STATUS,
    description = "Current operational status of the institution.",
    source = "Provided by the Ministry of Education (MINEDUC).",
    col_type = "Categorical"
  ) %>%
  cb_add_col_attributes(
    MODALIDAD,
    description = "Mode of instruction offered.",
    source = "Provided by the Ministry of Education (MINEDUC).",
    col_type = "Categorical"
  ) %>%
  cb_add_col_attributes(
    JORNADA,
    description = "Type of educational shift.",
    source = "Provided by the Ministry of Education (MINEDUC).",
    col_type = "Categorical"
  ) %>%
  cb_add_col_attributes(
    PLAN,
    description = "Educational plan implemented.",
    source = "Provided by the Ministry of Education (MINEDUC).",
    col_type = "Categorical"
  ) %>%
  cb_add_col_attributes(
    DEPARTAMENTAL,
    description = "Administrative department to which the institution belongs.",
    source = "Provided by the Ministry of Education (MINEDUC).",
    col_type = "Categorical"
  ) %>%
  cb_add_col_attributes(
    SUPERVISOR,
    description = "Name of the supervisor responsible for the institution.",
    source = "Provided by the Ministry of Education (MINEDUC).",
    col_type = "Descriptive"
  )

final_codebook <- codebook(
  df = final_cleaned_data,
  title = "Diversified Level Educational Institutions in Guatemala",
  subtitle = "A Detailed Cleansing of Diversified Level Educational Institutions",
  description = "This dataset contains information on diversified level educational institutions in the Republic of Guatemala, provided by the Ministry of Education (MINEDUC). The data was extracted from the portal https://www.mineduc.gob.gt/BUSCAESTABLECIMIENTO_GE/ on July 23, 2024.

Originally, the dataset was fragmented into 23 files, one for each department plus the capital city. The files were in HTML format, and each contained 17 columns."
)

print(final_codebook, "archive/final_cleaned_data_codebook_updated.docx")

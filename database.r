source("/home/fakhredine/Documents/microsoft/R/transparance_sante/src/cleaning.R")

file_avantage <- "/home/fakhredine/Documents/microsoft/R/transparance_sante/bases/declaration_avantage_2020_02_19_04_00.csv"
data_avantage <- read.table(file_avantage, header = TRUE, sep = ";", quote = "\"",dec = ",", fill = TRUE, comment.char = "", encoding = "utf-8")
data_avantage <- data.frame(data_avantage)
set.seed(123)
data_avantage <- splitdb(data_avantage, 0.25)
data_avantage <- clean(data_avantage, c(data_avantage$benef_prenom, data_avantage$benef_nom))
data_avantage


file_convention <- '/home/fakhredine/Documents/microsoft/R/transparance_sante/bases/declaration_convention_2020_02_19_04_00.csv'
data_convention <- read.table(file_convention, header = TRUE, sep = ";", quote = "\"",
                            dec = ",", fill = TRUE, comment.char = "", encoding = "utf-8")
data_convention <- data.frame(data_convention)
set.seed(123)
data_convention <- splitdb(data_convention, 0.25)
data_convention


file_remuneration <- '/home/fakhredine/Documents/microsoft/R/transparance_sante/bases/declaration_remuneration_2020_02_19_04_00.csv'
data_remuneration <- read.table(file_remuneration, header = TRUE, sep = ";", quote = "\"",
                              dec = ",", fill = TRUE, comment.char = "", encoding = "utf-8")
data_remuneration <- data.frame(data_remuneration)
set.seed(123)
data_remuneration <- splitdb(data_remuneration, 0.25)
data_remuneration

file_entreprise <- '/home/fakhredine/Documents/microsoft/R/transparance_sante/bases/entreprise_2020_02_19_04_00.csv'
data_entreprise <- read.table(file_entreprise, header = TRUE, sep = ",", quote = "\"",
                                dec = ",", fill = TRUE, comment.char = "", encoding = "utf-8")
data_entreprise <- data.frame(data_entreprise)
set.seed(123)
data_entreprise <- splitdb(data_entreprise, 0.25)
data_entreprise
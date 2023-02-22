library(tidyverse)

# import from previews data saved in R format
load("01 - data/(2) desempenho_aluno_escola.RData")

# read an excel file
library(readxl)
prices <- read_excel("01 - data/(2) precos_acao.xlsx")

# read csv file
pib_countries <- read.csv("01 - data/(2) pib_paises.csv",
                       sep = ",",
                       dec = ".")

# read csv data from internet
bndes <- read.csv("http://api.bcb.gov.br/dados/serie/bcdata.sgs.7415/dados?formato=csv&dataInicial=01/01/2010&dataFinal=31/12/2020",
                  sep = ";")

# load data from spss software
library(haven)
notas_fatorial <- read_sav("01 - data/(2) notas_fatorial.sav")


# save databases

data_base_1 <- data.frame(var1 = c("person 1", "person 2", "person 3"),
                          var2 = c(42, 55, 28))


var1 <- c(1:10)
var2 <- c(11:18, NA, NA)
var3 <- c("a","b","c","d","e","f","g","h","i","j")

data_base_2 <- data.frame(var1, var2, var3)

data_base_3 <- data.frame(position = var1,
                          missing = var2,
                          letters = var3)


# use save to save in Rdata format
save(data_base_1, file = "01 - data/(3) saved_data_1.RData")


# to save in excel, install writexl first:

install.packages("writexl")
library("writexl")

write_xlsx(data_base_2,"01 - data/(3) saved_data_2.xlsx")


# saving in .csv

# the command row.names stands for the index
write.csv(data_base_3, file = "01 - data/(3) saved_data_3.csv", row.names = F)
write.csv(data_base_3, file = "01 - data/(3) saved_data_4.csv", row.names = T)

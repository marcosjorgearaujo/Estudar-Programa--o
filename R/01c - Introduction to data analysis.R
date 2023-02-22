#------------------- Basic concepts of handling data -----------------

load("01 - data/(2) desempenho_aluno_escola.RData")

View(desempenho_aluno_escola)

# Get a look on the initial part of the data (10 first lines)
head(desempenho_aluno_escola, n = 10)

# Save the first data into a variable
object_test <- head(desempenho_aluno_escola, n = 10)


# What are the variables name available?
columns_names <-  names(desempenho_aluno_escola)

# How many variables and how many observatitions does the database have?

nrow(desempenho_aluno_escola) # row number
ncol(desempenho_aluno_escola) # columns number
dim(desempenho_aluno_escola) # lines and columns number


# What is the structure of the database?

str(desempenho_aluno_escola)

# Certain function, sometimes, may be necessary to specify the variable
# The structure is: object$variable

desempenho_aluno_escola$desempenho # print the variable


study_time <- desempenho_aluno_escola$horas # store into a vector

# To remove an object you can use:
rm(study_time)

# What is the value of desempenho escolar of the first student?
desempenho_aluno_escola[1 , 3]

# What are the values of all variables of the 5th student?
desempenho_aluno_escola[5 , ]

# What are the values of all variables for the students from 7th to 12nd?
desempenho_aluno_escola[c(7:12), ]

# what are all observations for the 6th variable?
desempenho_aluno_escola[ , 6]

# Identify the column by its name instead of the position
desempenho_aluno_escola[ , "priv"]

# We can rearrange the data frame
reorganize <- desempenho_aluno_escola[ , c(2,5,3,4,1,6)]

# Let's take only few columns
part_of_data <- desempenho_aluno_escola[ , c("estudante", "desempenho", "horas")]

# Exclude the 4th and 5th column
new_data_1 <- desempenho_aluno_escola[ , -c(4,5)]

# Exclude lines from 476 to 522
new_data_2 <- desempenho_aluno_escola[ -c(476:522), ]

###### Filter data

"== equal"
"> more than"
">= more than or equal"
"< less than"
"<= less than or equal"
"!= different"
"& and operator"
"| or operator ou"

performance <- desempenho_aluno_escola[desempenho_aluno_escola$desempenho > 50,]

desempenho_aluno_escola[desempenho_aluno_escola$priv == "pública",]

desempenho_aluno_escola[desempenho_aluno_escola$priv == "pública" &
                          desempenho_aluno_escola$desempenho <= 20,]

desempenho_aluno_escola[desempenho_aluno_escola$escola != "A",]

select_schools <- desempenho_aluno_escola[desempenho_aluno_escola$escola == "C" |
                                               desempenho_aluno_escola$escola == "H",]


# Let's work with the sheet pib countries

pib_countries <- read.csv("01 - data/(2) pib_paises.csv",
                       sep = ",",
                       dec = ".")

# Exclude variables witch we're not gonna use and exclude from line 267 to 271
pib_countries <- pib_countries[-c(267:271),-c(2,4)]


# Rename variables

new_names <- c("ano","paises_regioes","var_pib_capita","var_pib_total")
names(pib_countries) <- new_names

# Some variables are text instead of numeric, so let's change
# The warnings is just to inform that .. was interpreted as missing values
pib_countries$var_pib_capita_ajust <- as.numeric(pib_countries$var_pib_capita)
pib_countries$var_pib_total_ajust <- as.numeric(pib_countries$var_pib_total)

summary(pib_countries$var_pib_capita_ajust)
summary(pib_countries$var_pib_total_ajust)



















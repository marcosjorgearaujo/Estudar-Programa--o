
#------------------- Functions ---------------------------------------

# Reference: (https://r4ds.had.co.nz/functions.html)

# Build a function witch add 17 and dived per 2

atualizar <- function(histórico) {
  atual <- ((histórico + 17)/2) 
  return(atual)
}

atualizar(1)
atualizar(2)
atualizar (3)
atualizar (4)

# A vector can be an input to this function

atualizar_hoje <- c(1:15)

atualizar(atualizar_hoje)

# Exemplo of function with more than 1 input

ajustar <- function(valor1, valor2) {
  ajuste <- ((valor1 + 180)/(valor2 - 60))
  return(ajuste)
}

ajustar(100, 80)
ajustar(200, 80)
ajustar(200, 100)

# Decision algorithm

valor <- 100000

if (valor >= 1000000) {
  "big number"
} else {
  "small number"
}


valor <- 650000

if (valor >= 1000000) {
  "big number"
} else if (valor >= 500000 & valor <1000000) {
  "intermidiate number"
} else {
  "small number"
}


# function including if and else
atualizar_teto <- function(histórico) {
  atual <- ((histórico + 17)/2)
  if (atual <= 100) {
    return(atual)}
  else {
    return("Atualizado no Teto = 100")}
}

atualizar_teto(44)
atualizar_teto(199)

# function including if else if and else

ajustar_mult <- function(valor1, valor2) {
  ajuste <- ((valor1 + 180)/(valor2 - 60))
  if(ajuste <= 100) {
    return("baixo")}
  else if(ajuste > 100 & ajuste <= 1000) {
    return("médio")}
  else {
    return("alto")}   
}

ajustar_mult(500, 300) # result = 2,8333
ajustar_mult(50000,100) # result = 1.254,50
ajustar_mult(1000, 70) # result = 118

# Functions including other functions

médias <- function(x) {
  media <- mean(x, na.rm = T)
  return(media)
}

valores <- c(1, 4, 6, 9, 12, 16, NA)

médias(valores)


#------------------- Iterations ---------------------------------------

for (i in atualizar_hoje) {
  print((i + 17)/2)
}

valores <- 2

while(valores < 100){
  valores <- (valores + 20)
  print(valores)
}


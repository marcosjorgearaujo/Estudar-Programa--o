#------------------- Data Visualization ----------------------------------------

library(ggplot2)

# Besides ggplot2, other packages might be useful

install.packages(c("plotly","reshape2","ggrepel","rgl","car","sf","esquisse"))

options(rgl.debug = TRUE)

library(plotly)
library(reshape2)
library(ggrepel)
library(rgl)
library(car)
library(sf)
library(esquisse)

# --- Graph bar ---

# Let's start with a qualitative variable

load("01 - data/(2) perfil_investidor.RData")


ggplot(data = perfil_investidor) +
  geom_bar(aes(x = perfil))

# change the order of the presentation

perfil_investidor$perfil <- factor(perfil_investidor$perfil,
                                   levels = c("Conservador", 
                                              "Moderado", 
                                              "Agressivo"))

# New graph will be

ggplot(data = perfil_investidor) +
  geom_bar(aes(x = perfil))

# Add labels to the graph

ggplot(data = perfil_investidor) +
  geom_bar(aes(x = perfil)) +
  labs(title = "Perfil dos Investidores",
       subtitle = "Banco X",
       x = "Perfil do Investidor",
       y = "Quantidade",
       caption = "Período: 2020")

# Change the color with fill argument

ggplot(data = perfil_investidor) +
  geom_bar(aes(x = perfil), fill = "blue") +
  labs(title = "Perfil dos Investidores",
       subtitle = "Banco X",
       x = "Perfil do Investidor",
       y = "Quantidade",
       caption = "Período: 2020")

# The possible colors might be taken from:

colours()

# Change the edge with color argument

ggplot(data = perfil_investidor) +
  geom_bar(aes(x = perfil), color = "red", fill = "blue") +
  labs(title = "Perfil dos Investidores",
       subtitle = "Banco X",
       x = "Perfil do Investidor",
       y = "Quantidade",
       caption = "Período: 2020")

# change the theme

ggplot(data = perfil_investidor) +
  geom_bar(aes(x = perfil), color = "red", fill = "blue") +
  labs(title = "Perfil dos Investidores",
       subtitle = "Banco X",
       x = "Perfil do Investidor",
       y = "Quantidade",
       caption = "Período: 2020") +
  theme_light()

# Add one more geometry to the graph including the summed values

ggplot(data = perfil_investidor) +
  geom_bar(aes(x = perfil), color = "red", fill = "blue") +
  geom_text(aes(x = perfil, label = ..count..), stat = "count", vjust = 2) +
  labs(title = "Perfil dos Investidores",
       subtitle = "Banco X",
       x = "Perfil do Investidor",
       y = "Quantidade",
       caption = "Período: 2020") +
  theme_light()

# Invert axis with coord_flip

ggplot(data = perfil_investidor) +
  geom_bar(aes(x = perfil), color = "red", fill = "blue") +
  geom_text(aes(x = perfil, label = ..count..), stat = "count", hjust = -1) +
  labs(title = "Perfil dos Investidores",
       subtitle = "Banco X",
       x = "Perfil do Investidor",
       y = "Quantidade",
       caption = "Período: 2020") +
  coord_flip() +
  theme_light()



# --- Histogram ---

load("01 - data/(2) desempenho_aluno_escola.RData")

ggplot(data = desempenho_aluno_escola) +
  geom_histogram(aes(x = desempenho))


# Add some formations

ggplot(data = desempenho_aluno_escola) +
  geom_histogram(aes(x = desempenho), color = "black", fill = "light green") +
  labs(x = "Desempenho Escolar",
       y = "Frequência") +
  theme_bw()

# change bins

ggplot(data = desempenho_aluno_escola) +
  geom_histogram(aes(x = desempenho), color = "black", fill = "light green", bins = 50) +
  labs(x = "Desempenho Escolar",
       y = "Frequência") +
  theme_bw()


# --- Point graphs ---

load("01 - data/(2) atlas_ambiental.RData")

ggplot(atlas_ambiental) +
  geom_point(aes(x = renda, y = escolaridade))

# add another variable in terms of points size
ggplot(atlas_ambiental) +
  geom_point(aes(x = renda, y = escolaridade, size = idade))

# add another variable in terms of colors
ggplot(atlas_ambiental) +
  geom_point(aes(x = renda, y = escolaridade, size = idade, color = favel < 6))


# add one more variable in terms of poits shape

ggplot(atlas_ambiental) +
  geom_point(aes(x = renda, y = escolaridade, 
                 size = idade, color = favel < 6, 
                 shape = mortalidade > 18)) +
  labs(title = "Indicadores dos Distritos do Município de São Paulo",
       x = "Renda",
       y = "Escolaridade") +
  theme_bw()


# add an ajust to the graph

ggplot(atlas_ambiental) +
  geom_point(aes(x = renda, y = escolaridade, 
                 size = idade, color = favel < 6, 
                 shape = mortalidade > 18)) +
  geom_smooth(aes(x = renda, y = escolaridade), method = "loess", se = FALSE) +
  labs(title = "Indicadores dos Distritos do Município de São Paulo",
       x = "Renda",
       y = "Escolaridade") +
  theme_bw()

# --- line graphs ---

library(readxl)
preco_acao <- read_excel("01 - data/(2) precos_acao.xlsx")


ggplot(preco_acao) +
  geom_line(aes(x = data, y = preco, color = acao))


ggplot(preco_acao) +
  geom_line(aes(x = data, y = preco, color = acao)) + 
  labs(x = "Mês de Referência",
       y = "Cotação de Fechamento",
       title = "Série Histórica das Ações",
       color = "Empresa") +
  theme_classic()

#two graphs
ggplot(preco_acao) +
  geom_line(aes(x = data, y = preco, color = acao)) + 
  geom_point(aes(x = data, y = preco, color = acao)) +
  labs(x = "Mês de Referência",
       y = "Cotação de Fechamento",
       title = "Série Histórica das Ações",
       color = "Empresa") +
  theme_classic()


# add label to the points
ggplot(preco_acao) +
  geom_line(aes(x = data, y = preco, color = acao)) + 
  geom_point(aes(x = data, y = preco, color = acao)) +
  geom_text(aes(x = data, y = preco, label = preco), size = 3, vjust = 2, angle = 45) + 
  labs(x = "Mês de Referência",
       y = "Cotação de Fechamento",
       title = "Série Histórica das Ações",
       color = "Empresa") +
  theme_classic()

# to get a better visualization use plotly

ggplotly(
  ggplot(preco_acao) +
    geom_line(aes(x = data, y = preco, color = acao)) + 
    geom_point(aes(x = data, y = preco, color = acao)) +
    labs(x = "Mês de Referência",
         y = "Cotação de Fechamento",
         title = "Série Histórica das Ações",
         color = "Empresa") +
    theme_classic()
)

# --- Heat graph ---
library(readxl)
tempo_dist <- read_excel("01 - data/(2) tempo_dist.xls")

# Let's create a matrix of correlation using cor function
# add only the quantitative variables into the graph
correlacoes <- cor(tempo_dist[, 2:4])

# melt changes the format of the data

correlacoes_reorg <- melt(correlacoes)

View(correlacoes_reorg)

# plot the heat graph
ggplot(correlacoes_reorg) +
  geom_tile(aes(x = Var1, y = Var2, fill = value)) + 
  labs(x = "Variáveis",
       y = "Variáveis",
       fill = "Coef. Correl.")

# add labels to the data and change colors to improve visualization

ggplot(correlacoes_reorg) +
  geom_tile(aes(x = Var1, y = Var2, fill = value)) + 
  geom_text(aes(x = Var1, y = Var2, label = value), size = 5) +
  labs(x = "Variáveis",
       y = "Variáveis",
       fill = "Coef. Correl.") +
  scale_fill_gradient2(low = "blue", 
                       mid = "yellow", 
                       high = "red",
                       midpoint = 0)


ggplotly(
  ggplot(correlacoes_reorg) +
    geom_tile(aes(x = Var1, y = Var2, fill = value)) + 
    geom_text(aes(x = Var1, y = Var2, label = value), size = 5) +
    labs(x = "Variáveis",
         y = "Variáveis",
         fill = "Coef. Correl.") +
    scale_fill_gradient2(low = "blue", 
                         mid = "yellow", 
                         high = "red",
                         midpoint = 0)
)


# --- Graph Box plot ---

load("01 - data/(2) atlas_ambiental.RData")

var_boxplot <- atlas_ambiental[,c(1,3)]

ggplot(var_boxplot) +
  geom_boxplot(aes(y = renda), fill = "gray", color = "blue") +
  labs(x = "Renda",
       y = "Valores")


ggplotly(
  ggplot(var_boxplot) +
    geom_boxplot(aes(y = renda), fill = "gray", color = "blue") +
    labs(x = "Renda",
         y = "Valores")
)


esquisser(atlas_ambiental, viewer = "browser")
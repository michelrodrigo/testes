#' ---
#' title: "Teste de Importação PNADC"
#' author: "Michel Alves"
#' date: "17 de junho de 2021"
#' output: github_document
#' ---
#' 
#' Limpa a memória
#rm(list = ls())

#' Carrega as bibliotecas
options( survey.lonely.psu = "adjust" )
options(OutDec=",")
## options(warn=-1)
library(tidyverse)
library(survey)
library(PNADcIBGE)
library(srvyr)

#' Importa os microdados
pnadc_dat<- get_pnadc(2020,
                      quarter = 1,
                      vars=c("UF", "V1023", "Capital", "VD4002", "V2007", "V2009", "VD3004", "VD3005", "V2010", "V1027", "V1028"),
                      design = TRUE)

#' Transforma a base de dados num objeto survey
pnad_srvyr <- as_survey(pnadc_dat)

#' Filtra as amostras para região metropolitana de BH
pnad_df2 <- pnad_srvyr %>% 
  filter(UF == "Minas Gerais" & (V1023 == "Capital" | V1023 == "Resto da RM (Região Metropolitana, excluindo a capital)"))

#' Cria uma tabela de taxa de desocupação por cor
Desocupacao_cor2<- data.frame(svytable(~V2010+VD4002, pnad_df2))
Desocupacao_cor2<- pivot_wider(Desocupacao_cor2, names_from = "VD4002", values_from = "Freq")
Desocupacao_cor2$PEA = Desocupacao_cor2$`Pessoas ocupadas`+  Desocupacao_cor2$`Pessoas desocupadas`
Desocupacao_cor2$'Taxa de desocupação' = ((Desocupacao_cor2$`Pessoas desocupadas`/ Desocupacao_cor2$PEA)*100)
Desocupacao_cor2<- rename(Desocupacao_cor2, "Cor ou raça" = "V2010")
#view(Desocupacao_cor2)
Desocupacao_cor2
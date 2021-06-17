#' ---
#' title: "Teste de Importação PNADC"
#' author: "Michel Alves"
#' date: "17 de junho de 2021"
#' output: github_document
#' ---
#' 
#' Limpa a memória
rm(list = ls())

#' Carrega as bibliotecas
options( survey.lonely.psu = "adjust" )
options(OutDec=",")
library(tidyverse)
library(survey)
library(PNADcIBGE)
library(srvyr)
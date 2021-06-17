Teste de Importação PNADC
================
Michel Alves
17 de junho de 2021

Limpa a memória

``` r
rm(list = ls())
```

Carrega as bibliotecas

``` r
options( survey.lonely.psu = "adjust" )
options(OutDec=",")
library(tidyverse)
```

    ## Warning: package 'tidyverse' was built under R version 4.0.5

    ## -- Attaching packages --------------------------------------- tidyverse 1.3.1 --

    ## v ggplot2 3.3.3     v purrr   0.3.4
    ## v tibble  3.1.1     v dplyr   1.0.6
    ## v tidyr   1.1.3     v stringr 1.4.0
    ## v readr   1.4.0     v forcats 0.5.1

    ## Warning: package 'ggplot2' was built under R version 4.0.5

    ## Warning: package 'tibble' was built under R version 4.0.5

    ## Warning: package 'tidyr' was built under R version 4.0.5

    ## Warning: package 'readr' was built under R version 4.0.5

    ## Warning: package 'purrr' was built under R version 4.0.5

    ## Warning: package 'dplyr' was built under R version 4.0.5

    ## Warning: package 'stringr' was built under R version 4.0.5

    ## Warning: package 'forcats' was built under R version 4.0.5

    ## -- Conflicts ------------------------------------------ tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
library(survey)
```

    ## Warning: package 'survey' was built under R version 4.0.5

    ## Loading required package: grid

    ## Loading required package: Matrix

    ## Warning: package 'Matrix' was built under R version 4.0.5

    ## 
    ## Attaching package: 'Matrix'

    ## The following objects are masked from 'package:tidyr':
    ## 
    ##     expand, pack, unpack

    ## Loading required package: survival

    ## Warning: package 'survival' was built under R version 4.0.5

    ## 
    ## Attaching package: 'survey'

    ## The following object is masked from 'package:graphics':
    ## 
    ##     dotchart

``` r
library(PNADcIBGE)
```

    ## Warning: package 'PNADcIBGE' was built under R version 4.0.5

``` r
library(srvyr)
```

    ## Warning: package 'srvyr' was built under R version 4.0.5

    ## 
    ## Attaching package: 'srvyr'

    ## The following object is masked from 'package:stats':
    ## 
    ##     filter

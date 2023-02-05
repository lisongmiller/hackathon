## ------------------------------------------------------
## Script name:
## Project: hackathon
## Purpose of script: to create ADaM ADVS domain
## Input file:
## Output file: Output file
## Author: Leo Li
## Date Created: 2023-02-05
##
## ------------------------------------------------------
## Revision History:
## Date:
## Author:
## Description of the change
##
## ------------------------------------------------------


## Setting working environment----------------------------
options(repos = c(
  pharmaverse = 'https://pharmaverse.r-universe.dev',
  CRAN = 'https://cloud.r-project.org'))

pkgs<-c("usethis","metacore","metatools","admiral.test","admiral","xportr","dplyr","tidyr","lubridate","stringr")
install.packages(pkgs)

usethis::use_git_config(user.name ="soli@genmab.com",
                        user.email="soli@genmab.com")
usethis::create_github_token()

gitcreds::gitcreds_set()



## load packages ----------------------------------------
library(metacore)
library(metatools)
library(admiral.test)
library(admiral)
library(xportr)
library(dplyr)
library(tidyr)
library(lubridate)
library(stringr)
library(haven)
getwd()

## Read in input SDTM data-------------------------------
vs<-read_xpt("./sdtm/vs.xpt")


metacore <- readxl::read_xlsx("./metadata/specs.xlsx",sheet = "Variables") %>%
  filter(Dataset == "ADVS")

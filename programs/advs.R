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


install.packages("usethis")
usethis::use_git_config(user.name ="soli@genmab.com",
                        user.email="soli@genmab.com")
usethis::create_github_token()

gitcreds::gitcreds_set()

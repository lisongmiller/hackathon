"hello world"
install.packages("usethis")
usethis::use_git_config(user.name ="dineshkumarchenna",
                        user.email="cdineshkumarr@gmail.com")
usethis::create_github_token()

gitcreds::gitcreds_set()

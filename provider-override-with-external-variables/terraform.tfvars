# Required for terraform-provider-statuscake override binary
binary_filename = "terraform-provider-statuscake"
repo   = "plinde/terraform-provider-statuscake"
release = "v0.1.1-plinde-enhancements-pr2"
arch   = "darwin-x86_64"

# StatusCake Test variables, safer to define as EnvVars:
# `export TF_VAR=statuscake_username`
# `export TF_VAR=statuscake_apikey`
#statuscake_username = ""
#statuscake_apikey = ""
module "terraform-provider-statuscake_override" {
  /*source = "../../terraform-provider-override-module"*/
  source = "github.com/plinde/terraform-provider-override-module"

  binary_filename = "terraform-provider-statuscake"
  repo            = "plinde/terraform-provider-statuscake"
  release         = "v0.1.1-plinde-enhancements-pr2"
  arch            = "darwin-x86_64"
}

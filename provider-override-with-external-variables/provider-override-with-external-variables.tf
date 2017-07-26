module "terraform-provider-statuscake_override" {
  /*source = "../../terraform-provider-override-module"*/
  source = "github.com/plinde/terraform-provider-override-module"

  binary_filename = "${var.binary_filename}"
  repo            = "${var.repo}"
  release         = "${var.release}"
  arch            = "${var.arch}"
}

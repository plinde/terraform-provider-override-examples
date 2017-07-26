## A (reasonably) sane Terraform-driven approach to overriding Terraform provider binaries

##### Example use of module for StatusCake provider override
* Release tracking against [plinde/terraform-provider-statuscake/0.1.1-plinde-enhancements-pr2](https://github.com/plinde/terraform-provider-statuscake/releases/tag/v0.1.1-plinde-enhancements-pr2)
* **Example with inline variables**
  * include `provider-override-with-compact-variables.tf` and `terraform-provider-statuscake` (stub-file) in your terraform project.
  * Define the variables for `binary_filename`, `repo`, `release`, `arch` in inline with the module.
  * `make all` to fetch and apply the module to your Terraform project. This will place the binary in the local directory and Terraform will automatically use it as an override.
* **Example with external variables**
  * include `provider-override-with-compact-variables.tf`, `terraform.tfvars`, `variables.tf` and `terraform-provider-statuscake` (stub-file) in your terraform project.
  * Define the variables for `binary_filename`, `repo`, `release`, `arch` in `terraform.tfvars`
  * `make all` to fetch and apply the module to your Terraform project. This will place the binary in the local directory and Terraform will automatically use it as an override.

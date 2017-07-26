SHELL := /bin/bash

.PHONY: help
help:
	@ echo "### Terraform Provider Override Example (compact variables)"
	@ echo
	@ echo "- all: get-binary-module apply-binary-module"
	@ echo
	@ echo "- get-binary-module: terraform get"
	@ echo "- apply-binary-module: terraform apply -target=module.terraform-provider-statuscake_override"
	@ echo "- apply-all: terraform apply"
	@ echo
	@ echo "- plan: terraform plan"
	@ echo 

all: get-binary-module apply-binary-module

.PHONY: reset
reset: 
	@ rm -rfv .terraform && rm -v terraform-provider-statuscake
	
.PHONY: get-binary-module
get-binary-module:
	@ terraform get

.PHONY: apply-binary-module
apply-binary-module:
	@ terraform apply -target=module.terraform-provider-statuscake_override

.PHONY: apply
apply-all:
	@ terraform apply
	
plan:
	@ terraform plan
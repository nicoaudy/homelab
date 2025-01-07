# Directory where Terraform files are located
TERRAFORM_DIR := cmd

# Docker image for Terraform
TERRAFORM_IMAGE := hashicorp/terraform:latest

# Common Docker run options
DOCKER_RUN := docker run --rm -v $(PWD)/$(TERRAFORM_DIR):/workspace -w /workspace

# Default target
.PHONY: all
all: init plan apply

# Initialize Terraform
.PHONY: init
init:
	$(DOCKER_RUN) $(TERRAFORM_IMAGE) init

# Plan the infrastructure
.PHONY: plan
plan:
	$(DOCKER_RUN) $(TERRAFORM_IMAGE) plan --out "plan"

# Apply the Terraform configuration
.PHONY: apply
apply:
	$(DOCKER_RUN) $(TERRAFORM_IMAGE) apply -auto-approve "plan"

# Destroy the infrastructure
.PHONY: destroy
destroy:
	$(DOCKER_RUN) $(TERRAFORM_IMAGE) destroy -auto-approve

.PHONY: fix
fix:
	$(DOCKER_RUN) $(TERRAFORM_IMAGE) fmt

.PHONY: build
build:
	cp $(TERRAFORM_DIR)/terraform.example $(TERRAFORM_DIR)/terraform.tfvars

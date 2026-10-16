variable "aft_management_account_id" {}
variable "audit_account_id" {}
variable "ct_home_region" {}
variable "ct_management_account_id" {}
variable "github_username" {}
variable "log_archive_account_id" {}
variable "terraform_org_name" {}
variable "terraform_project_name" {}

variable "terraform_token" {

  sensitive = true
}

variable "tf_backend_secondary_region" {}

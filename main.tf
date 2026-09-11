module "aft" {
  source = "github.com/aws-ia/terraform-aws-control_tower_account_factory"
  
  # Terraform distribution must be "tfc" or "tfe" for OIDC
  terraform_distribution = "tfc"
  terraform_org_name     = var.terraform_org_name
  terraform_project_name = var.terraform_project_name

  # Terraform OIDC Configuration
  terraform_oidc_integration  = true
  terraform_oidc_aws_audience = "aws.workload.identity"  # default
  terraform_oidc_hostname     = "app.terraform.io"       # default; set to your TFE hostname if applicable
  
  # VCS Vars
  vcs_provider                                  = "github"
  account_request_repo_name                     = "${var.github_username}/aft-account-request"
  global_customizations_repo_name               = "${var.github_username}/aft-global-customizations"
  account_customizations_repo_name              = "${var.github_username}/aft-account-customizations"
  account_provisioning_customizations_repo_name = "${var.github_username}/aft-account-provisioning-customizations"


  # Control Tower core settings
  ct_management_account_id    = var.ct_management_account_id
  log_archive_account_id      = var.log_archive_account_id
  audit_account_id            = var.audit_account_id
  aft_management_account_id   = var.aft_management_account_id
  ct_home_region              = var.ct_home_region
  tf_backend_secondary_region = var.tf_backend_secondary_region

  # AFT Feature flags
  aft_feature_cloudtrail_data_events               = false
  aft_feature_enterprise_support                   = false
  aft_feature_delete_default_vpcs_enabled          = true

  # AFT Additional Configurations
  aft_enable_vpc                                   = false
}
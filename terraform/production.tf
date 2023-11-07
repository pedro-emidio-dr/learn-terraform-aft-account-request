module "network" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "pedro.emidio+bmg-lz-prd@datarain.com.br"
    AccountName               = "Production"
    ManagedOrganizationalUnit = "Workloads"
    SSOUserEmail              = "pedro.emidio+bmg-lz-prd@datarain.com.br"
    SSOUserFirstName          = "Pedro"
    SSOUserLastName           = "Emidio"
  }

  account_tags = {
    "CreatedBy" = "Terraform"
  }

  custom_fields = {
    group = "Workloads"
  }

  change_management_parameters = {
    change_requested_by = "Workloads"
    change_reason       = "APIs"
  }

  account_customizations_name = "workloads"
}

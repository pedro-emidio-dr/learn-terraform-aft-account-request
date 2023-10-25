module "network" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "pedro.emidio+bmg-lz-network@datarain.com.br"
    AccountName               = "Network"
    ManagedOrganizationalUnit = "Security"
    SSOUserEmail              = "pedro.emidio+bmg-lz-network@datarain.com.br"
    SSOUserFirstName          = "Pedro"
    SSOUserLastName           = "Emidio"
  }

  account_tags = {
    "CreatedBy" = "Terraform"
  }

  custom_fields = {
    group = "controller"
  }

  change_management_parameters = {
    change_requested_by = "Network configurations"
    change_reason       = "Network configurations"
  }

  account_customizations_name = "controller"
}

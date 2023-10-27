module "network" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "pedro.emidio+bmg-lz-network@datarain.com.br"
    AccountName               = "Network"
    ManagedOrganizationalUnit = "Root"
    SSOUserEmail              = "pedro.emidio+bmg-lz-network-confs@datarain.com.br"
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
    change_reason       = "Transit gateway and others "
  }

  account_customizations_name = "controller"
}

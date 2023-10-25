module "identity-center" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "pedro.emidio+bmg-lz-identity-center@datarain.com.br"
    AccountName               = "Identity-center"
    ManagedOrganizationalUnit = "ou-rhrc-cnoxvpx7"
    SSOUserEmail              = "pedro.emidio+bmg-lz-identity-center@datarain.com.br"
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
    change_requested_by = "identity center"
    change_reason       = "identity center management"
  }

  account_customizations_name = "controller"
}

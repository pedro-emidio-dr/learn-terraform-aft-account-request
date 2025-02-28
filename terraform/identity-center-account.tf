module "identity-center" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "pedro.emidio+bmg-lz-identity@datarain.com.br"
    AccountName               = "Identity-center"
    ManagedOrganizationalUnit = "Controllers"
    SSOUserEmail              = "pedro.emidio+bmg-lz-identity@datarain.com.br"
    SSOUserFirstName          = "Pedro"
    SSOUserLastName           = "Emidio"
  }

  account_tags = {
    "CreatedBy" = "Terraform"
  }

  custom_fields = {
    group = "controller",
    test  = "test"
  }

  change_management_parameters = {
    change_requested_by = "identity center"
    change_reason       = "access control"
  }

  account_customizations_name = "management"
}

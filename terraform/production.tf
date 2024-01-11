# module "production" {
#   source = "./modules/aft-account-request"

#   control_tower_parameters = {
#     AccountEmail              = "pedro.emidio+bmg-lz-prd@datarain.com.br"
#     AccountName               = "Production"
#     ManagedOrganizationalUnit = "Workloads"
#     SSOUserEmail              = "pedro.emidio+bmg-lz-prd@datarain.com.br"
#     SSOUserFirstName          = "Pedro"
#     SSOUserLastName           = "Emidio"
#   }

#   account_tags = {
#     "CreatedBy" = "Terraform"
#   }

#   custom_fields = {
#     group = "production"
#     teste = "teste"
#   }

#   change_management_parameters = {
#     change_requested_by = "production"
#     change_reason       = "production account"
#   }

#   account_customizations_name = "workloads"
# }

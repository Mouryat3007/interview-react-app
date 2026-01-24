module "rg" {
  source   = "../../modules/resource_group"
  name     = "rg-investorflow-dev"
  location = "uksouth"
}

module "app" {
  source              = "../../modules/app_service"
  name                = "investorflow-dev-app"
  location            = "uksouth"
  resource_group_name = module.rg.name
}


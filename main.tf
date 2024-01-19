module "wiz" {
  source                 = "./modules/wiz"
  wiz_auth_client_id     = var.wiz_auth_client_id
  wiz_auth_client_secret = var.wiz_auth_client_secret
}

module "eks-addons" {
  source = "./modules/eks-addons"
  REGION = var.REGION
}

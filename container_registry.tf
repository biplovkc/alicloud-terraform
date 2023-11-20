resource "alicloud_cr_ee_instance" "cko_container_registry" {
  payment_type   = "Subscription"
  period         = 1 //Month
  renew_period   = 1 //Month
  renewal_status = "AutoRenewal"
  instance_type  = "Basic"
  instance_name  = "cko-container-registry"
}

resource "alicloud_cr_ee_namespace" "card_processing_namespace" {
  instance_id        = alicloud_cr_ee_instance.cko_container_registry.id
  name               = var.container_namespace
  auto_create        = false
  default_visibility = "PRIVATE"
}

resource "alicloud_cr_ee_repo" "example" {
  instance_id = alicloud_cr_ee_instance.cko_container_registry.id
  namespace   = alicloud_cr_ee_namespace.card_processing_namespace.name
  name        = "spg_haproxy"
  summary     = "this is a private repo for card processing haproxy"
  repo_type   = "PRIVATE"
}


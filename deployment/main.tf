locals {
  monitors = yamldecode(file("${path.module}/vars/monitors.yaml"))
}

module "monitor" {
  source                 = "../modules/monitors"
  for_each               = local.monitors
  name                   = each.value.name
  type                   = each.value.type
  query                  = each.value.query
  message                = each.value.message
  critical_threshold     = each.value.critical_threshold
  include_tags           = each.value.include_tags
  restricted_roles       = each.value.restricted_roles
  additional_tags        = each.value.additional_tags
  enable_logs_sample     = each.value.enable_logs_sample
  groupby_simple_monitor = each.value.groupby_simple_monitor
  new_group_delay        = each.value.new_group_delay
  notify_audit           = each.value.notify_audit
  on_missing_data        = each.value.on_missing_data
  priority               = each.value.priority
  require_full_window    = each.value.require_full_window
}

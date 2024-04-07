resource "datadog_monitor" "web_error" {
  name    = var.name
  type    = var.type
  message = var.message

  query = var.query

  monitor_thresholds {
    critical = var.critical_threshold
  }

  include_tags     = var.include_tags
  restricted_roles = var.restricted_roles

  tags = concat(["managed_by:terraform"], var.additional_tags)

  enable_logs_sample     = var.enable_logs_sample
  groupby_simple_monitor = var.groupby_simple_monitor
  new_group_delay        = var.new_group_delay
  notify_audit           = var.notify_audit
  on_missing_data        = var.on_missing_data
  priority               = var.priority
  require_full_window    = var.require_full_window

}

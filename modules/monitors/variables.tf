# Every validation done here was created solely by reading the documentation.
# https://registry.terraform.io/providers/DataDog/datadog/latest/docs/resources/monitor

variable "name" {
  type        = string
  description = "Name of the monitor"
}

variable "type" {
  type        = string
  description = "Type of the monitor"

  #  validation {
  #     condition     = contains(["composite", "event alert", "log alert", "metric alert", "process alert", "query alert", "rum alert", "service check", "synthetics alert", "trace-analytics alert", "slo alert", "event-v2 alert", "audit alert", "ci-pipelines alert", "ci-tests alert", "error-tracking alert"], var.type)
  #     error_message = "Error! ${var.type} not in acceptable values: \"composite\", \"event alert\", \"log alert\", \"metric alert\", \"process alert\", \"query alert\", \"rum alert\", \"service check\", \"synthetics alert\", \"trace-analytics alert\", \"slo alert\", \"event-v2 alert\", \"audit alert\", \"ci-pipelines alert\", \"ci-tests alert\", \"error-tracking alert\""
  #   }
}

variable "query" {
  type        = string
  description = "Query of the monitor"
}

variable "message" {
  type        = string
  description = "Message of the monitor"
}

variable "critical_threshold" {
  type        = number
  description = "Critical threshold"
}

variable "include_tags" {
  type        = bool
  description = "Set to \"true\" to include tags"
}

variable "restricted_roles" {
  type        = list(string)
  description = "List of strings containing the IDs of the roles who can manage this monitors"
}

variable "additional_tags" {
  type        = list(string)
  description = "List of string containing pair of key:values for tags. I.E \"location:us-east-1\""
}

variable "enable_logs_sample" {
  type = bool
}

variable "groupby_simple_monitor" {
  type = bool
}

variable "new_group_delay" {
  type = number
}

variable "notify_audit" {
  type = bool
}

variable "on_missing_data" {
  type = string
}

variable "priority" {
  type = number
}

variable "require_full_window" {
  type    = bool
  default = false
}

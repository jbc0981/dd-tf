variable "DD_API_KEY" {
  default     = null
  description = "Datadog API key. Not required as it comes from the CI/CD variables."
  type        = string
}

variable "DD_APP_KEY" {
  default     = null
  description = "Datadog APP key. Not required as it comes from the CI/CD variables."
  type        = string
}

variable "DD_API_URL" {
  default     = null
  description = "Datadog API url. Not required as it comes from the CI/CD variables."
  type        = string
}
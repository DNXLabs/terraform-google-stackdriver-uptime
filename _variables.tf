variable "project_id" {}

variable "channel_email_address" {}

variable "channel_slack_name" {}

variable "timeout" {
  default     = "5s"
  description = "The maximum amount of time to wait for the request to complete"
}
variable "period" {
  default     = "60s"
  description = "How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes)"
}

variable "threshold" {
  default     = "1.0"
  description = "The value against which to compare the time series"
}

variable "duration" {
  default     = "120s"
  description = "The amount of time that a time series must violate the threshold to be considered failing."
}

variable "healthcheck_path" {
  default     = "/"
  description = "The path to the page to run the check against."
}

variable "hostname" {
  default     = "www.google.com"
  description = ""
}

variable "port" {
  default     = "80"
  description = "The port to the page to run the check against."
}

variable "ssl" {
  default     = false
  description = "If true, use HTTPS instead of HTTP to run the check."
}

variable "name" {
  default     = "Default"
  description = "friendly name for the uptime check configuration"
}


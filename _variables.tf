# == REQUIRED VARS
variable "project_id" {}

variable "channel_email_adrress" {
  default = ""
  description = ""
}

variable "channel_slack_name" {
  default = ""
  description = ""
}

variable "healthcheck_path" {
  default = "/"
  description = ""
}

variable "hostname" {
  default = "www.google.com"
  description = ""
}

variable "port"{
  default = "80"
  description = ""
}

variable "ssl"{
  default = false
  description = ""
}


variable "name"{
  default = "Google-default"
  description = ""
}


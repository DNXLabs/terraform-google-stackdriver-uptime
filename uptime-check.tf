resource "google_monitoring_uptime_check_config" "my_check" {
  display_name = "${var.name}"
  timeout = "5s"
  period = "60s"
  http_check {
    path = "${var.healthcheck_path}"
    port = "${var.port}"
    use_ssl = "${var.ssl}"
  }
  monitored_resource {
    type = "uptime_url"
    labels = {
      host = "${var.hostname}"
      project_id = "${var.project_id}"
    }
  }
}


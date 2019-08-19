resource "google_monitoring_alert_policy" "alert_policy" {
  display_name = "${var.name}"
  combiner = "OR"
  notification_channels = [ 
    "projects/${var.project_id}/notificationChannels/${var.channel_email_address}",
    "projects/${var.project_id}/notificationChannels/${var.channel_slack_name}",
  ]
  conditions {
    display_name = "Threshold:${var.threshold} - ${var.name}"
    condition_threshold {
      filter = "metric.type=\"monitoring.googleapis.com/uptime_check/check_passed\" resource.type=\"uptime_url\" metric.label.\"check_id\"=\"${basename(google_monitoring_uptime_check_config.my_check.id)}\""
      duration = "${var.duration}"
      comparison = "COMPARISON_GT"
      threshold_value = "${var.threshold}"
      trigger {
        count = 1
      }
      aggregations {
        alignment_period = "1200s"
        cross_series_reducer = "REDUCE_COUNT_FALSE"
        group_by_fields = ["resource.*"]
        per_series_aligner = "ALIGN_NEXT_OLDER"
      }
    }
  }
}


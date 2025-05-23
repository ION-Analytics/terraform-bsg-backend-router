# required
variable "certificate_arn" {
  description = "ARN for the SSL certificate"
  type        = string
}

variable "aws_region" {
  description = "AWS Region"
  default     = "eu-west-1"
}

variable "env" {
  description = "Environment name"
}

variable "team" {
  description = "Team that owns the service"
}

variable "component" {
  description = "Component name"
}

variable "platform_config" {
  description = "Platform configuration"
  type        = map(string)
  default     = {}
}

variable "alb_internal" {
  description = "If true, the LB will be internal"
  type        = string
  default     = "true"
}

# optional
variable "extra_security_groups" {
  description = "Extra Security Groups to attach to the ALB"
  type        = list(string)
  default     = []
}

variable "default_target_group_deregistration_delay" {
  description = "The amount time for Elastic Load Balancing to wait before changing the state of a deregistering target from draining to unused. The range is 0-3600 seconds."
  type        = string
  default     = "10"
}

variable "default_target_group_health_check_interval" {
  description = "The approximate amount of time, in seconds, between health checks of an individual target. Minimum value 5 seconds, Maximum value 300 seconds."
  type        = string
  default     = "5"
}

variable "default_target_group_health_check_path" {
  description = "The destination for the health check request."
  type        = string
  default     = "/internal/healthcheck"
}

variable "default_target_group_health_check_timeout" {
  description = "The amount of time, in seconds, during which no response means a failed health check."
  type        = string
  default     = "4"
}

variable "default_target_group_health_check_healthy_threshold" {
  description = "The number of consecutive health checks successes required before considering an unhealthy target healthy."
  type        = string
  default     = "2"
}

variable "default_target_group_health_check_unhealthy_threshold" {
  description = "The number of consecutive health check failures required before considering the target unhealthy."
  type        = string
  default     = "2"
}

variable "default_target_group_health_check_matcher" {
  description = "The HTTP codes to use when checking for a successful response from a target. You can specify multiple values (for example, \"200,202\") or a range of values (for example, \"200-299\")."
  type        = string
  default     = "200-299"
}

variable "run_data" {
  description = "Used to switch off data resources when unit testing"
  default     = true
}

variable "idle_timeout" {
  description = "The time in seconds that the connection is allowed to be idle."
  type        = string
  default     = "60"
}

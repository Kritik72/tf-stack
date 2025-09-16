variable "is_dev_env" {
  description = "Indicates if the environment is development"
  type        = bool
  default     = false
}

variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "environment_name" {
  description = "The environment name to be used in tags."
  type        = string
  default     = ""
}
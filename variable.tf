variable "environment_name" {
  description = "The name of the environment"
  type        = string 
}

variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
}

variable "is_dev_env" {
  description = "The environment is development"
  type        = bool
  default     = false
}

variable "create_queue" {
  description = "Whether to create the SQS queue"
  type        = bool
  default     = true
}

variable "is_uat_env" {
  description = "The environment is UAT"
  type        = bool
  default     = false
}

variable "is_prod_env" {
  description = "The environment is production"
  type        = bool
  default     = false
}
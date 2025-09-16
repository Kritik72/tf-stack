variable "name" {
  description = "This is the name of the SQS queue"
  type        = string
}
variable "environment_name" {
  description = "The environment name to be used in tags."
  type        = string
  default     = ""
}
variable "create_queue" {
  description = "Whether to create the SQS queue."
  type        = bool
  default     = true    
}
variable "delay_seconds" {
  description = "The time in seconds that the delivery of all messages in the queue is delayed."
  type        = number
  default     = 0
}

variable "max_message_size" {
  description = "The maximum message size (in bytes) that can be sent to the queue."
  type        = number
  default     = 262144
}

variable "message_retention_seconds" {
  description = "The duration (in seconds) that the queue retains messages."
  type        = number
    default     = 345600
}

variable "receive_wait_time_seconds" {
  description = "The duration (in seconds) for which the call waits for a message to arrive."
  type        = number
  default     = 0
}

variable "visibility_timeout_seconds" {
  description = "The duration (in seconds) that the received messages are hidden from subsequent retrieve requests."
  type        = number
  default     = 30  
}

variable "fifo_queue" {
  description = "Specifies whether the queue is FIFO (First-In-First-Out)."
  type        = bool
  default     = false
}

variable "content_based_deduplication" {
  description = "Enables content-based deduplication for FIFO queues."
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to assign to the queue."
  type        = map(string)
  default     = {}
}
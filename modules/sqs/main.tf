resource "aws_sqs_queue" "this" {
    count                    = var.create_queue ? 1 : 0
    name                      = var.name
    delay_seconds             = var.delay_seconds
    max_message_size          = var.max_message_size
    message_retention_seconds = var.message_retention_seconds
    receive_wait_time_seconds = var.receive_wait_time_seconds
    visibility_timeout_seconds = var.visibility_timeout_seconds

    fifo_queue                = var.fifo_queue
    content_based_deduplication = var.content_based_deduplication

    tags = merge(
        var.tags,
        {
            "Name" = var.name
            "Environment" = var.environment_name
            "Terraform" = "true"
        }
    )
}

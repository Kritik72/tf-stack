module "FIRST_RATES_SQS" {
  source = "../modules/sqs"

  environment_name = var.environment_name
  name = "${var.environment_name}-first-rates-queue"
  delay_seconds = 0
  visibility_timeout_seconds = 300
}
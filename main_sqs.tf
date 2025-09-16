module "FIRST_RATES_SQS" {
  source = "./modules/sqs"

  environment_name = var.environment_name
  name = "${var.environment_name}-first-rates-queue"
  delay_seconds = 0
  visibility_timeout_seconds = 300
}

module "AUTO_RATES_SQS" {
  source = "./modules/sqs"

  create_queue = var.is_dev_env ? true : false

  environment_name = var.environment_name
  name = "${var.environment_name}-auto-rates-queue"
  delay_seconds = 0
  visibility_timeout_seconds = 30
}

module "TERRAFORM_TEMP_SQS" {
  source = "./modules/sqs"

  create_queue = var.is_uat_env ? true : false

  environment_name = var.environment_name
  name = "${var.environment_name}-auto-rates-queue"
  delay_seconds = 0
  visibility_timeout_seconds = 30
}
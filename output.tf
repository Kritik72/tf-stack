##### SQS outputs #####

output "FIRST_RATES_SQS" {
  value = module.FIRST_RATES_SQS.name
}
output "FIRST_RATES_SQS" {
  value = module.FIRST_RATES_SQS.arn
}
output "TERRAFORM_TEMP_SQS" {
  value = module.TERRAFORM_TEMP_SQS.arn
}
output "AUTO_RATES_SQS" {
  value = module.AUTO_RATES_SQS.arn
}
bucket         = "uat-terraform-states-file"
key            = "uat/terraform.tfstate"
region         = "us-east-1"
dynamodb_table = "uat-terraform-locks"
encrypt        = true
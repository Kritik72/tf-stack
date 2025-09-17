bucket         = "dev-terraform-states-file"
key            = "dev/terraform.tfstate"
region         = "us-east-1"
dynamodb_table = "dev-terraform-locks"
encrypt        = true
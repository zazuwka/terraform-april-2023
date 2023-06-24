terraform {
  backend "s3" {
    bucket = "kaizen-aziz"
    key    = "kaizen/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "lock-state"


  }
}
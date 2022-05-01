terraform {
  backend "s3" {
    bucket = "data-storage-qa-env"
    key    = "trraform-state-file/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "sg-terraform-raush-tbl"
  }
}
terraform {
  backend "s3" {
    bucket = "terraform-pipelines"
    key    = "prod/terraform.tfstate"
    region = "eu-central-1"
  }
}

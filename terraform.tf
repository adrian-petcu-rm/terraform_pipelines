terraform {
  backend "s3" {
    bucket = "terraform-pipelines"
    key    = "test/terraform.tfstate"
    region = "eu-central-1"
  }
}

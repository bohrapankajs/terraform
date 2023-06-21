terraform {
  backend "s3" {
    bucket = "b51-tf-remote-state-buckets"
    key    = "example/terraform.tfstate"
    region = "us-east-1"
  }
}
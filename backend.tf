terraform {
  backend "s3" {
    bucket       = "week7-sh-terraform-bucket"
    key          = "week7/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = false
  }
}
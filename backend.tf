terraform {
  backend "s3" {
    bucket       = "w7-kam-terr-bucket"
    key          = "week7_r/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = false
  }
}

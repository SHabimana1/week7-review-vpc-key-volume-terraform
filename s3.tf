resource "aws_s3_bucket" "s3" {
  bucket = "week7-sh-terraform-codes-app"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
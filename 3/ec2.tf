provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAUWCGWF7IJUZ3OBFO"
  secret_key = "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"
  version    = ">=4,<=6"
}

resource "aws_eip" "lb" {
  vpc = "true"
}

output "eip" {
  value = "aws_eip.lb"
}

resource "aws_s3_bucket" "mys3" {
  bucket = "eazytraining-bucket"
}

output "mys3" {
  value = "aws_s3_bucket.mys3"

}

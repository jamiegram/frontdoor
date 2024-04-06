resource "aws_s3_bucket" "unprocessed_image_bucket" {
  bucket = "unprocesses.jamiegram.org"
  tags = {
    service = "frontdoor"
    environment = "production"
  }
}
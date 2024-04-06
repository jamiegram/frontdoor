resource "aws_s3_bucket" "unprocessed_image_bucket" {
  bucket = "unprocessed.jamiegram.org"
  tags = {
    service = "frontdoor"
    environment = "production"
  }
}
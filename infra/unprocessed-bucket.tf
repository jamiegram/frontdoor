resource "aws_s3_bucket" "unprocessed_image_bucket" {
  bucket = "jamiegram.org-unprocessed-bucket"
  tags = {
    service = "frontdoor"
    environment = "production"
  }
}
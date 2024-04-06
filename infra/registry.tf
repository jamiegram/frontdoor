resource "aws_ecr_repository" "frontdoor_repository" {
  name = "frontdoor"
  image_tag_mutability = "MUTABLE"
  tags = {
    service = "frontdoor"
    environment = "production"
  }
}
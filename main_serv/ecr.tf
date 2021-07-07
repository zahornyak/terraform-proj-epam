resource "aws_ecr_repository" "sample-rails-app" {
    image_tag_mutability = "MUTABLE"
    name                 = "sample-rails-app"
    tags                 = {}
    tags_all             = {}

    encryption_configuration {
        encryption_type = "AES256"
    }

    image_scanning_configuration {
        scan_on_push = false
    }


}
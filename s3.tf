resource "aws_s3_bucket" "Terraform_S3_1015" {
  bucket = "letussaythisasanewbucket"

  tags = {
    Name = "GROUPBUCKET"
  }
}

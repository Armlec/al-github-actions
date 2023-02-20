
resource "aws_s3_bucket" "test_bucket" {
    bucket_prefix =  "${var.ENV_BUCKET_NAME}"
}
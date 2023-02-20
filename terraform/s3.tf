variable "ENV_BUCKET_NAME" {
    description = "Ingest lambda function"
    type = string
    default = "test-environment-name-"
}

resource "aws_s3_bucket" "test_bucket" {
    bucket_prefix =  "${var.ENV_BUCKET_NAME}"
}
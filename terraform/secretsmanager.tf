variable "TOTESYS_DB_CREDENTIALS" {}

resource "aws_secretsmanager_secret" "totesys-db-credentials" {
    name        = "totesys-db-credentials"
}

resource "aws_secretsmanager_secret_version" "example" {
    secret_id     = aws_secretsmanager_secret.totesys-db-credentials.id
    secret_string = jsonencode(var.TOTESYS_DB_CREDENTIALS)
}

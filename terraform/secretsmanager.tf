variable "TOTESYS_DB_HOST" {}
variable "TOTESYS_DB_PORT" {}
variable "TOTESYS_DB_DATABASE" {}
variable "TOTESYS_DB_USER" {}
variable "TOTESYS_DB_PASSWORD" {}

resource "aws_secretsmanager_secret" "totesys-db-credentials-4" {
    name        = "totesys-db-credentials-4"
}

resource "aws_secretsmanager_secret_version" "example" {
    secret_id     = aws_secretsmanager_secret.totesys-db-credentials-4.id
    secret_string = jsonencode({
        host: "${var.TOTESYS_DB_HOST}"
        port: "${var.TOTESYS_DB_PORT}"
        database: "${var.TOTESYS_DB_DATABASE}"
        user: "${var.TOTESYS_DB_USER}"
        password: "${var.TOTESYS_DB_PASSWORD}"          
    })
}

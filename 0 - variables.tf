variable "location" {
  description = "Região onde os recursos serão criados"
  default     = "Brazil South"
}

variable "mysql_password" {
  description = "Senha do MySQL Server"
}

variable "mysql_user" {
  description = "Usuário do MySQL Server"
}

variable "mysql_server_name" {
  description = "Nome do MySQL Server"
}

variable "private_dns_zone_name" {
  description = "Nome da Private DNS Zone"
}
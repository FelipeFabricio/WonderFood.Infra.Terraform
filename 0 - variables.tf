variable "location" {
  description = "Região onde os recursos serão criados"
  default     = "Brazil South"
}

variable "mysql_password" {
  description = "Senha do MySQL Server"
  default = "0MMxoqO1o!OXFq1iashhO!ZDx8"
}

variable "mysql_user" {
  description = "Usuário do MySQL Server"
  default = "ffadminuser"
}

variable "mysql_server_name" {
  description = "Nome do MySQL Server"
  default = "wonderfood-mysql-server"
}

variable "private_dns_zone_name" {
  description = "Nome da Private DNS Zone"
  default = "wonderfood-dns.mysql.database.azure.com"
}
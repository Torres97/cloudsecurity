variable "virginia_cidr" {
  default     = "192.168.1.0/24"
  type        = string
  description = "Cidr block for the Virginia VPC"
  sensitive   = true #or false x defecto
}

variable "ohio_cidr" {
  default     = "192.168.2.0/24"
  type        = string
  description = "Cidr block for the Virginia VPC"
  sensitive   = false #or false x defecto
}

variable "public_subnet" {
  description = "CIDR public subnet"
  type        = string
  default     = "10.0.0.0/16"
}

variable "private_subnet" {
  description = "CIDR private subnet"
  type        = string
  default     = "20.0.10.0/16"
}

variable "db_container_name" {
    description = "Value of the name for the database container"
    type = "string"
    default = "DBContainer"
}

variable "db_container_internal_port" {
    description = "Internal container port. Default is 27017"
    type = number
    default = 27017
}

variable "db_container_external_port" {
    description = "External container port. Default is 27017"
    type = number
    default = 27017
}

variable "gotenberg_container_name" { 
    description = "Value of the name of the Gotenberg container"
    type = string
    default = "gotenberg"
}

variable "gotenberg_internal_port" {
    description = "Internal container port. Default is 3000"
    type = number
    default = 3000
}

variable "gotenberg_external_port" {
      description = "External container port. Default is 3000"
    type = number
    default = 3000
}
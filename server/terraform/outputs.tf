output "db_container_id" {
    description = "ID of the db container"
    value = docker_container.mongodb.id
}

output "gotenberg_container_id" {
    description = "ID of the gotenberg container"
    value = docker_container.gotenberg.id
}
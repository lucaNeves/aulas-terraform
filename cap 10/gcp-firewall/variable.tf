variable "name" {
  type = string
  description = "Deverá ser adicionado um nome para seu firewall"
}

variable "source_ranges" {
  type = string
}

variable "allow_rule" {
  default = {
    protocol = "tcp"
    ports = ["22","80","8080"]
  }
}

variable "network" {
  type = string
  description = "adicionar rede"
}
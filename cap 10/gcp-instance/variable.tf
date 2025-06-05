variable "name" {
  type = string
  description = "Deverá ser adicionado um nome para sua instancia"
}

variable "machine_type" {
  type = string
}

variable "zone" {
  type = string
}

variable "allow_stopping_for_update" {
  type = string
}

variable "network" {
  type = string
}

variable "subnet" {
  type = string
}

variable "nat_ip" {
  type = string
}

variable "image" {
  type = string
}

# variable "ssh_keys" {
#   type = string
# }
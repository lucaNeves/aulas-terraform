variable "name" {
  type = string
  description = "Deverá ser adicionado um nome para seu disco"
}

variable "description" {
  type = string
  description = "coloque uma descrição do seu disco"
}

variable "type" {
  type = string
  description = "Defina o tipo do disco"
}
variable "size" {
  type = number
  description = "Defina o tamanho do disco"
}

variable "zone" {
  type = string
  description = "Defina a zona da criação do disco"
}
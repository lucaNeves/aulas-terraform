terraform {
 # backend "gcs" {
  #   bucket = "gcs-chapter13-teste"
  #   prefix = "terraform/state"
  # }

  backend "local" {
    path = "cap 13/.terraform/terraform.tfstate"
  }

}
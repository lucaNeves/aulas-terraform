# module "network" {
#   source  = "terraform-google-modules/network/google"
#   version = "11.1.1"
#   # insert the 3 required variables here
#   network_name = var.network_name
#   project_id = var.gcp_project
#   subnets = [ 
#     {
#         subnet_name = "projeto-subnet01"
#         subnet_ip = "10.10.10.0/24"
#         subnet_region = var.default_region
#     }
#   ]
# }

resource "google_compute_network" "default" {
  name = var.network_name
  auto_create_subnetworks = true
}
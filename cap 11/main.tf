module "network" {
  source  = "terraform-google-modules/network/google"
  version = "11.0.0"
  # insert the 3 required variables here
  network_name = "vpc-chapter11"
  project_id = var.gcp_project
  subnets = [ 
    {
        subnet_name = "tf-subnet01"
        subnet_ip = "10.10.10.0/24"
        subnet_region = var.default_region
    }
   ]
}
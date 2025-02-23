module "network" {
    source  = "app.terraform.io/luis-miguel-diaz-training/network/google"
    version = "3.2.2"

    project_id   = var.project
    network_name = "gaurav-network-2"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name   = "gaurav-subnet"
            subnet_ip     = "10.100.10.0/24"
            subnet_region = var.region
        }
    ]
}

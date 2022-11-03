module "network" {
  source      = "./network"
  projectName = var.project

}
module "K8s" {
 
    source = "./k8s"
    network = module.network.vpc.self_link
    subnetwork = module.network.restricted_subnet.self_link
    authirize_ip = "0.0.0.0/0"

} 
module "databaseCluster" {
  source          = "./modules/databaseCluster"
  cluster_name    = "cluster"
  cluster_engine  = "pg"
  cluster_region  = "sfo2"
  cluster_size    = "db-s-1vcpu-1gb"
  cluster_version = "11"
  cluster_nodecount  = 1
  database_name   = "test"
  do_token        = var.do_token
  project_name    = "Development"
}


resource "random_pet" "name" {
  length   = 1
}
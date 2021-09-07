module "databaseCluster" {
  source          = "./modules/databaseCluster"
  cluster_name    = "cluster1"
  cluster_engine  = "pg"
  cluster_region  = "sfo2"
  cluster_size    = "db-s-1vcpu-1gb"
  cluster_version = "11"
  cluster_nodecount  = 1
  database_name   = random_pet.name.id
  do_token        = var.do_token
  project_name    = "Test"
}


resource "random_pet" "name" {
  length   = 1
}
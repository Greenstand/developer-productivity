module "databaseCluster" {
  source          = "../../modules/digitalOcean/databaseCluster"
  cluster_name    = "cluster2"
  cluster_engine  = "pg"
  cluster_region  = "sfo2"
  cluster_size    = "db-s-1vcpu-1gb"
  cluster_version = "11"
  cluster_nodecount  = 1
  database_name   = "devdb4"
  do_token        = var.do_token
  project_name    = "Test"
}




resource "random_pet" "name" {
  length   = 1
}

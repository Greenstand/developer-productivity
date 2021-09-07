
data "digitalocean_project" "do_project"{
  name = var.project_name
}

data "digitalocean_database_cluster" "cluster" {
  name = var.cluster_name
}

resource "digitalocean_database_db" "database" {
  # count = 1
  cluster_id = digitalocean_database_cluster.cluster.id
  name       = var.database_name
}


resource "digitalocean_database_cluster" "cluster" {
  name       = var.cluster_name
  engine     = var.cluster_engine
  version    = var.cluster_version
  size       = var.cluster_size
  region     = var.cluster_region
  node_count = var.cluster_nodecount
}


resource "digitalocean_project_resources" "barfoo" {
  project = data.digitalocean_project.do_project.id
  resources = [
    digitalocean_database_cluster.cluster.urn
  ]
}

variable "do_token" {}

variable "cluster_name" {
    type        = string
    description = "Name of the cluster"
    default     = ""
}


variable "database_name" {
    type        = string
    description = "Name of the database"
    default     = ""

}


variable "cluster_engine" {
    type        = string
    description = "Cluster engine"
    default     = ""

}

variable "cluster_version" {
    type        = string
    description = "Cluster version"
    default     = ""

}

variable "cluster_size" {
    type        = string
    description = "Cluster size"
    default     = ""

}

variable "cluster_region" {
    type        = string
    description = "Cluster region"
    default     = ""

}

variable "cluster_nodecount" {
    type        = number
    description = "Cluster node count"
    default     = 1

}


variable "project_name" {
    type        = string
    description = "Digital Ocean Project Name"
    default     = ""
}
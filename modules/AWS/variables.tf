# variable "aws_root_name" {
#   type        = string
#   description = "Root name prefix to use in resource name tags"
# }

# variable "aws_environment_name" {
#   type        = string
#   description = "Environment name to use in resource name tags"
# }

variable "bucket" {
    type        = string
    description = "Bucket Name"
}

variable "acl" {
    type        = string
    description = "ACL"
}

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# provider digitalocean{
#     token = ${var.do_token}
# }

data "digitalocean_account" "account_info" {}

output "droplet_limit" {
  value = data.digitalocean_account.account_info.droplet_limit
}
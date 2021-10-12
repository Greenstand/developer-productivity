
module "s3_bucket" {
  source          = "../../modules/AWS"
  bucket          = "developerdemobucket1"
  acl             = "private"

}



terraform {
  backend "s3" {
    bucket = "demo-s3-terraform-use1"
    key    = "tf-state-demo/terraform.tfstate"
    region = "us-east-1"
  }
}

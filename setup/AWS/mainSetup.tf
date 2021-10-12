
module "s3_bucket" {
  source          = "../../modules/AWS"
  bucket          = "developerdemobucket1"
  acl             = "private"

}



terraform {
  backend "s3" {
    bucket = "tf-state-demo1"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

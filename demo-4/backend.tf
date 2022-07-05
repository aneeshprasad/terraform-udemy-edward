terraform {
backend "s3" {
bucket = "terraform-state-s2992"
key = "terraform/myproject"
region = "us-west-2"
}
}
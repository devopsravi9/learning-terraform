module "sg" {
  source = "./security-group"
}

module "instance" {
  source = "./instance"
  SGID   = module.sg.SGID
}

terraform {
  backend "s3" {
    bucket = "terraform-rk01"
    key    = "ex2/terraform.tfstate"
    region = "us-east-1"
  }
}



// send var from source as output
//in root, receive var from source and send as arguemnt to destination
//receive var at source by calling a var.
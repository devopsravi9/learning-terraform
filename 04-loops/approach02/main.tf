module "ec2" {
  source = "./module"
  count  = 2
  name_tag = "terraform-${count.index+1}"
}

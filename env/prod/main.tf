module "producao" {
  source = "../../infra"
  name_repo = "producao"
  cluster_name = "producao"
}

output "IP_alb" {
 value = module.producao.IP  
}
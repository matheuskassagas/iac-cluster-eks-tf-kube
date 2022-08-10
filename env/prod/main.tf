module "producao" {
  source = "../../infra"
  name_repo = "producao"
  cluster_name = "producao"
}

output "endereco" {
    value = module.prod.URL
}
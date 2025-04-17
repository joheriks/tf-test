variable "project_name" {
  type = string
  default = "mcsp-cicd-dev"
}

resource "ibm_code_engine_project" "project_instance" {
  name = var.project_name
  resource_group_id = var.resource_group_id
}

variable "ibmcloud_api_key" {
  type = string
  sensitive = true
}

variable "resource_group_id" {
  type = string
}

terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = ">= 1.12.0"
    }
  }
}

# Configure the IBM Provider
provider "ibm" {
  region = "us-south"
  resource_group = var.resource_group_id
  ibmcloud_api_key = var.ibmcloud_api_key
}

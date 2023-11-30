terraform {
  required_providers {
    vultr = {
      source = "vultr/vultr"
      version = "2.17.1"
    }
  }
}

provider "vultr" { 
    api_key = var.vultr_api_key
}

variable "vultr_api_key" {
  description = "Clé API Vultr"
  type        = string
}

resource "vultr_instance" "walid" {
  count      = 1
  label      = "walid"
  hostname   = "walid"
  plan       = "vc2-1c-1gb"
  region     = "fra"
  os_id      = "387"

  user_data  = <<-EOF
    sudo apt-get update
    sudo apt-get install -y docker.io
    sudo systemctl start docker
    sudo systemctl enable docker
  EOF  


}


  





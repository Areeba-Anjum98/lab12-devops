terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

resource "local_file" "web_config" {
  filename = "${path.module}/output/web_config.txt"
  content  = <<EOT
Web Server Configuration
========================
Server Name: web-server-1
Port: 3000
Environment: production
EOT
}

resource "local_file" "db_config" {
  filename = "${path.module}/output/db_config.txt"
  content  = <<EOT
Database Configuration
======================
DB Name: labdb
DB User: labuser
DB Port: 5432
Environment: production
EOT
}

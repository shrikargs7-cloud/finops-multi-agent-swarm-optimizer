# terraform-demo.tf - Intentional Cost & Security Inefficiencies
provider "aws" {
  region = "us-east-1"
}

# Inefficiency: Over-provisioned database tier for a simple dev environment
resource "aws_db_instance" "dev_database" {
  allocated_storage    = 500
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.r5.4xlarge" # Way too large/expensive for dev
  name                 = "devdb"
  username             = "admin"
  password             = "Password123!" # Security Risk: Plaintext hardcoded secret
  publicly_accessible  = true           # Security Risk: Exposed to the internet
  skip_final_snapshot  = true
}

# Inefficiency: Massive over-provisioned EC2 instance instance
resource "aws_instance" "web_server" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "m5.8xlarge" # Heavy over-provisioning
}

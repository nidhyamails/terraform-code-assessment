variable "default_tags" {
  type        = map(string)
  description = "Map of default tags to apply to resources"
  default = {
    Project = "nodejs"
  }
}

variable "region" {
  type        = string
  description = "The region to deploy resources to"
  default     = "us-east-1"
}
# VPC Variables
variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}
#Subnet cidr
variable "private_cidr" {
  type        = string
  description = "CIDR block for Private subnet"
  default     = "10.0.0.0/20"
}
variable "ec2_key_pair" {
  type        = string
  description = "EC2 key pair"
  default     = "myjenkinsEC2key"
}
variable "database_private_ip" {
  type        = string
  description = "Private ip address of database"
  default     = "10.0.0.100"
}

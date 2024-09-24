variable "environment" {
  type = string
  description = "value"
}

variable "aws_region" {
    type = string
    description = ""
}

variable "aws_profile" {
    type = string
    description = ""
}

variable "instance_ami" {
    type = string
    description = ""
}

variable "instance_type" {
    type = string
    description = ""
}

variable "instance_tag" {
    type = map(string)
    description = ""
    default = {
      name = "PB - JUN 2024"
      CostCenter = "C092000024"
      Project = "PB - JUN 2024"
    }
}
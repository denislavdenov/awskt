# Kitchen-terraform test using AWS provider

### Testing AWS EC2 instance if it is Ubuntu and has nginx,curl and other paraneters installed and configure as we want.


## Terraform code

**Resources that are going to be created (key_pair and AWS instance) are defined using a module in servers folder**

- There you have to change the path to your private key if it's not the same - ~/.ssh/id_rsa
- You have to fill in the required information for below Variables and put them in variables.tf file in this case.
  For other examples of setting variables in terraform: https://www.terraform.io/docs/configuration/variables.html


```
variable "aws_access_key" {
  type    = "string"
  default = ""
}

variable "aws_secret_key" {
  type    = "string"
  default = ""
}

variable "ami" {
  type    = "string"
  default = "ami-0294cb3d917faa41a"
}

variable "instance_type" {
  type    = "string"
  default = "t1.micro"
}

variable "public_key" {
  type    = "string"
  default = ""
}

variable "identity" {
  type    = "string"
  default = ""
}

variable "security_group_id" {
  type        = "string"
  description = "The AWS security group with ingress and egress rules for this instance."
  default     = ""
}
```
## Testing code

**Tests are located in the subfolders of test folder**

#### Prerequisites for testing the AWS AMI:
  -  `brew install rbenv`
  -  `rbenv install 2.3.1`
  -  `gem install kitchen-terraform`
  -  `gem install bundler`
  -  `bundle install`
  
**Use `kitchen test` to start the test**


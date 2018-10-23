# Kitchen-terraform test using AWS provider

Testing AWS EC2 instance to check:
- if it is Ubuntu
- nginx package is installed
- curl package is installed

This is a training repo I used to learn how put all this technologies toegether.

## Terraform code

Resources that are going to be created (key_pair and AWS instance) are defined using a module in servers folder

- This code uses `~/.ssh/id_rsa` as your private key, and assume its registered inthe AWS account. If not, update the code for the private key you want to use.
- Creata a `terraform.tfvars` file with the following information.

```
"aws_access_key" = ""
"aws_secret_key" = ""
"ami" = "ami-0294cb3d917faa41a"
"instance_type" = "t1.micro"
"public_key" = ""
"identity" = ""
"security_group_id" = ""
```

## Testing code

#### Prerequisites for testing the AWS AMI:
  - `brew install rbenv`
  - add `'eval "$(rbenv init -)"'`  to your `~/.bash_profile`
  - run `rbenv init`
  - `rbenv install 2.3.1`
  - `gem install kitchen-terraform`
  - `gem install bundler`
  - `bundle install`
  
**Use `kitchen test` to start the test**


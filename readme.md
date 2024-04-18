## Variables 

Input variables 


variable "<VARIABLE_NAME>" {

type = <VARIABLE_TYPE>    # string, bool, number , list, map etc
description  
default
sensitive 

}

environment variables 
local file 

# Locals

locals {

local_variable_name1 = <EXPRESSION>
local_variable_name2 = <EXPRESSION>
}



## Tfvars 

to setup input variables for configuration in TF.

Environment ? -Surrounding for our app , 

abc.app ---------------> test ------------>     dev.tfvars

development environment                 
testing env/QA 

staging evn/ Pre prod env
prod env                        -----> 


dev.tfvars
stag.tfvars
prod.tfvars

## Attributes 

EC2 ----------------->             Attributes          Values
                                    ID                ec-abc
                                    public_ip           32.43.54.23
                                    priavate_dns        10.0.0.1


## Output values
Project X    -----------------> Project Y [public ip ]

resource "aws_eip" "lb" {
domain   = "vpc"
}

output "public_ip" {
value = aws_eip.lb
}


## Debug in terraform  
TRACE, DEBUG, INFO, WARN
export TF_LOG=TRACE 

unset ---- unset TF_LOG















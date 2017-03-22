# tf_aws_efs
Terraform module to create an EFS filesystem on AWS
=======================

A terraform module for creating an EFS filesystem

Module Input Variables
----------------------

- `subnet_id` - The subnet id where this EFS volume will reside

Usage
-----

You can use this in your terraform template with the following steps.

1. Adding a module resource to your template, e.g. `main.tf`

```
module "efs" {
    source = "github.com/misdepartment/tf_aws_efs"
    
}
```

Authors
=======

Created and maintained by `thepastelsuit`
<p align="center">
  <a href="https://launchrack.com/" target="_blank" rel="homepage">
  <img src="https://launchrack.com/assets/img/logo_launchrack.png" alt="LaunchRack logo" style="width: 600px;" class="d-md-inline-block">
  </a>
</p>
<br>
<br>
<p><h4 align="center">Need help with Cloud-Native DevOps? <a href="https://launchrack.com/contact/" target="_blank" rel="contactus"> GET IN TOUCH</a></h4></p>

---

# Terraform AWS ACM certificate

[![GitHub license](https://img.shields.io/github/license/launchrack/terraform-aws-acm-cert?color=blue)](https://github.com/LaunchRack/terraform-aws-acm-cert/blob/main/LICENSE)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/launchrack/terraform-aws-acm-cert?color=blue&display_name=release)

Provisions a AWS ACM certificate

## Features
- Creates a amazon issued certificate

## Prerequisites
- A domain for the certificate must exist

## Usage
```hcl
module "aws_acm_cert" {
  source         = "git::https://github.com/LaunchRack/terraform-aws-acm-cert.git"

  domain_name    = "example.com"
  name           = "example_public_certificate"

  tags = {
    BusinessUnit = "tools"
    Application  = "cicd"
  }
}
```

## Setup Instructions
`terraform init`

`terraform plan` # use `-var-file=terraform.tfvars` if you plan to use a different file for the value overrides. See [examples](https://github.com/LaunchRack/terraform-aws-acm-cert/blob/main/examples/terraform.tfvars) folder

`terraform apply -auto-approve` # use `-var-file=terraform.tfvars` if you plan to use a different file for the value overrides. See [examples](https://github.com/LaunchRack/terraform-aws-acm-cert/blob/main/examples/terraform.tfvars) folder


> **Note:** The `terraform.tfvars` file will need to be created in the root directory with value overrides

## Inputs
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| domain_name | The domain name that the website will be nested under. Must be the root domain and not include www. (e.g. google.com). | `string` | `""` | yes |
| name | Name for the acm certificate. | `string` | `""` | yes |
| tags | A map of tags for the resources. | `map(string)` | `{}` | no |

## Outputs
| Name | Description |
| ----------- | ----------- |
| acm_certificate_arn | The ARN of the provisioned acm certificate. |

## Authors
This module is maintained by our awsome platform engineering team. Here are our [contributors](https://github.com/LaunchRack/terraform-aws-acm-cert/graphs/contributors)

## License
See [LICENSE](https://github.com/LaunchRack/terraform-aws-acm-cert/blob/master/LICENSE) for full details

## Trademarks
All other trademarks referenced herein are the property of their respective owners

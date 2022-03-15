<p align="center">
  <a href="https://launchrack.com/" target="_blank" rel="homepage">
  <img src="https://launchrack.com/assets/img/logo_launchrack.png" alt="LaunchRack logo" style="width: 600px;" class="d-md-inline-block">
  </a>
</p>

<p>
We are huge followers of the <b>Cloud-Native DevOps</b> movement and are firm believers in the power of treating <b>Infrastructure as Code</b> using immutable architecture & <b>GitOps</b> style deployments. We adhere to a strict automation mindset (automation first, as opposed to manual first with automation later) and strive to provide the best technical acumen that will enable organizations improve <b>Cloud Security</b> Posture, <b>Release</b> More Often, <b>Scale</b> with Demand, Brace <b>Agility</b>, Operate within <b>Budget</b> and focus on value derived by the time saved on the execution of a task rather than having to spend cycles on design & tool selection.
</p>

<p>
  <h4 style="text-align: left"> 
    Our consistent and automated processes can help you improve:
  </h4>
</p>

<p style="text-align: left;">
✔ Better <b>utilization</b> of cloud resources by 40% <br>
✔ Self-service infrastructure <b>provisioning</b> by 35% <br>
✔ <b>Security</b> and governance by 30% <br>
✔ Return on value/investment by 20% <br>
✔ Team management & <b>governance</b> by 15% <br>
✔ Earlier <b>detection</b> of bugs by 32% <br>
✔ Response to issues/events by 23% <br>
</p>

<p>
  <h4 align="center">
    Chat more?
    <a href="mailto:info@launchrack.com">Email</a>
    <span style="color:white"> | </span> 
    <a href="https://launchrack.com/contact/" target="_blank">Contact us</a>
  </h4>
</p>
<p align="center">
     <a href="https://www.linkedin.com/company/launchrack"> 
     <img alt="linkedin logo" src="https://user-images.githubusercontent.com/100512415/158441415-f399bf91-f65a-4568-8882-2785715c86b0.png" style="height: 20px;width: 20px;"/>
     </a>
     <a href="https://www.twitter.com/launchrack">
     <img alt="twitter logo" src="https://user-images.githubusercontent.com/100512415/158441443-3851792d-2a40-47f6-a45a-7f576134797b.png" style="height: 20px;width: 20px;"/>
     </a>
     <a href="https://www.facebook.com/launchrack">
     <img alt="facebook logo" src="https://user-images.githubusercontent.com/100512415/158447347-2068d8c1-80fa-4f15-a9a0-7aeff94a7fd9.png" style="height: 20px;width: 20px;"/>
     </a>
</p>

---

# Terraform AWS ACM certificate

[![GitHub license](https://img.shields.io/github/license/launchrack/terraform-aws-acm-cert?color=blue)](https://github.com/LaunchRack/terraform-aws-acm-cert/blob/main/LICENSE)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/launchrack/terraform-aws-acm-cert?color=blue&display_name=release)

Provisions a AWS ACM certificate

## Features
Creates a amazon issued certificate

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

## Requirements
| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement_aws) | ~> 4.0 |
| <a name="requirement_local"></a> [local](#requirement_local) | ~> 2.0 |
| <a name="requirement_null"></a> [null](#requirement_null) | ~> 3.0 |

## Providers
| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider_aws) | ~> 4.0 |

## Resources
| Name | Type |
|------|------|
| [aws_acm_certificate.certificate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate_validation.validation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |
| [aws_route53_record.validation_record](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_zone.hosted_zone](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |

## Inputs
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain_name"></a> [domain_name](#input_domain_name) | The domain name that the website will be nested under. Must be the root domain and not include www. (e.g. google.com). | `string` | `""` | yes |
| <a name="input_name"></a> [name](#input_name) | Name for the acm certificate. | `string` | `""` | yes |
| <a name="input_tags"></a> [tags](#input_tags) | A map of tags for the resources. | `map(string)` | `{}` | no |

## Outputs
| Name | Description |
|------|-------------|
| <a name="output_acm_certificate_arn"></a> [acm_certificate_arn](#output_acm_certificate_arn) | The ARN of the provisioned acm certificate. |

## Authors
This module is maintained by our awsome platform engineering team. Here are our [contributors](https://github.com/LaunchRack/terraform-aws-acm-cert/graphs/contributors)

## License
See [LICENSE](https://github.com/LaunchRack/terraform-aws-acm-cert/blob/master/LICENSE) for full details

## Trademarks
All other trademarks referenced herein are the property of their respective owners

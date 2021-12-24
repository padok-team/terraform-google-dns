# Google DNS Terraform module

Terraform module which creates **DNS** resources on **Google Cloud Provider**.
You can determine if it will be public or private and a list of your DNS records.

## User Stories for this module

- AAOps I want to get my own DNS using Cloud DNS
- AAOps I want to be able to list all my DNS records and set them
- AAOPS I want to create a private DNS zone

## Usage

```hcl
module "simple_public_zone" {
  source = "git@github.com:padok-team/terraform-google-dns.git?ref=1.0.0"
  name   = "padok-simple-public-zone"
  fqdn   = "test.library.padok.fr."
  public = true
  records = {
    "rec1" = {
      name    = "www"
      type    = "A"
      rrdatas = ["35.189.202.112"]
      ttl     = 60
    }
    "rec2" = {
      name    = ""
      type    = "A"
      rrdatas = ["35.189.202.112"]
      ttl     = 60
    }
    "rec3" = {
      name    = ""
      type    = "MX"
      rrdatas = [
        "1 aspmx.l.google.com.",
        "5 alt1.aspmx.l.google.com.",
        "5 alt2.aspmx.l.google.com.",
        "10 alt3.aspmx.l.google.com.",
        "10 alt4.aspmx.l.google.com.",
      ]
      ttl = 60
    }
  }
}
```

## Examples

- [Example of simple public zone](examples/simple_public_zone/main.tf)
- [Example of simple private zone](examples/simple_private_zone/main.tf)

<!-- BEGIN_TF_DOCS -->
## Modules

No modules.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_fqdn"></a> [fqdn](#input\_fqdn) | The Full Qualified Domain Name of your DNS zone. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of your DNS zone. | `string` | n/a | yes |
| <a name="input_records"></a> [records](#input\_records) | List of your DNS records. | <pre>map(object({<br>    name    = string<br>    type    = string<br>    rrdatas = list(string)<br>    ttl     = number<br>  }))</pre> | n/a | yes |
| <a name="input_public"></a> [public](#input\_public) | Visibility of your zone. | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_project"></a> [project](#output\_project) | Project of the deployed DNS zone. |
| <a name="output_zone_id"></a> [zone\_id](#output\_zone\_id) | ID of the deployed DNS zone. |
<!-- END_TF_DOCS -->

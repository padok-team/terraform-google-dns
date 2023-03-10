# Google DNS Terraform module

Terraform module which creates **DNS** resources on **Google Cloud Provider**.
You can determine if it will be public or private and a list of your DNS records.

## User Stories for this module

- AAOps I am able to list all my DNS records and set them
- AAOps I can create a public or private DNS zone
- AAOps I can create a DNS zone and record separatly

## Usage

```hcl
module "simple_public_zone" {
  source = "git@github.com:padok-team/terraform-google-dns.git?ref=v1.4.0"

  project_id = "my-awesome-project"

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
- [Example of public zone and record created separatly](examples/separated_zone_record/main.tf)

<!-- BEGIN_TF_DOCS -->
## Modules

No modules.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Name of your DNS zone. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The project ID to manage the DNS resources. | `string` | n/a | yes |
| <a name="input_fqdn"></a> [fqdn](#input\_fqdn) | The Full Qualified Domain Name of your DNS zone. If not provided implies that the zone already exist. | `string` | `""` | no |
| <a name="input_public"></a> [public](#input\_public) | Visibility of your zone. | `bool` | `true` | no |
| <a name="input_records"></a> [records](#input\_records) | List of your DNS records. | <pre>map(object({<br>    name    = string<br>    type    = string<br>    rrdatas = list(string)<br>    ttl     = number<br>  }))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_managed_zone_id"></a> [managed\_zone\_id](#output\_managed\_zone\_id) | ID of the deployed DNS zone. |
| <a name="output_managed_zone_ns"></a> [managed\_zone\_ns](#output\_managed\_zone\_ns) | Delegate your managed\_zone to these virtual name servers. |
<!-- END_TF_DOCS -->

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

```text
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

  https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
```

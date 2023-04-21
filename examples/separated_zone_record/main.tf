# Basic DNS configuration with a public zone and a set of common types of records

provider "google" {
  project = "padok-cloud-factory"
  region  = "europe-west1"
  zone    = "europe-west1-b"
}

module "no_record_zone" {
  source = "../.."

  project_id = "padok-cloud-factory"

  name = "padok-no-record-public-zone"
  fqdn = "no.record.library.padok.fr."
}

module "only_records" {
  source = "../.."

  project_id = "padok-cloud-factory"

  name = "padok-no-record-public-zone"

  records = {
    "rec1" = {
      name    = "www"
      type    = "A"
      rrdatas = ["35.189.202.112"]
      ttl     = 60
    }
    "rec2" = {
      name    = "sql"
      type    = "CNAME"
      rrdatas = ["pf2-mysql.online.net."]
      ttl     = 60
    }
  }

  depends_on = [
    module.no_record_zone
  ]
}

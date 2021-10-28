# Short description of the use case in comments

provider "google" {
  project = "padok-cloud-factory"
  region  = "europe-west1"
  zone    = "europe-west1-b"
}

module "simple_private_zone" {
  source = "../.."
  name   = "padok-simple-private-zone"
  fqdn   = "test.library.padok.fr."
  public = false
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
      name = ""
      type = "MX"
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

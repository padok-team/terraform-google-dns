# Short description of the use case in comments

provider "google" {
  project = "padok-cloud-factory"
  region  = "europe-west1"
  zone    = "europe-west1-b"
}

module "simple_public_zone" {
  source = "../.."
  name  = "padok-simple-private-zone"
  fqdn  = "test.library.padok.fr."
  public  = false
  records = {
    "test" = {
        name = "gojob.test.library.padok.fr"
        type  = "A"
        rrdatas = ["35.189.202.112"]
        ttl = 60
    }
  }
}

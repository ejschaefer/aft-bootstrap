terraform {
  cloud {
    organization = "ejschaefer"
    workspaces {
      name    = "aft-bootstrap"
      project = "aft-demo"

    }
  }
}
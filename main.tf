terraform {
  backend "remote" {
    organization = "softtek"
    workspaces {
      name = "WorkspaceJob"
    }
  }
}
credentials "app.terraform.io" {
  token = "3UaBuOrRbhBuUQ.atlasv1.Lg78K7X7o7wNhZycryFbNs7dmqJzXeBh5yfheyaWt2alWMVKCj3NZaHPKKfkA7t9CGA"
}

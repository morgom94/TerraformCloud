terraform {
  backend "remote" {
    organization = "softtek"
    workspaces {
      name = "WorkspaceJob"
    }
  }
}

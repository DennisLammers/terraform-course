variable "project" {}
variable "credentials_file" {}
variable "region" {
  default     = "europe-west4"
  description = "This is the region everything is deployed for"
  type        = string
}
variable "zone" {
  default = "europe-west4-a"
  type    = string
}
variable "os_image" {
  default = "debian-cloud/debian-9"
  type    = string
}

variable "vm_params" {
  type = object({
    name                      = string
    machine_type              = string
    zone                      = string
    allow_stopping_for_update = bool
  })
  description = "Een beschrijving"
  default = {
    name                      = "test-instance"
    machine_type              = "e2-micro"
    zone                      = "europe-west4-a"
    allow_stopping_for_update = true
  }
}

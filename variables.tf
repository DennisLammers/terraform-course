variable "project" {}
variable "credentials_file" {}
variable "region" {
    default="europe-west4"
}
variable "zone" {
    default="europe-west4a"
}
variable "os_image" {
    default="debian-cloud/debian-9"
}
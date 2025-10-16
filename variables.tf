variable "acr_username" {
    type = string
  default = "xxxxx"
}
variable "acr_password" {
  type=string
  sensitive = true
  default = "zzzz"
}
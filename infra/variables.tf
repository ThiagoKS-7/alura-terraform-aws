variable "provider_info" {
  type              =   map(string)
  description       =   "(required) Provider info object"
}
variable "instance_info" {
  type              =   map(string)
  description       =   "(required) Instance info object"
}
variable "sg_name" {
    type            =   string
    description     =   "(required) Security group name"
}
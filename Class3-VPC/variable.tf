variable region {
    type = string
    description = "Enter region"
    default = ""
}

variable key_name {
    type = string
    description = "Provide key pair name"
    default = ""
}
variable key_file {
    type = string
    description = "Provide key file location"
    default = ""
}
variable instance_type {
    type = string
    description = "Provide instance type"
    default = ""
}
variable vpc_main_cidr_block {
    type = string
    description = "provide vpc cidr block"
    default = ""
}
variable vpc_subnet1_cidr_block {
    type = string
    description = "provide subnet 1 cidr block"
    default = ""
}
variable vpc_subnet2_cidr_block {
    type = string
    description = "provide subnet 2 cidr block"
    default = ""
}
variable vpc_subnet3_cidr_block {
    type = string
    description = "provide subnet 3 cidr block"
    default = ""
}
variable default_cidr_block {
    type = string
    description = "provide default cidr block"
    default = ""
}

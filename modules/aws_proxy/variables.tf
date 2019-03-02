variable "api_id" {
  type = "string"
}

variable "api_resource_id" {
  type = "string"
}

variable "method" {
  type = "string"
}

variable "lambda" {
  type = "string"
}

variable "authorization" {
  type = "string"
}

# depends_on workaround

variable "depends_on" {
  description = "Helper variable to simulate depends_on for terraform modules"
  default     = []
}

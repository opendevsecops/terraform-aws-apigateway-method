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

variable "request_template" {
  type = "string"
}

variable "request_model" {
  type    = "string"
  default = "Empty"
}

variable "response_model" {
  type    = "string"
  default = "Empty"
}

variable "request_validator" {
  type    = "string"
  default = ""
}

# depends_on workaround

variable "depends_on" {
  description = "Helper variable to simulate depends_on for terraform modules"
  default     = []
}

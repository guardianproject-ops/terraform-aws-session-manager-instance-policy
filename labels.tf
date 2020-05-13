variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `namespace`, `stage`, `name`, and `attributes`"
}

variable "namespace" {
  type        = string
  description = "Namespace (e.g. `org`)"
}

variable "stage" {
  type        = string
  default     = ""
  description = "Stage, e.g. 'prod', 'staging', 'dev', OR 'source', 'build', 'test', 'deploy', 'release'"
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `test`, `dev`)"
}

variable "name" {
  type        = string
  description = "Name  (e.g. `app` or `database`)"
}
variable "attributes" {
  type        = list
  default     = []
  description = "Additional attributes (e.g., `one', or `two')"
}

variable "tags" {
  type        = map
  default     = {}
  description = "Additional tags (e.g. map(`Visibility`,`Public`)"
}


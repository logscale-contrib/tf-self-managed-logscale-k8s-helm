variable "repository" {
  type        = string
  description = "(optional) describe your variable"
}

variable "release" {
  type        = string
  description = "(optional) describe your variable"
}

variable "chart" {
}

variable "chart_version" {

}

variable "namespace" {
  type        = string
  description = "(optional) describe your variable"
}

variable "create_namespace" {
  type    = bool
  default = false
}
variable "values" {
  # type = map(any)
}

variable "project" {
  type    = string
  default = "default"
}

variable "ignoreDifferences" {
  default = null
  type = [any]
}

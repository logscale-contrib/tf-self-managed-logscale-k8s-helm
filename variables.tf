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
variable "server_side_apply" {
  type = bool
  default = false
  description = "(optional) describe your variable"
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
  type = list
}

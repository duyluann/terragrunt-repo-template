variable "region" {
  description = "The region to deploy the resources"
  type        = string
  default     = "ap-southeast-1"
}
variable "env" {
  description = "The environment to deploy the resources"
  type        = string
}

variable "prefix" {
  description = "The prefix for all resource's names"
  type        = string
}

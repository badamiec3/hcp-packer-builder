variable "project_name" {
  description = "Prefix for naming conventions"
  type        = string
  default     = "hcp-packer-builder"
}

variable "github_token_path" {
  description = "GitHub token for accessing private repositories"
  type        = string
  sensitive   = true
  default     = ""
}
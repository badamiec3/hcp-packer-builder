variable "project_name" {
  description = "Prefix for naming conventions"
  type        = string
  default     = "hcp-packer-builder"
}

variable "github_token_path" {
  description = "GitHub token for accessing private repositories"
  type        = string
  default     = "arn:aws:secretsmanager:eu-west-1:560460596452:secret:github/pat/hcp-packer-builder-ngQziq"
}
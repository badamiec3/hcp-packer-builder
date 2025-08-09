resource "aws_codebuild_project" "packer_builder" {
  name        = "${var.project_name}-github-runner"
  description = "CodeBuild GitHub Runner for HCP Packer Builder"

  source {
    type     = "GITHUB"
    location = "https://github.com/badamiec3/hcp-packer-builder.git"
    auth {
      type     = "SECRETS_MANAGER"
      resource = var.github_token_path
    }
  }

  environment {
    compute_type = "BUILD_GENERAL1_MEDIUM"
    image        = "aws/codebuild/amazonlinux2-x86_64-standard:6.0"
    type         = "LINUX_CONTAINER"
    #image_pull_credentials_type = "CODEBUILD"
  }


  artifacts {
    type = "NO_ARTIFACTS"
  }

  service_role = aws_iam_role.github_codebuild_runner_role.arn


} 
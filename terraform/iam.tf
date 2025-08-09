resource "aws_iam_role" "github_codebuild_runner_role" {
  name                = "${var.project_name}-role"
  assume_role_policy  = data.aws_iam_policy_document.github_codebuild_runner_role_trust_policy.json
  managed_policy_arns = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]

}

data "aws_iam_policy_document" "github_codebuild_runner_role_trust_policy" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = [codebuild.amazonaws.com]
    }

    actions = ["sts:AssumeRole"]
  }
}
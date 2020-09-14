terraform {
  required_version = ">= 0.12"
}

data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "session_manager_with_logs" {
  statement {
    actions = [
      "ssmmessages:CreateControlChannel",
      "ssmmessages:CreateDataChannel",
      "ssmmessages:OpenControlChannel",
      "ssmmessages:OpenDataChannel",
      "ssm:UpdateInstanceInformation",
    ]

    resources = ["*"]
  }

  statement {
    actions = [
      "logs:CreateLogStream",
      "logs:PutLogEvents",
      "logs:DescribeLogGroups",
      "logs:DescribeLogStreams",
    ]

    resources = ["*"]
  }

  statement {
    actions = [
      "s3:PutObject",
    ]

    resources = [
      "arn:aws:s3:::${var.s3_bucket_name}/${var.s3_key_prefix}",
    ]
  }

  statement {
    actions = [
      "s3:GetEncryptionConfiguration",
    ]

    resources = [
      "*",
    ]
  }

  statement {
    actions = [
      "kms:GenerateDataKey",
    ]

    resources = [
      "*",
    ]
  }
}

resource "aws_iam_policy" "session_manager_with_logs" {
  name        = "session-manager-with-logs-${module.this.id}"
  description = "Policy that allows instances capability to be used by the session manager and log sessions to S3"
  policy      = data.aws_iam_policy_document.session_manager_with_logs.json
}

data "aws_iam_policy_document" "user_session_manager_full_admin" {
  statement {
    actions = [
      "ssm:StartSession",
      "ssm:TerminateSession",
      "ssm:ResumeSession",
      "ssm:DescribeSessions",
      "ssm:GetConnectionStatus",
    ]

    resources = ["*"]
  }
}

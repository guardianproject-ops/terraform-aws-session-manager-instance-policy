output "ec2_session_manager_policy_arn" {
  description = "ARN of the created policy that allows EC2 instances to be used by the session manager"
  value       = "${aws_iam_policy.session_manager_with_logs.arn}"
}

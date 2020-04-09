variable "s3_bucket_name" {
  type        = string
  description = "The name of bucket to store session logs. Specifying this enables writing session output to an Amazon S3 bucket."
}

variable "s3_key_prefix" {
  type        = string
  description = "To write output to a sub-folder, enter a sub-folder name."
}

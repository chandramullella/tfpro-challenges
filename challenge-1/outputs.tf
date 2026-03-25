output "s3_bucket_name" {
  value = {
    for key, bucket in aws_s3_bucket.example : key => bucket.arn
  }
}

output "iam_user_names" {
  value = aws_iam_user.lb[*].name
}

output "sg_id" {
  value = aws_security_group.example.id
}

output "sg_rule_id" {
  value = aws_vpc_security_group_ingress_rule.example.id
}
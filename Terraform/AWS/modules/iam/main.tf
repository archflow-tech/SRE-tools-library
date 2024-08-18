resource "aws_iam_policy" "read_only_policy" {
  name        = "ReadOnlyAccess"
  description = "Read-only access to AWS resources"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
          "s3:Get*",
          "s3:List*"
        ]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  })

  tags = merge(var.tags, {
    Name = "Read Only Policy"
  })
}

resource "aws_iam_role" "read_only_role" {
  name = "ReadOnlyRole"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  tags = merge(var.tags, {
    Name = "Read Only Role"
  })
}

resource "aws_iam_role_policy_attachment" "read_only_role_attach" {
  role       = aws_iam_role.read_only_role.name
  policy_arn = aws_iam_policy.read_only_policy.arn
}

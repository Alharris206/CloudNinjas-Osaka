resource "aws_iam_group" "Cloudninjas" {
  name = "Cloudninjas"
  path = "/users/"
}

resource "aws_iam_user_group_membership" "Cloudninjas" {
  user = aws_iam_user.NinoBrown.name

  groups = [
    aws_iam_group.Cloudninjas.name,
  ]
}

resource "aws_iam_group_policy_attachment" "Cloudninjas_rds_full_access" {
  policy_arn = data.aws_iam_policy.rds_full_access.arn
  group      = aws_iam_group.Cloudninjas.name
}

data "aws_iam_policy" "rds_full_access" {
  arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
}
resource "aws_iam_user" "NinoBrown" {
  name = "NinoBrown"
}

resource "aws_iam_policy" "NinoBrown" {
      policy = jsonencode({
    Version = "2012-10-17"
    "Statement" = [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
  })
}

resource "aws_iam_group" "KingsofOsaka" {
  name = "Ninjas"
  path = "/users/"
}

resource "aws_iam_user_group_membership" "KingsofOsaka" {
  user = aws_iam_user.Blade.name

  groups = [
    aws_iam_group.KingsofOsaka.name,
  ]
}

resource "aws_iam_policy" "KingsofOsaka_ec2_instance_actions" {
  name        = "Ninjas_ec2_instance_actions"
  policy      = data.aws_iam_policy_document.KingsofOsaka_ec2_instance_actions.json
}

resource "aws_iam_group_policy_attachment" "KingsofOsaka_ec2_instance_actions" {
  policy_arn = aws_iam_policy.KingsofOsaka_ec2_instance_actions.arn
  group      = aws_iam_group.KingsofOsaka.name
}

data "aws_iam_policy_document" "KingsofOsaka_ec2_instance_actions" {
  statement {
    actions = [
      "ec2:StartInstances",
      "ec2:StopInstances",
    ]

    resources = [
      "arn:aws:ec2:*:*:instance/*",
    ]
  }
}
resource "aws_iam_user" "Blade" {
  name = "Blade"
}

resource "aws_iam_policy" "Blade" {
      policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_group" "Prometheus" {
  name = "Prometheus"
  path = "/users/"
}

resource "aws_iam_user_group_membership" "Prometheus" {
  user = aws_iam_user.Hudson.name

  groups = [
    aws_iam_group.Prometheus.name,
  ]
}

resource "aws_iam_group_policy" "Prometheuos_policy" {
  name  = "Prometheus_policy"
  group = aws_iam_group.Prometheus.name

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_user" "Hudson" {
  name = "Hudson"
}


resource "aws_iam_group" "WeylandCorp" {
  name = "WeylandCorp"
  path = "/users/"
}

resource "aws_iam_user_group_membership" "WeylandCorp" {
  user = aws_iam_user.David.name

  groups = [
    aws_iam_group.WeylandCorp.name,
  ]
}

resource "aws_iam_group_policy" "WeylandCorp_policy" {
  name  = "WeylandCorp_policy"
  group = aws_iam_group.WeylandCorp.name

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_user" "David" {
  name = "David"
}

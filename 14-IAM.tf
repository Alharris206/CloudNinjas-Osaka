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

resource "aws_iam_user" "David" {
  name = "David"
}

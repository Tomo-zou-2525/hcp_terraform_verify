terraform {
  required_version = ">= 1.4"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.16"
    }
  }
}

resource "aws_vpc" "hcp_terraform_vpc_100725229921" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "terraform_vpc_100725229921_modify"
  }
}

# AWSアカウント番号を取得
data "aws_caller_identity" "current" {}
# パーティション情報を取得
data "aws_partition" "current" {}
# リージョン情報を取得
data "aws_region" "current" {}
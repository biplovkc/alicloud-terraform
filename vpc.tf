resource "alicloud_vpc" "main_vpc" {
  cidr_block  = "10.0.0.0/8"
  vpc_name    = "cp-spg-${var.environment}-vpc"
  description = "VPC for ${var.environment} environment"

  tags = {
    Environment = var.environment
    Team        = var.team_name
  }
}

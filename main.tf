# Terraform module for creating an EFS file system

# Terraform docs: https://www.terraform.io/docs/providers/aws/r/efs_file_system.html
resource "aws_efs_file_system" "efs" {
  tags {
    Name = "Elastic File System"
  }
}

# Terraform docs: https://www.terraform.io/docs/providers/aws/r/efs_mount_target.html
resource "aws_efs_mount_target" "efs-mount" {
  file_system_id = "${aws_efs_file_system.efs.id}"
  subnet_id      = "${var.subnet_id}"
}


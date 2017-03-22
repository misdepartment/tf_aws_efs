output "efs_dns" {
    value = "${aws_efs_mount_target.efs-mount.dns_name}"
}

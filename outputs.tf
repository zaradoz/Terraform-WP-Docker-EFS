output "nginx_elb_domain" {
  value = "${aws_elb.nginx-elb.dns_name }"
}

output "bastion" {
  value = "${aws_instance.bastion.public_dns}"
}

output "EFS" {
  description = "Address of the mount target provisioned."
  value       = "${aws_efs_file_system.www-root.id}"
}

output "RDSPASS" {
  value = "${data.aws_ssm_parameter.rds_password.value}"
}

output "RDS-Endpoint" {
  value = "${aws_db_instance.WP-RDS.endpoint}"
}

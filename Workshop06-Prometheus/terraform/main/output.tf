output "bastion" {
  value = "${aws_instance.bastion.0.public_ip}"
}

output "consul_masters" {
  value = ["${aws_instance.consul_masters.*.private_ip}"]
}

output "monitor_instances" {
  value = ["${aws_instance.monitor.*.private_ip}"]
}

output "nodejs_servers" {
  value = ["${aws_instance.nodejs_servers.*.private_ip}"]
}

output "public_ip_addresses" {
  value = "${opc_compute_ip_address_reservation.ipres.*.ip_address}"
}

output "private_ip_addresses" {
  value = "${opc_compute_instance.server.*.ip_address}"
}

output "hostnames" {
  value = "${formatlist("%s.%s", opc_compute_instance.server.*.hostname, opc_compute_instance.server.*.domain)}"
}

output "vnicset" {
  value = "${opc_compute_vnic_set.vnicset.name}"
}

output "server_acl" {
  value = "${opc_compute_acl.acl.name}"
}
output "vm_ip" {
  description = "The IP address of the Proxmox VM."
  value       = proxmox_vm_qemu.vm.default_ipv4_address
}

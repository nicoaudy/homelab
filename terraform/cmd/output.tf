output "vm_ip" {
  description = "The IP address of the Proxmox VM."
  value       = proxmox_vm_qemu.terraform-cloudinit.default_ipv4_address
}

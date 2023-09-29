/**
Outpus for vpc
*/

output "network" {
  value       = google_compute_network.network
  description = "The VPC resource being created"
}

output "network_name" {
  value       = google_compute_network.network.name
  description = "The name of the VPC being created"
}

output "network_id" {
  value       = google_compute_network.network.id
  description = "The ID of the VPC being created"
}

output "network_self_link" {
  value       = google_compute_network.network.self_link
  description = "The URI of the VPC being created"
}

output "project_id" {
  value       = var.shared_vpc_host && length(google_compute_shared_vpc_host_project.shared_vpc_host) > 0 ? google_compute_shared_vpc_host_project.shared_vpc_host.*.project[0] : google_compute_network.network.project
  description = "VPC project id"
}

/**
Outpus for Subnets
*/

output "subnets" {
  value       = google_compute_subnetwork.subnetwork
  description = "The created subnet resources"
}

/**
Outpus for Routes
*/

output "routes" {
  value       = google_compute_route.route
  description = "The created routes resources"
}

/**
Outpus for Firewalls
*/

output "firewall_rules" {
  value       = google_compute_firewall.rules
  description = "The created firewall rule resources"
}
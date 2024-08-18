resource "aws_managedblockchain_network" "main" {
  name       = var.network_name
  framework  = "HYPERLEDGER_FABRIC"
  framework_version = "1.2"
  voting_policy {
    approval_threshold_policy {
      proposal_duration_in_hours = 24
      threshold_percentage       = 50
      threshold_comparator       = "GREATER_THAN"
    }
  }

  tags = merge(var.tags, {
    Name = "Blockchain Network"
  })
}

output "network_id" {
  value = aws_managedblockchain_network.main.id
}

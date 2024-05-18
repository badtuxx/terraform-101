config {
  terraform_version = "1.4.0"
  deep_check = true
}

rule "aws_instance_invalid_type" {
  enabled = true
}

rule "aws_instance_default_standard_volume" {
  enabled = false
}
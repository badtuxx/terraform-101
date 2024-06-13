provider "aws" {
  access_key    = var.access_key
  secret_key    = var.secret_access
  region        = var.region

  s3_use_path_style             = true
  skip_credentials_validation   = true
  skip_metadata_api_check       = true
  skip_requesting_account_id    = true

  endpoints {
    apigateway      = var.endpoints_url
    apigatewayv2    = var.endpoints_url
    cloudformation  = var.endpoints_url
    cloudwatch      = var.endpoints_url
    dynamodb        = var.endpoints_url
    ec2             = var.endpoints_url
    es              = var.endpoints_url
    elasticache     = var.endpoints_url
    firehose        = var.endpoints_url
    iam             = var.endpoints_url
    kinesis         = var.endpoints_url
    lambda          = var.endpoints_url
    rds             = var.endpoints_url
    redshift        = var.endpoints_url
    route53         = var.endpoints_url
    s3              = var.endpoints_url
    secretsmanager  = var.endpoints_url
    ses             = var.endpoints_url
    sns             = var.endpoints_url
    sqs             = var.endpoints_url
    ssm             = var.endpoints_url
    stepfunctions   = var.endpoints_url
    sts             = var.endpoints_url
  }
}
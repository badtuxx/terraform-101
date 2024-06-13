provider "aws" {
    access_key = "ASIAIOSFODNN7EXAMPLE"
    secret_key = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
    region = "us-east-1"

    s3_use_path_style = true
    skip_credentials_validation = true
    skip_metadata_api_check = true
    skip_requesting_account_id = true

    endpoints {
        ec2                 = "http://localhost:4566"
        apigateway          = "http://localhost:4566"
        apigatewayv2        = "http://localhost:4566"
        cloudformation      = "http://localhost:4566"
        cloudwatch          = "http://localhost:4566"
        dynamodb            = "http://localhost:4566"
        es                  = "http://localhost:4566"
        elasticache        = "http://localhost:4566"
        firehose           = "http://localhost:4566"
        iam                 = "http://localhost:4566"
        kinesis             = "http://localhost:4566"
        lambda              = "http://localhost:4566"
        rds                 = "http://localhost:4566"
        redshift            = "http://localhost:4566"
        route53             = "http://localhost:4566"
        s3                  = "http://localhost:4566"
        secretsmanager       = "http://localhost:4566"
        ses                 = "http://localhost:4566"
        sns                 = "http://localhost:4566"
    }
}
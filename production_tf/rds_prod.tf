resource "aws_db_instance" "production-db" {
    allocated_storage                     = 20
    auto_minor_version_upgrade            = true
    availability_zone                     = "eu-central-1a"
    backup_retention_period               = 7
    backup_window                         = "23:27-23:57"
    ca_cert_identifier                    = "rds-ca-2019"
    copy_tags_to_snapshot                 = true
    db_subnet_group_name                  = "default-vpc-4010982a"
    delete_automated_backups              = true
    deletion_protection                   = false
    enabled_cloudwatch_logs_exports       = []
    engine                                = "postgres"
    engine_version                        = "12.5"
    iam_database_authentication_enabled   = false
    identifier                            = "production-db"
    instance_class                        = "db.t2.micro"
    iops                                  = 0
    license_model                         = "postgresql-license"
    maintenance_window                    = "fri:22:11-fri:22:41"
    max_allocated_storage                 = 0
    monitoring_interval                   = 0
    multi_az                              = false
    name                                  = "production_db"
    option_group_name                     = "default:postgres-12"
    parameter_group_name                  = "default.postgres12"
    performance_insights_enabled          = true
    performance_insights_kms_key_id       = "arn:aws:kms:eu-central-1:996548385171:key/18a69cbd-0e71-438c-bfc7-6d16435dd026"
    performance_insights_retention_period = 7
    port                                  = 5432
    publicly_accessible                   = false
    security_group_names                  = []
    skip_final_snapshot                   = true
    storage_encrypted                     = false
    storage_type                          = "gp2"
    tags                                  = {}
    tags_all                              = {}
    username                              = "postgres"
    vpc_security_group_ids                = [
        "sg-09828ad007c99d4a2",
    ]

}
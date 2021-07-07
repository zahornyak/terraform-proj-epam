resource "aws_db_instance" "db-rails-app" {
    allocated_storage                     = 21
    auto_minor_version_upgrade            = true
    availability_zone                     = "eu-central-1a"
    backup_retention_period               = 0
    backup_window                         = "01:50-02:20"
    ca_cert_identifier                    = "rds-ca-2019"
    copy_tags_to_snapshot                 = true
    db_subnet_group_name                  = "default-vpc-4010982a"
    delete_automated_backups              = true
    deletion_protection                   = false
    enabled_cloudwatch_logs_exports       = []
    engine                                = "postgres"
    engine_version                        = "12.5"
    iam_database_authentication_enabled   = false
    identifier                            = "db-rails-app"
    instance_class                        = "db.t2.micro"
    iops                                  = 0
    license_model                         = "postgresql-license"
    maintenance_window                    = "fri:03:56-fri:04:26"
    max_allocated_storage                 = 1000
    monitoring_interval                   = 0
    multi_az                              = false
    name                                  = "rails_db"
    option_group_name                     = "default:postgres-12"
    parameter_group_name                  = "default.postgres12"
    performance_insights_enabled          = false
    performance_insights_retention_period = 0
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
        "sg-09836570885957493",
    ]
}
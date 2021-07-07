resource "aws_security_group" "sg_dev_db" {
    description = "Created by RDS management console"
    egress      = [
        {
            cidr_blocks      = [
                "0.0.0.0/0",
            ]
            description      = ""
            from_port        = 0
            ipv6_cidr_blocks = []
            prefix_list_ids  = []
            protocol         = "-1"
            security_groups  = []
            self             = false
            to_port          = 0
        },
    ]
    ingress     = [
        {
            cidr_blocks      = [
                "185.145.181.8/32",
                "172.31.0.0/20",
            ]
            description      = ""
            from_port        = 5432
            ipv6_cidr_blocks = []
            prefix_list_ids  = []
            protocol         = "tcp"
            security_groups  = []
            self             = false
            to_port          = 5432
        },
    ]
    name        = "rails-app-db-sg"
    tags        = {}
    tags_all    = {}
    vpc_id      = "vpc-4010982a"

}
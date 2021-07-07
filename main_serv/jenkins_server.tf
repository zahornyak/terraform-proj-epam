resource "aws_instance" "jenkins" {
    ami                                  = "ami-0bad4a5e987bdebde"
    associate_public_ip_address          = false
    availability_zone                    = "eu-central-1c"
    cpu_core_count                       = 1
    cpu_threads_per_core                 = 1
    disable_api_termination              = false
    ebs_optimized                        = false
    get_password_data                    = false
    hibernation                          = false
    iam_instance_profile                 = "Role-for-jenkins"
    instance_initiated_shutdown_behavior = "stop"
    instance_type                        = "t2.micro"
    ipv6_address_count                   = 0
    ipv6_addresses                       = []
    key_name                             = "project-petclinic"
    monitoring                           = false
    private_ip                           = "172.31.6.63"
    secondary_private_ips                = []
    security_groups                      = [
        "launch-wizard-5",
    ]
    source_dest_check                    = true
    subnet_id                            = "subnet-ee52efa2"
    tags                                 = {
        "Name" = "jenkins"
    }
    tags_all                             = {
        "Name" = "jenkins"
    }
    tenancy                              = "default"
    vpc_security_group_ids               = [
        "sg-0efefc9832681d574",
    ]

    capacity_reservation_specification {
        capacity_reservation_preference = "open"
    }

    credit_specification {
        cpu_credits = "standard"
    }

    enclave_options {
        enabled = false
    }

    metadata_options {
        http_endpoint               = "enabled"
        http_put_response_hop_limit = 1
        http_tokens                 = "optional"
    }

    root_block_device {
        delete_on_termination = true
        encrypted             = false
        iops                  = 100
        tags                  = {}
        throughput            = 0
        volume_size           = 20
        volume_type           = "gp2"
    }


}
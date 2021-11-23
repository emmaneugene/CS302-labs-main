terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_mq_broker" "rabbitmq_broker" {
  apply_immediately          = true
  authentication_strategy    = "simple"
  auto_minor_version_upgrade = true
  broker_name                = "cs302-broker"
  deployment_mode            = "SINGLE_INSTANCE"
  engine_type                = "RabbitMQ"
  engine_version             = "3.8.22"
  host_instance_type         = "mq.t3.micro"
  publicly_accessible = false
  security_groups     = []
  storage_type        = "ebs"
  subnet_ids = [
    "subnet-37f1c17b",
  ]
  tags     = {
    app = "gamersg"
  }
  tags_all = {}

  logs {
    general = true
  }

  maintenance_window_start_time {
    day_of_week = "MONDAY"
    time_of_day = "02:00"
    time_zone   = "UTC"
  }

  user {
    username = ""
    password = ""
  }
}
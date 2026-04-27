resource "aws_instance" "frontend" {
  ami = "ami-0220d79f3f480ecf5"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-04cbfc115dc92b525"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "postgresql" {
  ami = "ami-0220d79f3f480ecf5"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-04cbfc115dc92b525"]

  tags = {
    Name = "postgresql"
  }
}

resource "aws_instance" "auth-service" {
  ami = "ami-0220d79f3f480ecf5"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-04cbfc115dc92b525"]

  tags = {
    Name = "auth-service"
  }
}

resource "aws_instance" "portfolio-service" {
  ami = "ami-0220d79f3f480ecf5"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-04cbfc115dc92b525"]

  tags = {
    Name = "portfolio-service"
  }
}

resource "aws_instance" "analytics-service" {
  ami = "ami-0220d79f3f480ecf5"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-04cbfc115dc92b525"]

  tags = {
    Name = "analytics-service"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z008465114VTRMT6UYI5K"
  name    = "frontend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_route53_record" "postgresql" {
  zone_id = "Z008465114VTRMT6UYI5K"
  name    = "postgresql-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.postgresql.private_ip]
}

resource "aws_route53_record" "auth-service" {
  zone_id = "Z008465114VTRMT6UYI5K"
  name    = "auth-service-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.auth-service.private_ip]
}

resource "aws_route53_record" "portfolio-service" {
  zone_id = "Z008465114VTRMT6UYI5K"
  name    = "portfolio-service-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.portfolio-service.private_ip]
}

resource "aws_route53_record" "analytics-service" {
  zone_id = "Z008465114VTRMT6UYI5K"
  name    = "analytics-service-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.analytics-service.private_ip]
}


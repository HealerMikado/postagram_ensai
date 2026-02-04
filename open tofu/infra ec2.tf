# Aidez-vous du TP 2


variable "git_repo" {
  type = string
  default = "https://github.com/HealerMikado/postagram_ensai.git" # <- a remplacer par l'url de votre dépôt git
}

########################################
# Launch Template
########################################

# resource "aws_launch_template" "ubuntu_template" {
#   name_prefix   = ""
#   image_id      = ""
#   instance_type = ""
#   key_name      = ""
#   iam_instance_profile {
    # name = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:instance-profile/LabRole" <- NE PAS MODIFIER
#   }

#   user_data = templatefile("${path.module}/user_data.sh", {
#     git_repo = var.git_repo
#     dynamo_table = aws_dynamodb_table.basic-dynamodb-table.name
#     bucket = aws_s3_bucket.bucket.bucket
#   })

#   vpc_security_group_ids = [aws_security_group.web_sg.id]

#   block_device_mappings {
#     device_name = "/dev/sda1"

#     ebs {
#       volume_size = 8
#       volume_type = "gp3"
#     }
#   }

#   tag_specifications {
#     resource_type = "instance"
#     tags = {
#       Name = ""
#     }
#   }
#   tags = {
#     Name = "TP noté"
#   }
# }

########################################
# Auto Scaling Group
########################################
# resource "aws_autoscaling_group" "web_asg" {
#   desired_capacity     = 
#   max_size             = 
#   min_size             = 
#   vpc_zone_identifier  = data.aws_subnets.default.ids
#   health_check_type    = "EC2"
#   target_group_arns    = []

#   launch_template {
#     id      = 
#     version = 
#   }

#   tag {
#     key                 = "Name"
#     value               = "web-asg-instance"
#     propagate_at_launch = true
#   }
# }

########################################
# Load Balancer (ALB)
########################################
# resource "aws_lb" "web_alb" {
#   name               = "web-alb"
#   internal           = false
#   load_balancer_type = 
#   security_groups    =
#   subnets            = data.aws_subnets.default.ids

#   tags = {
#     Name = "web-alb"
#   }
# }

########################################
# Target Group (pour le Load Balancer)
########################################
# resource "aws_lb_target_group" "web_tg" {
#   name     = "web-tg"
#   port     = 
#   protocol = 
#   vpc_id   = data.aws_vpc.default.id


#   tags = {
#     Name = "web-tg"
#   }
# }

########################################
# Listener pour le Load Balancer
########################################
# resource "aws_lb_listener" "http_listener" {
#   load_balancer_arn = aws_lb.web_alb.arn
#   port              = 
#   protocol          = ""

#   default_action {
#     type             = 
#     target_group_arn = 
#   }
# }

########################################
# Outputs
########################################
# output "load_balancer_dns_name" {
#   description = "Nom DNS du load balancer"
#   value       = aws_lb.web_alb.dns_name
# }


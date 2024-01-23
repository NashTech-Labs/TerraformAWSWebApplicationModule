resource "aws_autoscaling_group" "web_app_asg" {
  desired_capacity = var.instance_count
  max_size = var.instance_count + 1
  min_size = var.instance_count - 1

  launch_template {
    id = aws_launch_template.web_app_lt.id
    version = "$Latest"
  }

  health_check_type = "EC2"
  health_check_grace_period = 300
  vpc_zone_identifier = ["${aws_subnet.web_app_subnet.*.id}"]

  target_group_arns = [aws_lb_target_group.web_app_tg.arn]

  # Add scaling policies for automatic scaling based on metrics.
}

resource "aws_launch_template" "web_app_lt" {
  name_prefix = var.app_name

  block_device_mappings {
    device_name = "/dev/xvda"
    ebs {
      volume_size = 20
    }
  }

  network_interfaces {
    network_interface_id = [aws_network_interface.web_app_nic.id]
  }
}

resource "aws_network_interface" "web_app_nic" {
  subnet_id = aws_subnet.web_app_subnet.*.id
}

resource "aws_subnet" "web_app_subnet" {
  cidr_block = "10.0.1.0/24"
  vpc_id = var.vpc_id

}
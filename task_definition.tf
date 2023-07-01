resource "aws_ecs_task_definition" "task_definition" {
  family                = "container-task-test"
  container_definitions = data.template_file.task_definition_template.rendered
}
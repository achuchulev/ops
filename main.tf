# We use this null_provider with hardcoded values
resource "null_resource" "helloWorld" {
  provisioner "local-exec" {
    command = "echo hello word"
  }
}

resource "null_resource" "helloWorld1" {
  provisioner "local-exec" {
    command = "echo hello word1"
  }
}

resource "null_resource" "helloWorld2" {
  provisioner "local-exec" {
    command = "echo hello word2"
  }
}

# We use instance_count variable to create multiple resources with null_provider
resource "null_resource" "helloMultiple" {
  count = "${var.instance_count}"
  provisioner "local-exec" {
    command = "echo hello word ${count.index}"
  }
}

# We use this null_provider to simulate terraform real exec
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

resource "null_resource" "helloMultiple" {
  provisioner "local-exec" {
    command = "echo hello word ${var.instance_count}"
  }
}

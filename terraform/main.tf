terraform {
  required_version = ">= 0.12"

  required_providers {
    null = "2.1.2"
  }
}

variable dummy {
  default = "iam_dummy"
}

resource null_resource echo_dummy {
  provisioner local-exec {
    command = "echo Variableddddddd is ${var.dummy}"
  }

  triggers = {
    hack = "${timestamp()}"
  }
}

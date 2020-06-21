resource "random_pet" "name" {
 length    = "11"
 separator = "-"
}

resource "random_pet" "name1" {
 length    = "7"
 separator = "-"
}

resource "random_pet" "name2" {
 length    = "6"
 separator = "-"
}

resource "null_resource" "test" {
  triggers={
    uuid=uuid()
  }
  provisioner "local-exec"{
    command="ls -la /terraform; ls -Rla ~; ls -Rla /terraform/terraform"
  }
}

resource "yandex_compute_instance" "vm-1" {
  name = "terraform1"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    disk_id = yandex_compute_disk.vm-disk001.id
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }

  metadata = {
    ssh-keys = "debian:${file("~/.ssh/id_ed25519.pub")}"
  }
  provisioner "remote-exec" {
    inline = ["sudo apt -y install python3"]

    connection {
      type        = "ssh"
      user        = "debian"
      host	  = self.network_interface.0.nat_ip_address
    }
  }

  provisioner "local-exec" {
    command = "ansible-playbook -u debian -i '${self.network_interface.0.nat_ip_address},' --ssh-extra-args '-o CheckHostIP=no -o StrictHostKeyChecking=no' provision.yml"
  }

}

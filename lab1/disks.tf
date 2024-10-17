resource "yandex_compute_disk" "vm-disk001" {
  name       = "vm-disk001"
  type       = "network-hdd"
  zone       = var.default_zone
  size       = 20
  block_size = 4096
  image_id   = "fd87h6ku2vhc7tmlekq4"
}

resource "alicloud_vswitch" "vswitch" {
  count        = length(data.alicloud_zones.available.zones)
  vpc_id       = alicloud_vpc.main_vpc.id
  cidr_block   = "10.1.${count.index}.0/24"
  zone_id      = data.alicloud_zones.available.zones[count.index].id
  vswitch_name = "vswitch-${data.alicloud_zones.available.zones[count.index].id}"
}
